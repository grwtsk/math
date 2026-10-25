# mkUnfoldEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:477d8c89cf255cee755d42054bba341daee463f05e63a16513666f5138b1c7ee",
  "kind": "def",
  "lexical_name": "mkUnfoldEq",
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
  "slug": "mkunfoldeq--b913f730bee11fd6742b1f5d",
  "source": {
    "blob": "bbb0c35cb5e67f6cfc202167fc9ee17aab4d2be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b913f730bee11fd6742b1f5dc536ae2c5d970b845c5f693e46987d263ed6bd5c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:477d8c89cf255cee755d42054bba341daee463f05e63a16513666f5138b1c7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUnfoldEq (declName : Name) (info : EqnInfo) : MetaM Name := do
  let name := mkEqLikeNameFor (← getEnv) info.declName unfoldThmSuffix
  realizeConst info.declNames[0]! name (withEqnOptions declName (doRealize name))
  return name
where
  doRealize name := withOptions (tactic.hygienic.set · false) do
    lambdaTelescope info.value fun xs body => do
      let us := info.levelParams.map mkLevelParam
      let type ← mkEq (mkAppN (Lean.mkConst declName us) xs) body
      let value ← withoutExporting <| mkProof declName type
      let type ← mkForallFVars xs type
      let type ← letToHave type
      let value ← mkLambdaFVars xs value
      addDecl <| Declaration.thmDecl {
        name, type, value
        levelParams := info.levelParams
      }
      inferDefEqAttr name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbb0c35cb5e67f6cfc202167fc9ee17aab4d2be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
