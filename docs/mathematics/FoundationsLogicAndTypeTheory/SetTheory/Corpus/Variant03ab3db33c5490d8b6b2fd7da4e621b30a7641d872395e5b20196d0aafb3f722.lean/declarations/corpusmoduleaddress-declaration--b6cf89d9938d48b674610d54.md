# CorpusModuleAddress.declaration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd22beea7e157748f1248a86ab4136fac5a9c2a015c4eb24bdeddadd871149c4",
  "kind": "def",
  "lexical_name": "CorpusModuleAddress.declaration",
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
  "slug": "corpusmoduleaddress-declaration--b6cf89d9938d48b674610d54",
  "source": {
    "blob": "04c9cceb75d26a4413b0738ae32dd8bfc8ffe254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6cf89d9938d48b674610d54ef43279ac07d1e8e699e4d99838afd55e8d59538",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd22beea7e157748f1248a86ab4136fac5a9c2a015c4eb24bdeddadd871149c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CorpusModuleAddress.declaration
    (module : CorpusModuleAddress)
    (declarationOrdinal : Nat)
    (declarationName : String)
    (declarationName_nonempty : declarationName ≠ "")
    (declarationKind : CorpusDeclarationKind)
    (declarationDigest : Digest)
    (declarationDigest_valid : declarationDigest.Valid) :
    CorpusDeclarationAddress where
  corpus := module.corpus
  moduleOrdinal := module.moduleOrdinal
  modulePath := module.modulePath
  modulePath_nonempty := module.modulePath_nonempty
  moduleDigest := module.moduleDigest
  moduleDigest_valid := module.moduleDigest_valid
  declarationOrdinal := declarationOrdinal
  declarationName := declarationName
  declarationName_nonempty := declarationName_nonempty
  declarationKind := declarationKind
  declarationDigest := declarationDigest
  declarationDigest_valid := declarationDigest_valid

/-- What kind of reconstruction is proposed for one observed declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Corpus/Variant03ab3db33c5490d8b6b2fd7da4e621b30a7641d872395e5b20196d0aafb3f722.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04c9cceb75d26a4413b0738ae32dd8bfc8ffe254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
