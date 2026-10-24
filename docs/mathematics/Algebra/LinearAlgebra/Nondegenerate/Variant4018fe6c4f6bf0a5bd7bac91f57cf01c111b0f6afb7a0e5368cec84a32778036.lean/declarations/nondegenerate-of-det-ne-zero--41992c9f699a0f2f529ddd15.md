# nondegenerate_of_det_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef4e7da6-2625-e9f4-a685-8b8917179df1",
  "kind": "theorem",
  "lexical_name": "nondegenerate_of_det_ne_zero",
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
  "slug": "nondegenerate-of-det-ne-zero--41992c9f699a0f2f529ddd15",
  "source": {
    "blob": "eeee281477147cb52ecc2b1433abb0e9c1f337b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41992c9f699a0f2f529ddd15620165a8ea37e6df4a5f6a4ef566bb0ad24911af",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef4e7da6-2625-e9f4-a685-8b8917179df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nondegenerate_of_det_ne_zero [DecidableEq m] {M : Matrix m m A} (hM : M.det ≠ 0) :
    Nondegenerate M := by
  refine nondegenerate_def.mpr fun v hv ↦ ?_
  ext i
  specialize hv (M.cramer (Pi.single i 1))
  refine (mul_eq_zero.mp ?_).resolve_right hM
  convert hv
  simp only [mulVec_cramer M (Pi.single i 1), dotProduct, Pi.smul_apply, smul_eq_mul]
  rw [Finset.sum_eq_single i, Pi.single_eq_same, mul_one]
  · intro j _ hj
    simp [hj]
  · intros
    have := Finset.mem_univ i
    contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant4018fe6c4f6bf0a5bd7bac91f57cf01c111b0f6afb7a0e5368cec84a32778036.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeee281477147cb52ecc2b1433abb0e9c1f337b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
