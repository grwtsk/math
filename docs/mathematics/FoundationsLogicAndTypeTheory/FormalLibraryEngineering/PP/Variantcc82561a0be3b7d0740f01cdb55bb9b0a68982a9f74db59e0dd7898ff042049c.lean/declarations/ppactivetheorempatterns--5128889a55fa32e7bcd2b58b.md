# ppActiveTheoremPatterns

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2e362530d8a6efce38ea9c1c9f673c2591679e4e409257504592c99e1c8966e",
  "kind": "def",
  "lexical_name": "ppActiveTheoremPatterns",
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
  "slug": "ppactivetheorempatterns--5128889a55fa32e7bcd2b58b",
  "source": {
    "blob": "74b39f5654eb482791f48bb75ffcd638214ef1b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5128889a55fa32e7bcd2b58b972551a41b9b0af3fb97008476d24497f85664b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2e362530d8a6efce38ea9c1c9f673c2591679e4e409257504592c99e1c8966e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ppActiveTheoremPatterns : M Unit := do
  let goal ← read
  let m ← goal.ematch.thms.toArray.mapM fun thm => ppEMatchTheorem thm
  let m := m ++ (← goal.ematch.newThms.toArray.mapM fun thm => ppEMatchTheorem thm)
  unless m.isEmpty do
    pushMsg <| .trace { cls := `ematch } "E-matching patterns" m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variantcc82561a0be3b7d0740f01cdb55bb9b0a68982a9f74db59e0dd7898ff042049c.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b39f5654eb482791f48bb75ffcd638214ef1b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
