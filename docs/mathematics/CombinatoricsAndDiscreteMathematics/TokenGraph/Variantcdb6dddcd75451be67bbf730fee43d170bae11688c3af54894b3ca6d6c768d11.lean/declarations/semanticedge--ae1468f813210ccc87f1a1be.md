# SemanticEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44549d6323fbc9308065aa7878348689d8d353035f327392bd543598f26a778d",
  "kind": "structure",
  "lexical_name": "SemanticEdge",
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
  "slug": "semanticedge--ae1468f813210ccc87f1a1be",
  "source": {
    "blob": "e70eab2b1e5f69188da23b18a2b0f77077f0c9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae1468f813210ccc87f1a1bef3df8f5e055289e2922e6c44b8a41fc9f77c14bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44549d6323fbc9308065aa7878348689d8d353035f327392bd543598f26a778d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SemanticEdge
    (cut : EvidenceCut)
    (Node : Type*) where
  id : RelationId
  relation : SemanticRelationType
  source : Node
  target : Node
  context : ContextId
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  snapshot : SnapshotId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TokenGraph/Variantcdb6dddcd75451be67bbf730fee43d170bae11688c3af54894b3ca6d6c768d11.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e70eab2b1e5f69188da23b18a2b0f77077f0c9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
