# norm_eq_iInf_iff_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51812c32-acb9-474a-4189-a6f0f411628e",
  "kind": "theorem",
  "lexical_name": "norm_eq_iInf_iff_inner_eq_zero",
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
  "slug": "norm-eq-iinf-iff-inner-eq-zero--290c73b9856df88dcaf8a2cd",
  "source": {
    "blob": "d26dfd7da00bf3f6f0cc3256bccf3676daea1856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 337,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290c73b9856df88dcaf8a2cd0da917576f4cf1e7a1d18d415fc65ff10fef19e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51812c32-acb9-474a-4189-a6f0f411628e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_iInf_iff_inner_eq_zero {u : E} {v : E} (hv : v ∈ K) :
    (‖u - v‖ = ⨅ w : K, ‖u - w‖) ↔ ∀ w ∈ K, ⟪u - v, w⟫ = 0 := by
  letI : InnerProductSpace ℝ E := InnerProductSpace.rclikeToReal 𝕜 E
  letI : Module ℝ E := RestrictScalars.module ℝ 𝕜 E
  let K' : Submodule ℝ E := K.restrictScalars ℝ
  constructor
  · intro H
    have A : ∀ w ∈ K, re ⟪u - v, w⟫ = 0 := (K'.norm_eq_iInf_iff_real_inner_eq_zero hv).1 H
    intro w hw
    apply RCLike.ext
    · simp [A w hw]
    · symm
      calc
        im (0 : 𝕜) = 0 := im.map_zero
        _ = re ⟪u - v, (-I : 𝕜) • w⟫ := (A _ (K.smul_mem (-I) hw)).symm
        _ = re (-I * ⟪u - v, w⟫) := by rw [inner_smul_right]
        _ = im ⟪u - v, w⟫ := by simp
  · intro H
    have : ∀ w ∈ K', ⟪u - v, w⟫_ℝ = 0 := by
      intro w hw
      rw [real_inner_eq_re_inner, H w hw]
      exact zero_re'
    exact (K'.norm_eq_iInf_iff_real_inner_eq_zero hv).2 this

/-- A subspace `K : Submodule 𝕜 E` has an orthogonal projection if every vector `v : E` admits an
orthogonal projection to `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantbfae44632f790418c8c66f66f37c70fb4f29e9093925824fa9017f0700abcddc.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d26dfd7da00bf3f6f0cc3256bccf3676daea1856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
