# externalRigidifier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e652be4805bf6aaa39fe4e931792c105b662fe63cd1cf5fabf8350c90e66ed03",
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
  "slug": "externalrigidifier--c6217c8de0299c2dd6b20295",
  "source": {
    "blob": "ff1e316820e69886ae6bc05f8bdd881463558644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variant3e24798fba61c3ec1f8d3c56d8fca82e9978ae918c348354a1c888efeb1999a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6217c8de0299c2dd6b20295ee6899453a4517f5edd08333651ad8c51fb35a23",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variant3e24798fba61c3ec1f8d3c56d8fca82e9978ae918c348354a1c888efeb1999a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e652be4805bf6aaa39fe4e931792c105b662fe63cd1cf5fabf8350c90e66ed03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–213.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variant3e24798fba61c3ec1f8d3c56d8fca82e9978ae918c348354a1c888efeb1999a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RigidifierRouter/Variant3e24798fba61c3ec1f8d3c56d8fca82e9978ae918c348354a1c888efeb1999a3.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff1e316820e69886ae6bc05f8bdd881463558644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
