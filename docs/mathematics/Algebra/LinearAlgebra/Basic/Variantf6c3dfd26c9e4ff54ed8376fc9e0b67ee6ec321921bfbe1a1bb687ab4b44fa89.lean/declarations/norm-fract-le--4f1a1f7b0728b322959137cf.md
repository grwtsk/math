# norm_fract_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82bbd783-5898-9bee-3c72-e45ab257d164",
  "kind": "theorem",
  "lexical_name": "norm_fract_le",
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
  "slug": "norm-fract-le--4f1a1f7b0728b322959137cf",
  "source": {
    "blob": "f474d705b90b30a0aaea43c0b49d82585a4cea9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f1a1f7b0728b322959137cf24a934b23c8f2208794f3c9101bddd9fbdaa57b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82bbd783-5898-9bee-3c72-e45ab257d164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_fract_le [HasSolidNorm K] (m : E) : ‖fract b m‖ ≤ ∑ i, ‖b i‖ := by
  calc
    ‖fract b m‖ = ‖∑ i, b.repr (fract b m) i • b i‖ := by rw [b.sum_repr]
    _ = ‖∑ i, Int.fract (b.repr m i) • b i‖ := by simp_rw [repr_fract_apply]
    _ ≤ ∑ i, ‖Int.fract (b.repr m i) • b i‖ := norm_sum_le _ _
    _ = ∑ i, ‖Int.fract (b.repr m i)‖ * ‖b i‖ := by simp_rw [norm_smul]
    _ ≤ ∑ i, ‖b i‖ := Finset.sum_le_sum fun i _ => ?_
  suffices ‖Int.fract ((b.repr m) i)‖ ≤ 1 by
    convert! mul_le_mul_of_nonneg_right this (norm_nonneg _ : 0 ≤ ‖b i‖)
    exact (one_mul _).symm
  rw [(norm_one.symm : 1 = ‖(1 : K)‖)]
  apply norm_le_norm_of_abs_le_abs
  rw [abs_one, Int.abs_fract]
  exact le_of_lt (Int.fract_lt_one _)

section Unique

variable [Unique ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf6c3dfd26c9e4ff54ed8376fc9e0b67ee6ec321921bfbe1a1bb687ab4b44fa89.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f474d705b90b30a0aaea43c0b49d82585a4cea9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
