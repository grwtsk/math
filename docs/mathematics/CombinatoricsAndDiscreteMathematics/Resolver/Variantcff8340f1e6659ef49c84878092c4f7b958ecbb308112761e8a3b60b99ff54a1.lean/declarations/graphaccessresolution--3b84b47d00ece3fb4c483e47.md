# GraphAccessResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:665b0bd6a7b655609fcd2329c4d9e5775a5137340bda8e597509d82d56394472",
  "kind": "inductive",
  "lexical_name": "GraphAccessResolution",
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
  "slug": "graphaccessresolution--3b84b47d00ece3fb4c483e47",
  "source": {
    "blob": "424a764f375a996334bebee0282189ce2dd59d52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantcff8340f1e6659ef49c84878092c4f7b958ecbb308112761e8a3b60b99ff54a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b84b47d00ece3fb4c483e47df3aa3556f7caf777ce7694a86332524d7e5437f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variantcff8340f1e6659ef49c84878092c4f7b958ecbb308112761e8a3b60b99ff54a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:665b0bd6a7b655609fcd2329c4d9e5775a5137340bda8e597509d82d56394472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive GraphAccessResolution
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | completed
      (request : AdmittedAccessRequest G profiles)
      (resultType : ModeOutputFamily G request)
      (machine :
        AccessMachine G request resultType)
      (result : MachineResolution machine)
  | unknown
      (requestId : RequestId)
      (frontier : Option ByteArray)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (reason : RequestAdmissionFailure)
  | operationalFailure
      (requestId : RequestId)
      (failure : OperationalFailure)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variantcff8340f1e6659ef49c84878092c4f7b958ecbb308112761e8a3b60b99ff54a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantcff8340f1e6659ef49c84878092c4f7b958ecbb308112761e8a3b60b99ff54a1.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424a764f375a996334bebee0282189ce2dd59d52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
