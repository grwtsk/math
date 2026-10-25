# parse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e67a6e343672345a777672aaec831d8c3cd598d9d6075786e0306a17ac69baaa",
  "kind": "def",
  "lexical_name": "parse",
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
  "slug": "parse--9f18ebd2aea3c5ab84cc214b",
  "source": {
    "blob": "39d17709dfcdfa21727c384c82695b1502e7b36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantb18bf89f9cb8304c65fab7e6ffae249527d2e7e2166ac68ae5dbb8eece0d4475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f18ebd2aea3c5ab84cc214be696510f6b44027dca80715182bfd0b873ec9ac6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantb18bf89f9cb8304c65fab7e6ffae249527d2e7e2166ac68ae5dbb8eece0d4475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e67a6e343672345a777672aaec831d8c3cd598d9d6075786e0306a17ac69baaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def parse (s : String) : Except String PartialBuildKey := do
  if s.isEmpty then
    throw "ill-formed target: empty string"
  match s.split ':' |>.toStringList with
  | target :: facets =>
    let target ← parseTarget target
    facets.foldlM (init := target) fun target facet => do
      if facet.isEmpty then
        throw "ill-formed target: empty facet"
      else
        return .facet target (stringToLegalOrSimpleName facet)
  | [] =>
    -- ∀ str, length (str.splitOn sep) > 0
    unreachable!
where
  parseTarget s := do
    match s.split '/' |>.toList with
    | [target] =>
      if target.isEmpty then
        return .package .anonymous
      if target.startsWith "@" then
        let pkg := target.drop 1
        if pkg.isEmpty then
          return .package .anonymous
        else
          return .package (stringToLegalOrSimpleName pkg.copy)
      else if target.startsWith "+" then
        let mod := target.drop 1
        if mod.isEmpty then
          throw "ill-formed target: expected module name after '+'"
        else
          return .module (stringToLegalOrSimpleName mod.copy)
      else
        parsePackageTarget .anonymous target
    | [pkg, target] =>
      let pkg := if pkg.startsWith "@" then pkg.drop 1 else pkg
      if pkg.isEmpty then
        parsePackageTarget .anonymous target
      else
        parsePackageTarget (stringToLegalOrSimpleName pkg.copy) target
    | _ =>
      throw "ill-formed target: too many '/'"
  parsePackageTarget pkg target :=
    if target.isEmpty then
      throw s!"ill-formed target: default package targets are not supported in partial build keys"
    else if target.startsWith "+" then
      let target := target.drop 1 |>.copy |> stringToLegalOrSimpleName
      return .packageModule pkg target
    else
      let target := stringToLegalOrSimpleName target.copy
      return .packageTarget pkg target

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantb18bf89f9cb8304c65fab7e6ffae249527d2e7e2166ac68ae5dbb8eece0d4475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Key/Variantb18bf89f9cb8304c65fab7e6ffae249527d2e7e2166ac68ae5dbb8eece0d4475.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d17709dfcdfa21727c384c82695b1502e7b36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
