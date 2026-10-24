# IntermediateFieldEquivClosedSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d37b2054f5b8401e77f21cfa1b6ff67204bd58ac0e677c5bcfc3e42d43990516",
  "kind": "def",
  "lexical_name": "IntermediateFieldEquivClosedSubgroup",
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
  "slug": "intermediatefieldequivclosedsubgroup--807f3ca7c56c487c88017b41",
  "source": {
    "blob": "10ac1c1922a71abb9f8aeedb987a39431ec4c5cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:807f3ca7c56c487c88017b414c299dc1a4d4f8b9fc89c41be1a8a2ed03f1272a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d37b2054f5b8401e77f21cfa1b6ff67204bd58ac0e677c5bcfc3e42d43990516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IntermediateFieldEquivClosedSubgroup [IsGalois k K] :
    IntermediateField k K ≃o (ClosedSubgroup Gal(K/k))ᵒᵈ where
  toFun L := ⟨L.fixingSubgroup, fixingSubgroup_isClosed L⟩
  invFun H := IntermediateField.fixedField H.1
  left_inv L := fixedField_fixingSubgroup L
  right_inv H := by
    simp_rw [fixingSubgroup_fixedField H]
    rfl
  map_rel_iff' {K L} := by
    rw [← fixedField_fixingSubgroup L, IntermediateField.le_iff_le, fixedField_fixingSubgroup L]
    rfl

/-- The Galois correspondence as a `GaloisInsertion` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ac1c1922a71abb9f8aeedb987a39431ec4c5cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
