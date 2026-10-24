# convolution_assoc'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1019,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00696f15-d9ec-21b3-6cec-02cbf25b235a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef14c512-bed8-e306-463f-69a5efe4dca7",
  "kind": "theorem",
  "lexical_name": "convolution_assoc'",
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
  "slug": "convolution-assoc--4978b426fce9209fc9c955bd",
  "source": {
    "blob": "1ee6b93fa3151fc64ec813bc11d12698d80eac3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1045,
    "line": 1019,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4978b426fce9209fc9c955bdee2cb83d61bf203116f7fc1e3aafa5acb47bb2dd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef14c512-bed8-e306-463f-69a5efe4dca7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1019–1045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_assoc' (hL : ∀ (x : E) (y : E') (z : E''), L₂ (L x y) z = L₃ x (L₄ y z))
    {x₀ : G} (hfg : ∀ᵐ y ∂μ, ConvolutionExistsAt f g y L ν)
    (hgk : ∀ᵐ x ∂ν, ConvolutionExistsAt g k x L₄ μ)
    (hi : Integrable (uncurry fun x y => (L₃ (f y)) ((L₄ (g (x - y))) (k (x₀ - x)))) (μ.prod ν)) :
    ((f ⋆[L, ν] g) ⋆[L₂, μ] k) x₀ = (f ⋆[L₃, ν] g ⋆[L₄, μ] k) x₀ :=
  calc
    ((f ⋆[L, ν] g) ⋆[L₂, μ] k) x₀ = ∫ t, L₂ (∫ s, L (f s) (g (t - s)) ∂ν) (k (x₀ - t)) ∂μ := rfl
    _ = ∫ t, ∫ s, L₂ (L (f s) (g (t - s))) (k (x₀ - t)) ∂ν ∂μ :=
      (integral_congr_ae (hfg.mono fun t ht => ((L₂.flip (k (x₀ - t))).integral_comp_comm ht).symm))
    _ = ∫ t, ∫ s, L₃ (f s) (L₄ (g (t - s)) (k (x₀ - t))) ∂ν ∂μ := by simp_rw [hL]
    _ = ∫ s, ∫ t, L₃ (f s) (L₄ (g (t - s)) (k (x₀ - t))) ∂μ ∂ν := by rw [integral_integral_swap hi]
    _ = ∫ s, ∫ u, L₃ (f s) (L₄ (g u) (k (x₀ - s - u))) ∂μ ∂ν := by
      congr; ext t
      rw [eq_comm, ← integral_sub_right_eq_self _ t]
      simp_rw [sub_sub_sub_cancel_right]
    _ = ∫ s, L₃ (f s) (∫ u, L₄ (g u) (k (x₀ - s - u)) ∂μ) ∂ν := by
      refine' integral_congr_ae _
      refine' ((quasiMeasurePreserving_sub_left_of_right_invariant ν x₀).ae hgk).mono fun t ht => _
      exact (L₃ (f t)).integral_comp_comm ht
    _ = (f ⋆[L₃, ν] g ⋆[L₄, μ] k) x₀ := rfl
#align convolution_assoc' convolution_assoc'

/-- Convolution is associative. This requires that
* all maps are a.e. strongly measurable w.r.t one of the measures
* `f ⋆[L, ν] g` exists almost everywhere
* `‖g‖ ⋆[μ] ‖k‖` exists almost everywhere
* `‖f‖ ⋆[ν] (‖g‖ ⋆[μ] ‖k‖)` exists at `x₀` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variant3e7a61ec35f82621f79d3f41d46641806716e74bfec50033d676c184c0939b08.lean#L1019).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee6b93fa3151fc64ec813bc11d12698d80eac3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
