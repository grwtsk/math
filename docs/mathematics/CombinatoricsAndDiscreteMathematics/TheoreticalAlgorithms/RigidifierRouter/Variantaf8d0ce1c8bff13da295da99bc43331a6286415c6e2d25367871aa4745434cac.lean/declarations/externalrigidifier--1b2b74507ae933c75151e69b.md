# externalRigidifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab1610130a7d83d3c52339092d7b47d734eaa5191aee097a08422ef6bdea4666",
  "kind": "def",
  "lexical_name": "externalRigidifier",
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
  "slug": "externalrigidifier--1b2b74507ae933c75151e69b",
  "source": {
    "blob": "f15463c951b594bc03ea7ab2fc39086e4105f908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 183,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b2b74507ae933c75151e69b677875fe76513d3fc9cfad1d5e174bd83575cb90",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab1610130a7d83d3c52339092d7b47d734eaa5191aee097a08422ef6bdea4666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def externalRigidifier
    (router : SourceRouter sortCount neighborhoodCount objectCount) :
    ExternalRigidifierCert router.hierarchy where
  Label := Fin objectCount
  labelFintype := inferInstance
  labelDecidableEq := inferInstance
  labelLinearOrder := inferInstance
  predicate := fun label element ↦ label = element
  predicateDecidable := fun _ _ ↦ inferInstance
  declaredSort := fun label ↦
    (router.objectAt label).claim.declaredSort
  projectionRelevant := fun _ ↦ True
  uniqueElement := by
    intro label
    exact ⟨label, rfl, fun element equality ↦ equality.symm⟩
  uniqueLabel := by
    intro element
    exact ⟨element, rfl, fun label equality ↦ equality⟩
  sortCorrect := by
    intro label element equality
    subst element
    rfl
  projectionCoverage := by
    intro element _
    exact ⟨element, rfl⟩
  provenancePredicate := fun _ element ↦
    (router.objectAt element).claim.HasProvenance
  provenanceProof := by
    intro label element equality
    subst label
    exact (router.objectAt element).provenance
  semanticPredicate := fun _ element ↦
    (router.objectAt element).claim.Denotes
  semanticProof := by
    intro label element equality
    subst label
    exact (router.objectAt element).denotation

/-- Exact key lookup; failure means the key is not active in this epoch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variantaf8d0ce1c8bff13da295da99bc43331a6286415c6e2d25367871aa4745434cac.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f15463c951b594bc03ea7ab2fc39086e4105f908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
