# replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3911e4b49028241f2544f8e6759a291a7a34a75001101b77adfddc863db7a840",
  "kind": "def",
  "lexical_name": "replace",
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
  "slug": "replace--2a99167f3cd4ed3580bc947d",
  "source": {
    "blob": "7d29b3c861c192cb675e57f0b55e712396ae4186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a99167f3cd4ed3580bc947df2887b8c2969eacdb59816d04a776f6255c28922",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3911e4b49028241f2544f8e6759a291a7a34a75001101b77adfddc863db7a840`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replace (g : MVarId) (hyp : FVarId) (proof : Expr) (typeNew : Option Expr := none) :
    MetaM AssertAfterResult :=
  g.withContext do
    let typeNew ← match typeNew with
    | some t => pure t
    | none => inferType proof
    let ldecl ← hyp.getDecl
    -- `typeNew` may contain variables that occur after `hyp`.
    -- Thus, we use the auxiliary function `findMaxFVar` to ensure `typeNew` is well-formed
    -- at the position we are inserting it.
    let (_, ldecl') ← findMaxFVar typeNew |>.run ldecl
    let result ← g.assertAfter ldecl'.fvarId ldecl.userName typeNew proof
    (return { result with mvarId := ← result.mvarId.clear hyp }) <|> pure result
where
  /-- Finds the `LocalDecl` for the FVar in `e` with the highest index. -/
  findMaxFVar (e : Expr) : StateRefT LocalDecl MetaM Unit :=
    e.forEach' fun e => do
      if e.isFVar then
        let ldecl' ← e.fvarId!.getDecl
        modify fun ldecl => if ldecl'.index > ldecl.index then ldecl' else ldecl
        return false
      else
        return e.hasFVar

/-- Get the type the given metavariable after instantiating metavariables and cleaning up
annotations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d29b3c861c192cb675e57f0b55e712396ae4186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
