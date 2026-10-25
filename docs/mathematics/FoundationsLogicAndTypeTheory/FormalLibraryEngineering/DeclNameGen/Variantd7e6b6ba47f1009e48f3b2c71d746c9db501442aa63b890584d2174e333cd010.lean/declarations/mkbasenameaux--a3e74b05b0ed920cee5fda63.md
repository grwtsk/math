# mkBaseNameAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb958f806d3818160427fcd701d407523596989795e99eb02ecc745186e05911",
  "kind": "def",
  "lexical_name": "mkBaseNameAux",
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
  "slug": "mkbasenameaux--a3e74b05b0ed920cee5fda63",
  "source": {
    "blob": "340fcf95d8c446b0e503c8b3253106c48fcb681d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3e74b05b0ed920cee5fda63b7cbc13a6f64cb9581e5b1260b543773962e4b40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb958f806d3818160427fcd701d407523596989795e99eb02ecc745186e05911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def mkBaseNameAux (e : Expr) : MkNameM String := do
  let (foralls, sb) ← visit e
  return sb ++ String.join foralls
where
  visit (e : Expr) : MkNameM (List String × String) := do
    match e with
    | .forallE _ ty body _ =>
      let (foralls, sb) ← visit body
      let st ← mkBaseNameCore ty (omitTopForall := true)
      if st == "" then
        return (foralls, sb)
      else
        return (("Of" ++ st) :: foralls, sb)
    | _ => return ([], ← mkBaseNameCore e)

/--
Adds all prefixes of `ns` as seen constants.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variantd7e6b6ba47f1009e48f3b2c71d746c9db501442aa63b890584d2174e333cd010.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `340fcf95d8c446b0e503c8b3253106c48fcb681d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
