# replaceRecApps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1ad5d69cf6ea92a68fd8b8db9bbe729810c23d02175e8b0d95076c77bc2b79d",
  "kind": "def",
  "lexical_name": "replaceRecApps",
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
  "slug": "replacerecapps--cb07b4437e03f895a8422072",
  "source": {
    "blob": "23db6ca0d9fc924dd5d0d68818fdf2e34c62edc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb07b4437e03f895a8422072a3c234253f04c3e5c423de3067fc3728f20b2930",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1ad5d69cf6ea92a68fd8b8db9bbe729810c23d02175e8b0d95076c77bc2b79d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def replaceRecApps (recFnNames : Array Name) (fixedParamPerms : FixedParamPerms) (f : Expr) (e : Expr) : MetaM Expr := do
  assert! recFnNames.size = fixedParamPerms.perms.size
  let t ← inferType f
  Meta.transform e fun e => e.withApp fun fn args => do
    let some idx := fn.constName?.bind (recFnNames.idxOf? ·) | return .continue
    let varying := fixedParamPerms.perms[idx]!.pickVarying args
    return .continue (mkAppN (PProdN.proj recFnNames.size idx t f) varying)

/--
For pretty error messages:
Takes `F : (fun f => e)`, where `f` is the packed function, and replaces `f` in `e` with the user-visible
constants, which are added to the environment temporarily.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantabfb172bff867eb40d8504c10447ebed1c140c92ea9b6c8f1bafd6a1d07b8204.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23db6ca0d9fc924dd5d0d68818fdf2e34c62edc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
