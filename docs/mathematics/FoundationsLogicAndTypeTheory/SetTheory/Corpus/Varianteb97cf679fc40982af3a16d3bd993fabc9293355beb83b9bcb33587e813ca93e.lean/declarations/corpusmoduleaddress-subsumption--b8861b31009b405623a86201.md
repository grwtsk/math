# CorpusModuleAddress.subsumption

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:565a468ed71c94ff46b90f9e285e5d9109c3cbb8436775565459abda4f1e34ba",
  "kind": "def",
  "lexical_name": "CorpusModuleAddress.subsumption",
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
  "slug": "corpusmoduleaddress-subsumption--b8861b31009b405623a86201",
  "source": {
    "blob": "1960ffd0658fc0f70aa50344a43ff0a33477b159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8861b31009b405623a86201cfc358a475273973465628e43cf9ef5682fe788b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:565a468ed71c94ff46b90f9e285e5d9109c3cbb8436775565459abda4f1e34ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CorpusModuleAddress.subsumption
    (module : CorpusModuleAddress)
    (linkId : StableId)
    (linkId_valid : linkId.Valid)
    (declarationOrdinal : Nat)
    (declarationName : String)
    (declarationName_nonempty : declarationName ≠ "")
    (declarationKind : CorpusDeclarationKind)
    (declarationDigest : Digest)
    (declarationDigest_valid : declarationDigest.Valid)
    (targetDeclaration : String)
    (targetDeclaration_nonempty : targetDeclaration ≠ "")
    (relation : CorpusSubsumptionRelation)
    (rationale : String) :
    CorpusSubsumptionLink where
  linkId := linkId
  linkId_valid := linkId_valid
  source := module.declaration
    declarationOrdinal
    declarationName
    declarationName_nonempty
    declarationKind
    declarationDigest
    declarationDigest_valid
  targetDeclaration := targetDeclaration
  targetDeclaration_nonempty := targetDeclaration_nonempty
  relation := relation
  rationale := rationale

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Varianteb97cf679fc40982af3a16d3bd993fabc9293355beb83b9bcb33587e813ca93e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1960ffd0658fc0f70aa50344a43ff0a33477b159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
