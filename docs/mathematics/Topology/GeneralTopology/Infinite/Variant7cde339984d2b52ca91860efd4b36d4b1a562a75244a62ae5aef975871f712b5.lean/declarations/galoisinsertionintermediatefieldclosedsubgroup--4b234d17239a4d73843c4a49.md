# GaloisInsertionIntermediateFieldClosedSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dc5e02984e275d5d929e95e3784c93f9be65165648834dfbf9dad3a633c16d0",
  "kind": "def",
  "lexical_name": "GaloisInsertionIntermediateFieldClosedSubgroup",
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
  "slug": "galoisinsertionintermediatefieldclosedsubgroup--4b234d17239a4d73843c4a49",
  "source": {
    "blob": "10ac1c1922a71abb9f8aeedb987a39431ec4c5cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b234d17239a4d73843c4a490bd5e85463a6d90e49216f710bd2d4d025df3293",
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

Occurrence: `declaration:7dc5e02984e275d5d929e95e3784c93f9be65165648834dfbf9dad3a633c16d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GaloisInsertionIntermediateFieldClosedSubgroup [IsGalois k K] :
    GaloisInsertion (OrderDual.toDual ∘ fun (E : IntermediateField k K) ↦
      (⟨E.fixingSubgroup, fixingSubgroup_isClosed E⟩ : ClosedSubgroup Gal(K/k)))
      ((fun (H : ClosedSubgroup Gal(K/k)) ↦ IntermediateField.fixedField H) ∘
        OrderDual.toDual) :=
  OrderIso.toGaloisInsertion IntermediateFieldEquivClosedSubgroup

/-- The Galois correspondence as a `GaloisCoinsertion` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Infinite/Variant7cde339984d2b52ca91860efd4b36d4b1a562a75244a62ae5aef975871f712b5.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ac1c1922a71abb9f8aeedb987a39431ec4c5cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
