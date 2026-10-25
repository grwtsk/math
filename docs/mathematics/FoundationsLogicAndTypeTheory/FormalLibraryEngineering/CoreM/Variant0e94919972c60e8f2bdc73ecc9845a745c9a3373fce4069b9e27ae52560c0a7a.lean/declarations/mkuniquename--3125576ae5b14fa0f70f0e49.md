# mkUniqueName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50a6be4b4780ab09e68f3845e7debe4137209dc082e35299993a80824ad19d17",
  "kind": "def",
  "lexical_name": "mkUniqueName",
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
  "slug": "mkuniquename--3125576ae5b14fa0f70f0e49",
  "source": {
    "blob": "61d372630f94a66febd188f998aa81b1361a4ce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3125576ae5b14fa0f70f0e49bf83ed70ef6d19af25ee7154a3ece7d18757fa3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50a6be4b4780ab09e68f3845e7debe4137209dc082e35299993a80824ad19d17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkUniqueName (env : Environment) (g : DeclNameGenerator) («infix» : Name) :
    (Name × DeclNameGenerator) := Id.run do
  -- `Name.append` does not allow macro scopes on both operands; as the result of this function is
  -- unlikely to be referenced in a macro; the choice doesn't really matter.
  let «infix» := if g.namePrefix.hasMacroScopes && infix.hasMacroScopes then infix.eraseMacroScopes else «infix»
  let base := g.namePrefix ++ «infix»
  let mut g := g
  while isConflict (curr g base) do
    g := g.next
  return (curr g base, g)
where
  -- Check whether the name conflicts with an existing one. Conflicts ignore privacy.
  -- NOTE: We only check the current branch and rely on the documented invariant instead because we
  -- do not want to block here and because it would not solve the issue for completely separated
  -- threads of elaboration such as in Aesop's backtracking search.
  isConflict (n : Name) : Bool :=
    (env.setExporting false).containsOnBranch n ||
    isPrivateName n && (env.setExporting false).containsOnBranch (privateToUserName n) ||
    !isPrivateName n && (env.setExporting false).containsOnBranch (mkPrivateName env n)
  curr (g : DeclNameGenerator) (base : Name) : Name := Id.run do
    let mut n := g.idxs.foldr (fun i n => n.appendIndexAfter i) base
    if env.header.isModule && !env.isExporting && !isPrivateName n then
      n := mkPrivateName env n
    return n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variant0e94919972c60e8f2bdc73ecc9845a745c9a3373fce4069b9e27ae52560c0a7a.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d372630f94a66febd188f998aa81b1361a4ce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
