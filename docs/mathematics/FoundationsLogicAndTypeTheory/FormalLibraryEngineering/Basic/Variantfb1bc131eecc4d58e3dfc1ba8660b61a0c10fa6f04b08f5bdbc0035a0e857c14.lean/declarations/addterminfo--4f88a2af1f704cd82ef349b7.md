# addTermInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95a20b38e3ad3422fec559b94e30b74f639c811db1b1440be6d3bdb3c6aa70ba",
  "kind": "def",
  "lexical_name": "addTermInfo",
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
  "slug": "addterminfo--4f88a2af1f704cd82ef349b7",
  "source": {
    "blob": "283cf16e25e162ee5e354b95853b4d79f7b7835d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f88a2af1f704cd82ef349b74d4d83717edaf612ed61b9b931a39ff21da2cbf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95a20b38e3ad3422fec559b94e30b74f639c811db1b1440be6d3bdb3c6aa70ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addTermInfo (pos : Pos) (stx : Syntax) (e : Expr) (isBinder : Bool := false) : DelabM Unit := do
  let info := Info.ofTermInfo <| ← mkTermInfo stx e isBinder
  modify fun s => { s with infos := s.infos.insert pos info }
where
  mkTermInfo stx e isBinder := return {
    elaborator := `Delab,
    stx := stx,
    lctx := (← getLCtx),
    expectedType? := none,
    expr := e,
    isBinder := isBinder
 }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfb1bc131eecc4d58e3dfc1ba8660b61a0c10fa6f04b08f5bdbc0035a0e857c14.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283cf16e25e162ee5e354b95853b4d79f7b7835d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
