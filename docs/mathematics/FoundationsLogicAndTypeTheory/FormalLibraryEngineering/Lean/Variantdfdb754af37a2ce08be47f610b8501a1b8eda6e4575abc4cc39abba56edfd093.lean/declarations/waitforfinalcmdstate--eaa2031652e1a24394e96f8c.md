# waitForFinalCmdState?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:926945430e69953a9a902927d9e00cfbd466db833dbafdb81669f6683c0c2ee9",
  "kind": "def",
  "lexical_name": "waitForFinalCmdState?",
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
  "slug": "waitforfinalcmdstate--eaa2031652e1a24394e96f8c",
  "source": {
    "blob": "c5acf0b35b3e0d7add7d10fab9f81f78151290e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 825,
    "line": 812,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaa2031652e1a24394e96f8c9ac137dcca930d9d1848030d2d79ef43c1716b6c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:926945430e69953a9a902927d9e00cfbd466db833dbafdb81669f6683c0c2ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 812–825.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def waitForFinalCmdState? (snap : InitialSnapshot) : Option Command.State := do
  let snap ← snap.result?
  let snap ← snap.processedSnap.get.result?
  goCmd snap.firstCmdSnap.get
where goCmd snap :=
  if let some next := snap.nextCmdSnap? then
    goCmd next.get
  else
    snap.elabSnap.resultSnap.get.cmdState

/--
Returns `snap` with all elaborated command data discarded, retaining only the imported
environment from the header.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lean/Variantdfdb754af37a2ce08be47f610b8501a1b8eda6e4575abc4cc39abba56edfd093.lean#L812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5acf0b35b3e0d7add7d10fab9f81f78151290e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
