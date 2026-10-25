# setReducibilityStatusCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d558d480abccfa4586eff0e20facf5ea8cadf7bd2fb176155bdde994b32ba55",
  "kind": "def",
  "lexical_name": "setReducibilityStatusCore",
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
  "slug": "setreducibilitystatuscore--ad513fb22bb480e29a901a94",
  "source": {
    "blob": "e91d92bfd316624bcfb11e916ed5297c12220d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad513fb22bb480e29a901a947cb6dc9ad958d5738474846815e28169fb9d4d28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d558d480abccfa4586eff0e20facf5ea8cadf7bd2fb176155bdde994b32ba55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def setReducibilityStatusCore (env : Environment) (declName : Name) (status : ReducibilityStatus) (attrKind : AttributeKind) (currNamespace : Name) : Environment :=
  if attrKind matches .global then
    match env.getModuleIdxFor? declName with
    | some _ =>
      -- Trying to set the attribute of a declaration defined in an imported module.
      reducibilityExtraExt.addEntry env (declName, status)
    | none =>
      let _ : Inhabited Environment := ⟨env⟩
      reducibilityCoreExt.addEntry (asyncDecl := declName) env (declName, status)
  else
    -- `scoped` and `local` must be handled by `reducibilityExtraExt`
    reducibilityExtraExt.addCore env (declName, status) attrKind currNamespace

/-
TODO: it would be great if we could distinguish between the following two situations

1-
```
@[reducible] def foo := ...
```

2-
```
def foo := ...
...
attribute [reducible] foo
```

Reason: the second one is problematic if user has add simp theorems or TC instances that include `foo`.
Recall that the discrimination trees unfold `[reducible]` declarations while indexing new entries.
-/

register_builtin_option allowUnsafeReducibility : Bool := {
  defValue := false
  descr    := "enables users to modify the reducibility settings for declarations even when such changes are deemed potentially hazardous. For example, `simp` and type class resolution maintain term indices where reducible declarations are expanded."
}

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variantd584f13aed8b806e0a0e6979f4c6e58f6ac1706d1a61df81017ed75e8100fbd6.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e91d92bfd316624bcfb11e916ed5297c12220d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
