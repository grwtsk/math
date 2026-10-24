# toAddSubgroup_index_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f649515f-a97e-4df8-574a-9e6ffb49e8fa",
  "kind": "lemma",
  "lexical_name": "toAddSubgroup_index_eq_ite",
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
  "slug": "toaddsubgroup-index-eq-ite--92134428ea7a9d6ca047fb2b",
  "source": {
    "blob": "2734ba80c8963f87b5467742cf84f30daee9e906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92134428ea7a9d6ca047fb2bb8feba68cb307331881820e15ade66be4ad265e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f649515f-a97e-4df8-574a-9e6ffb49e8fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAddSubgroup_index_eq_ite [Infinite R] [Module R M] {N : Submodule R M}
    (snf : Basis.SmithNormalForm N ι n) : N.toAddSubgroup.index = (if n = Fintype.card ι then
      ∏ i : Fin n, (Ideal.span {snf.a i}).toAddSubgroup.index else 0) := by
  rw [snf.toAddSubgroup_index_eq_pow_mul_prod]
  split_ifs with h
  · simp [h]
  · have hlt : n < Fintype.card ι :=
      Ne.lt_of_le h (by simpa using Fintype.card_le_of_embedding snf.f)
    simp [hlt]

/-- Given a submodule `N` in Smith normal form of a free ℤ-module, it has finite index as an
additive subgroup (i.e., `N.toAddSubgroup.index ≠ 0`) if and only if the submodule basis has as
many vectors as the basis for the module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Int/Variant3d3f1c54ff7c2f1a9da1e041ea4913620301e5bc7a32555b5dc22da647c922c0.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2734ba80c8963f87b5467742cf84f30daee9e906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
