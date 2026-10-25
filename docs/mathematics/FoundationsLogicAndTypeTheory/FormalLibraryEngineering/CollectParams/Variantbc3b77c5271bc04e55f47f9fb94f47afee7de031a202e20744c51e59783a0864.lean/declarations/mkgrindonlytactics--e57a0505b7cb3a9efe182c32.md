# mkGrindOnlyTactics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b1f4374f844800dc6c569eb3b744aafb98acf44d62996de4301a0fab4f1914a",
  "kind": "def",
  "lexical_name": "mkGrindOnlyTactics",
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
  "slug": "mkgrindonlytactics--e57a0505b7cb3a9efe182c32",
  "source": {
    "blob": "57ca78f7c688ae1b235965194d494c549a9d22c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectParams/Variantbc3b77c5271bc04e55f47f9fb94f47afee7de031a202e20744c51e59783a0864.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e57a0505b7cb3a9efe182c321ec8075adbb983dd3a741f3014fe30a093db60c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectParams/Variantbc3b77c5271bc04e55f47f9fb94f47afee7de031a202e20744c51e59783a0864.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b1f4374f844800dc6c569eb3b744aafb98acf44d62996de4301a0fab4f1914a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkGrindOnlyTactics (cfg : TSyntax `Lean.Parser.Tactic.optConfig) (seq : List TGrind)
    (extraParams : Array TParam := #[]) : CoreM (Array (TSyntax `tactic)) := do
  let (hasSorry, params, anchors) ← collectParamsCore seq
  if hasSorry then return #[]
  let allParams := params ++ anchors ++ extraParams
  let s₁ ← mkTac allParams
  if anchors.isEmpty then
    return #[s₁]
  else
    let s₂ ← mkTac (params ++ extraParams)
    return #[s₁, s₂]
where
  mkTac (params : Array TParam) : CoreM (TSyntax `tactic) :=
    if params.isEmpty then
      `(tactic| grind $cfg:optConfig only)
    else
      `(tactic| grind $cfg:optConfig only [$params,*])

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectParams/Variantbc3b77c5271bc04e55f47f9fb94f47afee7de031a202e20744c51e59783a0864.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectParams/Variantbc3b77c5271bc04e55f47f9fb94f47afee7de031a202e20744c51e59783a0864.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ca78f7c688ae1b235965194d494c549a9d22c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
