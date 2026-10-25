# runMetaMCapturingInfoTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a9b82cd50313779a299b261dee38fcac69673ac411199e52547237a6b1cee2c",
  "kind": "def",
  "lexical_name": "runMetaMCapturingInfoTree",
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
  "slug": "runmetamcapturinginfotree--6f7c5224bd7b3f15181cb5d6",
  "source": {
    "blob": "d448e126d5eb94d4df621a9f484662eceec30a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f7c5224bd7b3f15181cb5d650b709fe603cbad0a20c61a74516cac562e00a8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a9b82cd50313779a299b261dee38fcac69673ac411199e52547237a6b1cee2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runMetaMCapturingInfoTree (info : ContextInfo) (lctx : LocalContext) (x : MetaM α) :
    CommandElabM (α × PersistentArray InfoTree) := do
  let (result, trees) ← info.runCoreMCapturingInfoTree (Lean.Meta.MetaM.run
      (ctx := { lctx := lctx }) (s := { mctx := info.mctx }) <|
    Meta.withLocalInstances (lctx.decls.toList.filterMap id) <| x)
  return (result.1, trees)

/-- Run a tactic computation in the context of an infotree node, capturing InfoTrees produced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d448e126d5eb94d4df621a9f484662eceec30a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
