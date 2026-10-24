# SemanticTokenResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e778187868a67bebf47c59962f58ceb7a97c191670279a9f475d7c91b583c6f",
  "kind": "inductive",
  "lexical_name": "SemanticTokenResolution",
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
  "slug": "semantictokenresolution--49dc26f13968847ed75daf05",
  "source": {
    "blob": "b06e678cf1ae4eb8a428679a498d7c75bd06a6e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49dc26f13968847ed75daf058e7663370b4a47ffc12c7cc0104fcdd28ccac794",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e778187868a67bebf47c59962f58ceb7a97c191670279a9f475d7c91b583c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive SemanticTokenResolution
    (cut : CommittedSemanticCut)
  | solved
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semantic :
        SemanticCompletionCertificate cut.frame)
  | structurallySolved
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semanticUnknowns : List SemanticTokenUnknownKind)
      (unknowns_nonempty : semanticUnknowns ≠ [])
  | partiallySolved
      (structural :
        StructuralCertificate cut.raw cut.text)
      (semantic : PartialSemanticCertificate cut.text)
  | falsifiedBoundary
      (witness : BoundaryFalsificationWitness cut.text)
  | falsifiedRelation
      (witness : RelationFalsificationWitness cut.text)
  | unknown
      (kind : SemanticTokenUnknownKind)
      (frontier : List StableId)
  | rejected
      (reason : CutRejectionReason)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variante4f2500c13b9dc8c629e4b3a6ee771603096ab912f7c51efe8d9b131e0b9a28c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b06e678cf1ae4eb8a428679a498d7c75bd06a6e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
