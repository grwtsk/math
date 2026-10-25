# replace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44526398fadccec46daeaf5b0124675e032c9bcb9d5a4979845acb528e2496df",
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
  "slug": "replace--436edbcf4bc47e7f59268d04",
  "source": {
    "blob": "112efe7ec2daa3216f47fd5eec218eda016f896b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:436edbcf4bc47e7f59268d044440e5c065776f85c7dde82d67f6b65c67d50629",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44526398fadccec46daeaf5b0124675e032c9bcb9d5a4979845acb528e2496df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def replace (g : MVarId) (hyp : FVarId) (proof : Expr) (typeNew : Option Expr := none) :
    MetaM AssertAfterResult :=
  g.withContext do
    let typeNew ← typeNew.getDM (inferType proof)
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
    e.forEach' fun e ↦ do
      if e.isFVar then
        let ldecl' ← e.fvarId!.getDecl
        modify fun ldecl ↦ if ldecl'.index > ldecl.index then ldecl' else ldecl
        return false
      else
        return e.hasFVar

/-- Add the hypothesis `h : t`, given `v : t`, and return the new `FVarId`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3650f02e26150b30cb46eadfcd6a76fc38b5aee47becdb1ef8ed549bf93def69.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112efe7ec2daa3216f47fd5eec218eda016f896b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
