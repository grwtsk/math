# floor_le_floor_add_of_mem_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d19a855-1c4c-9b0c-0fd8-48d7601f1862",
  "kind": "theorem",
  "lexical_name": "floor_le_floor_add_of_mem_closure",
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
  "slug": "floor-le-floor-add-of-mem-closure--bee5bb91f6d3755609125e96",
  "source": {
    "blob": "e95208e3ec8ffcc28574b45cda7d44c2cc312c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 495,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bee5bb91f6d3755609125e963f42ff7ecec1476b3af6d1085a08c043ea6bd615",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d19a855-1c4c-9b0c-0fd8-48d7601f1862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem floor_le_floor_add_of_mem_closure {x y i} (hy : y ∈ closure hs.basisSet) :
    hs.floor x i ≤ hs.floor (x + y) i := by
  classical
  simp only [floor]
  apply Int.floor_le_floor
  simp_rw [map_add, add_sub_right_comm, map_add, Finsupp.add_apply, le_add_iff_nonneg_right]
  rw [mem_closure_iff_of_fintype] at hy
  rcases hy with ⟨f, rfl⟩
  simp_rw [map_sum, Finsupp.coe_finsetSum, Finset.sum_apply]
  apply Finset.sum_nonneg
  simp [-nsmul_eq_mul, ← hs.basis_apply, Finsupp.single_apply, ite_nonneg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95208e3ec8ffcc28574b45cda7d44c2cc312c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
