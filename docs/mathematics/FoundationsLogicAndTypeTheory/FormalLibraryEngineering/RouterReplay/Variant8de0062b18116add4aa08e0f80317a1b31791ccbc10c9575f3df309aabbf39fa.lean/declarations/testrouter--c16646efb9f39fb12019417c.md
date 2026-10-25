# testRouter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34de04c9bd58f60abbb047ffbbc20ea18cc84d212e5b3ef1777ca0844e0f30aa",
  "kind": "def",
  "lexical_name": "testRouter",
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
  "slug": "testrouter--c16646efb9f39fb12019417c",
  "source": {
    "blob": "faf96cd33c37e576ae9837ac7f0115244aed19b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c16646efb9f39fb12019417c49eca0a8eb9d333ca4e29e86d6540cd952356693",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34de04c9bd58f60abbb047ffbbc20ea18cc84d212e5b3ef1777ca0844e0f30aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testRouter : IO Unit := do
  IO.println "▶ Verifying route from n1 to n3..."
  let result := verifyRoute linearDag linearRoute

  if result.valid then
    IO.println s!"✅ Route valid. {result.hops} hops."
    match result.composed with
    | some pf => IO.println s!"Constructed proof term: {pf}"
    | none    => IO.println "⚠️ No composed proof returned."
  else
    IO.println s!"❌ Route invalid: {result.message.getD "unknown error"}"

#eval testRouter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RouterReplay/Variant8de0062b18116add4aa08e0f80317a1b31791ccbc10c9575f3df309aabbf39fa.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf96cd33c37e576ae9837ac7f0115244aed19b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
