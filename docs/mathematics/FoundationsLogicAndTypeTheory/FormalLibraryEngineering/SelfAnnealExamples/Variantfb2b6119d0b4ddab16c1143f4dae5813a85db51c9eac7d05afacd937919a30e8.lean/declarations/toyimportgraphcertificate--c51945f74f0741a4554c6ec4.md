# toyImportGraphCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46a01a2cb2aaa797c246b4b53892935f0cc55f4b22e528c6747ae4296687a731",
  "kind": "def",
  "lexical_name": "toyImportGraphCertificate",
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
  "slug": "toyimportgraphcertificate--c51945f74f0741a4554c6ec4",
  "source": {
    "blob": "152b7b7a01b5eb2aba5ee8ccdf853692ac63ad09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelfAnnealExamples/Variantfb2b6119d0b4ddab16c1143f4dae5813a85db51c9eac7d05afacd937919a30e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c51945f74f0741a4554c6ec47fb73319d8df8ae4b12f2fcb9f76fa5c72d40e47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelfAnnealExamples/Variantfb2b6119d0b4ddab16c1143f4dae5813a85db51c9eac7d05afacd937919a30e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46a01a2cb2aaa797c246b4b53892935f0cc55f4b22e528c6747ae4296687a731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyImportGraphCertificate : ImportGraphAnnealCertificate where
  beforeGraph := toyBeforeImportGraph
  afterGraph := toyAfterImportGraph
  declarationDependencyGraphHash := 602
  reducerTraceHash := toyTrace.traceHash
  allDependenciesReachable := True
  dependenciesProof := trivial
  noCycleIntroduced := True
  noCycleProof := trivial
  namespaceIdentityPreserved := True
  namespaceProof := trivial
  reducerTraceWitnessed := True
  traceProof := trivial
  sourceMutationDisabled := True
  sourceMutationProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelfAnnealExamples/Variantfb2b6119d0b4ddab16c1143f4dae5813a85db51c9eac7d05afacd937919a30e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SelfAnnealExamples/Variantfb2b6119d0b4ddab16c1143f4dae5813a85db51c9eac7d05afacd937919a30e8.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152b7b7a01b5eb2aba5ee8ccdf853692ac63ad09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
