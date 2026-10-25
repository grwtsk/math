# ExternalRigidifierCert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96efebd0163a799dea1602e11ad6b792c073253001dc6ea030f9b73655fdb888",
  "kind": "structure",
  "lexical_name": "ExternalRigidifierCert",
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
  "slug": "externalrigidifiercert--e070a176fcc2e65fbdf3ecc6",
  "source": {
    "blob": "f72435315c6a914ca5b0274b5fbb066deff6bf13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e070a176fcc2e65fbdf3ecc615c8e788879cc5010731dd7d793b29e6eff96eb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96efebd0163a799dea1602e11ad6b792c073253001dc6ea030f9b73655fdb888`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExternalRigidifierCert
    (hierarchy : PolyHierarchy signature) where
  Label : Type w
  labelFintype : Fintype Label
  labelDecidableEq : DecidableEq Label
  labelLinearOrder : LinearOrder Label
  predicate : Label → hierarchy.Element → Prop
  predicateDecidable : ∀ label element, Decidable (predicate label element)
  declaredSort : Label → signature.SortType
  projectionRelevant : hierarchy.Element → Prop
  uniqueElement : ∀ label, ∃! element, predicate label element
  uniqueLabel : ∀ element, ∃! label, predicate label element
  sortCorrect :
    ∀ label element,
      predicate label element →
        hierarchy.elementSort element = declaredSort label
  projectionCoverage :
    ∀ element,
      projectionRelevant element →
        ∃ label, predicate label element
  provenancePredicate : Label → hierarchy.Element → Prop
  provenanceProof :
    ∀ label element,
      predicate label element →
        provenancePredicate label element
  semanticPredicate : Label → hierarchy.Element → Prop
  semanticProof :
    ∀ label element,
      predicate label element →
        semanticPredicate label element

attribute [instance] ExternalRigidifierCert.labelFintype
  ExternalRigidifierCert.labelDecidableEq
  ExternalRigidifierCert.labelLinearOrder
  ExternalRigidifierCert.predicateDecidable

namespace ExternalRigidifierCert

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f72435315c6a914ca5b0274b5fbb066deff6bf13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
