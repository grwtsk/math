# MVarId.congr?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f431c436839a014330956012e3d32c88c028526e46049f2922e0729288923fb8",
  "kind": "def",
  "lexical_name": "MVarId.congr?",
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
  "slug": "mvarid-congr--1c334c014ebe6905692578bd",
  "source": {
    "blob": "0932d71d799ec65e0ea87ef901485946505e0df0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c334c014ebe6905692578bdd9e836b75ba3f8df839c1ed4dc75978b7db9a364",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f431c436839a014330956012e3d32c88c028526e46049f2922e0729288923fb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVarId.congr? (mvarId : MVarId) : MetaM (Option (List MVarId)) :=
  mvarId.withContext do commitWhenSomeNoEx? do
    mvarId.checkNotAssigned `congr
    let target ← mvarId.getType'
    let some (_, lhs, _) := target.eq? | return none
    let lhs := lhs.cleanupAnnotations
    unless lhs.isApp do return none
    let some congrThm ← mkCongrSimp? lhs.getAppFn (subsingletonInstImplicitRhs := false) (maxArgs? := lhs.getAppNumArgs) | return none
    applyCongrThm? mvarId congrThm

/--
Try to apply a `hcongr` congruence theorem, and then tries to close resulting goals
using `Eq.refl`, `HEq.refl`, and assumption.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b110c3729c61c8063db848e603761b0c35b8f7136fec55cbef3fd009c10868c.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0932d71d799ec65e0ea87ef901485946505e0df0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
