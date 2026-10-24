# not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b27625c17376b5dafbccc3339bbdb5d5288acc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f9c95ee-9df4-fbb1-ff8c-952f4667a999",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b37af4a-0c8b-5eb2-33ca-2a79af9dd480",
  "kind": "theorem",
  "lexical_name": "not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter--ac97d3c6c572eb2e19f47797",
  "source": {
    "blob": "4b27625c17376b5dafbccc3339bbdb5d5288acc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac97d3c6c572eb2e19f47797d7402b4430c7b253e8b7fd36cb6acf8afb5f9f3b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b37af4a-0c8b-5eb2-33ca-2a79af9dd480`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter
    {f : ℝ → E} {g : ℝ → F}
    {k : Set ℝ} (l : Filter ℝ) [NeBot l] [TendstoIxxClass Icc l l]
    (hl : k ∈ l) (hd : ∀ᶠ x in l, DifferentiableAt ℝ f x) (hf : Tendsto (fun x => ‖f x‖) l atTop)
    (hfg : deriv f =O[l] g) : ¬IntegrableOn g k := by
  let a : E →ₗᵢ[ℝ] UniformSpace.Completion E := UniformSpace.Completion.toComplₗᵢ
  let f' := a ∘ f
  have h'd : ∀ᶠ x in l, DifferentiableAt ℝ f' x := by
    filter_upwards [hd] with x hx using a.toContinuousLinearMap.differentiableAt.comp x hx
  have h'f : Tendsto (fun x => ‖f' x‖) l atTop := hf.congr (fun x ↦ by simp [f'])
  have h'fg : deriv f' =O[l] g := by
    apply IsBigO.trans _ hfg
    rw [← isBigO_norm_norm]
    suffices (fun x ↦ ‖deriv f' x‖) =ᶠ[l] (fun x ↦ ‖deriv f x‖) by exact this.isBigO
    filter_upwards [hd] with x hx
    have : deriv f' x = a (deriv f x) := by
      rw [fderiv_comp_deriv x _ hx]
      · have : fderiv ℝ a (f x) = a.toContinuousLinearMap := a.toContinuousLinearMap.fderiv
        simp only [this]
        rfl
      · exact a.toContinuousLinearMap.differentiableAt
    simp only [this]
    simp
  exact not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux l hl h'd h'f h'fg

/-- If `f` is eventually differentiable along a nontrivial filter `l : Filter ℝ` that is generated
by convex sets, the norm of `f` tends to infinity along `l`, and `f' = O(g)` along `l`, where `f'`
is the derivative of `f`, then `g` is not integrable on any interval `a..b` such that
`[a, b] ∈ l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b27625c17376b5dafbccc3339bbdb5d5288acc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
