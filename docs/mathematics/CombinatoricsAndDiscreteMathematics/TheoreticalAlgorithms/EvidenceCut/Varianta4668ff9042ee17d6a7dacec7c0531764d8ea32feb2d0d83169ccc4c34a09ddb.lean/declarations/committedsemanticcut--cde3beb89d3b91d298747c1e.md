# CommittedSemanticCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a02667ed15e0ed52cd3456784cd649738d097c6400a54e54c2eefb8605cfcbf5",
  "kind": "structure",
  "lexical_name": "CommittedSemanticCut",
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
  "slug": "committedsemanticcut--cde3beb89d3b91d298747c1e",
  "source": {
    "blob": "317f4e564bdbe671f0f60a3c64462bffd84f70e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cde3beb89d3b91d298747c1ea6c5aedee5542b7a4a112898046e829e651c8615",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a02667ed15e0ed52cd3456784cd649738d097c6400a54e54c2eefb8605cfcbf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommittedSemanticCut where
  cutDigest : Digest
  cut_digest_valid : cutDigest.Valid
  raw : RawTextCarrier
  text : TextCarrier
  frame : SemanticCutFrame text
  validation : CutValidation
  liveReadsAllowed : Bool
  structural : Option (StructuralCertificate raw text)
  semanticCompletion :
    Option (SemanticCompletionCertificate frame)
  partialSemantic :
    Option (PartialSemanticCertificate text)
  boundaryFalsification :
    Option (BoundaryFalsificationWitness text)
  relationFalsification :
    Option (RelationFalsificationWitness text)
  frontier : List StableId

end Mathematics.SemanticTokenization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317f4e564bdbe671f0f60a3c64462bffd84f70e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
