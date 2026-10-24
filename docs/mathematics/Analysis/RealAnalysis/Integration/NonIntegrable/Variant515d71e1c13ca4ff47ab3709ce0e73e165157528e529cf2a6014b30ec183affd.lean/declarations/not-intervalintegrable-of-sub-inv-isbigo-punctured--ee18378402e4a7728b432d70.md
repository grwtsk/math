# not_intervalIntegrable_of_sub_inv_isBigO_punctured

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
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0d11bd0-2089-2970-fc7e-8164608e4ce3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e5f8913-569a-6799-c9e5-975248f6a6e3",
  "kind": "theorem",
  "lexical_name": "not_intervalIntegrable_of_sub_inv_isBigO_punctured",
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
  "slug": "not-intervalintegrable-of-sub-inv-isbigo-punctured--ee18378402e4a7728b432d70",
  "source": {
    "blob": "4b27625c17376b5dafbccc3339bbdb5d5288acc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee18378402e4a7728b432d70d6c4299990ba73a25c2a514a49e871fb3346113e",
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

Occurrence: `result:6e5f8913-569a-6799-c9e5-975248f6a6e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_intervalIntegrable_of_sub_inv_isBigO_punctured {f : ℝ → F} {a b c : ℝ}
    (hf : (fun x => (x - c)⁻¹) =O[𝓝[≠] c] f) (hne : a ≠ b) (hc : c ∈ [[a, b]]) :
    ¬IntervalIntegrable f volume a b := by
  have A : ∀ᶠ x in 𝓝[≠] c, HasDerivAt (fun x => Real.log (x - c)) (x - c)⁻¹ x := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    simpa using ((hasDerivAt_id x).sub_const c).log (sub_ne_zero.2 hx)
  have B : Tendsto (fun x => ‖Real.log (x - c)‖) (𝓝[≠] c) atTop := by
    refine tendsto_abs_atBot_atTop.comp (Real.tendsto_log_nhdsNE_zero.comp ?_)
    rw [← sub_self c]
    exact ((hasDerivAt_id c).sub_const c).tendsto_nhdsNE one_ne_zero
  exact not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_punctured
    (A.mono fun x hx => hx.differentiableAt) B
    (hf.congr' (A.mono fun x hx => hx.deriv.symm) EventuallyEq.rfl) hne hc

/-- The function `fun x => (x - c)⁻¹` is integrable on `a..b` if and only if
`a = b` or `c ∉ [a, b]`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant515d71e1c13ca4ff47ab3709ce0e73e165157528e529cf2a6014b30ec183affd.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b27625c17376b5dafbccc3339bbdb5d5288acc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
