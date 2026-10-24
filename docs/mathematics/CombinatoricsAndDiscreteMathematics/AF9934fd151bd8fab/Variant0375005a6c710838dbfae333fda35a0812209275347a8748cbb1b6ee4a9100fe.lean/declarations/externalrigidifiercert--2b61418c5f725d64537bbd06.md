# ExternalRigidifierCert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b4096c8bab77b80ab8054f47b50dc8c13a48ef8eef288297999b9bd9a2e378d",
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
  "slug": "externalrigidifiercert--2b61418c5f725d64537bbd06",
  "source": {
    "blob": "3e8ea1130e5328688aab731d0ddb573ab417c496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AF9934fd151bd8fab/Variant0375005a6c710838dbfae333fda35a0812209275347a8748cbb1b6ee4a9100fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b61418c5f725d64537bbd0663bb4a20cd654ee3add5d3cc6439061609e47ae9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AF9934fd151bd8fab/Variant0375005a6c710838dbfae333fda35a0812209275347a8748cbb1b6ee4a9100fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b4096c8bab77b80ab8054f47b50dc8c13a48ef8eef288297999b9bd9a2e378d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–63.

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

namespace ExternalRigidifierCert

end ExternalRigidifierCert

namespace RigidifiedAut

end RigidifiedAut

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AF9934fd151bd8fab/Variant0375005a6c710838dbfae333fda35a0812209275347a8748cbb1b6ee4a9100fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AF9934fd151bd8fab/Variant0375005a6c710838dbfae333fda35a0812209275347a8748cbb1b6ee4a9100fe.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e8ea1130e5328688aab731d0ddb573ab417c496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
