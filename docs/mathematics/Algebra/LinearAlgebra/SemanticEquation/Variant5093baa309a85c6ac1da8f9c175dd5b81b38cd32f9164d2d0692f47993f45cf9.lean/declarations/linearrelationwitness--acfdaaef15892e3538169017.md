# LinearRelationWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80bf2523c76311e1398c790131ab242499fb843e3833b20f104a58a2a29fa077",
  "kind": "structure",
  "lexical_name": "LinearRelationWitness",
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
  "slug": "linearrelationwitness--acfdaaef15892e3538169017",
  "source": {
    "blob": "81271aebf06d175869409cdef69070de4a2e4963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/SemanticEquation/Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acfdaaef15892e3538169017d8fe0097446ef2a8bfc4da0f33f4ce8cf0e4b447",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SemanticEquation/Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80bf2523c76311e1398c790131ab242499fb843e3833b20f104a58a2a29fa077`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LinearRelationWitness
    (ledger : Ledger)
    (relationId : RelationId)
    (equation : SemanticCombination SemanticAtom)
    (admissibleKind : LinearizableRelationKind) where
  relation : RelationRecord
  relation_registered : relation ∈ ledger.relations
  relation_id : relation.id = relationId
  certificate : RelationCertificate relation
  sourceAtom : SemanticAtom
  targetAtom : SemanticAtom
  source_resolves : sourceAtom.Resolves ledger
  target_resolves : targetAtom.Resolves ledger
  source_bound : sourceAtom.concept = relation.source
  target_bound : targetAtom.concept = relation.target
  kind_admitted : admissibleKind.Admits relation.kind
  kernel_checked : relation.authority = .kernelChecked
  equation_exact :
    equation =
      Finsupp.single sourceAtom 1 -
        Finsupp.single targetAtom 1

/-- One exact, auditable generator of the semantic relation submodule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SemanticEquation/Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SemanticEquation/Variant5093baa309a85c6ac1da8f9c175dd5b81b38cd32f9164d2d0692f47993f45cf9.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81271aebf06d175869409cdef69070de4a2e4963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
