# _root_.Lean.MVarId.define

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aff673406ea02a8f5649329ffa2019653a2a9cb32ac90f2bdd6675fc05e999d",
  "kind": "def",
  "lexical_name": "_root_.Lean.MVarId.define",
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
  "slug": "root-lean-mvarid-define--9c7aef23da8055fe49a1b76d",
  "source": {
    "blob": "dd5671b88a38a563b76dcad8581e9ad264eb3df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c7aef23da8055fe49a1b76d10c91a601cab66bf720ce384b6366638e7d0f198",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aff673406ea02a8f5649329ffa2019653a2a9cb32ac90f2bdd6675fc05e999d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Lean.MVarId.define (mvarId : MVarId) (name : Name) (type : Expr) (val : Expr) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `define
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let newType := Lean.mkLet name type val target
    let newMVar ← mkFreshExprSyntheticOpaqueMVar newType tag
    mvarId.assign newMVar
    return newMVar.mvarId!

/--
  Convert the given goal `Ctx |- target` into `Ctx |- (hName : type) -> hName = val -> target`.
  It assumes `val` has type `type` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5671b88a38a563b76dcad8581e9ad264eb3df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
