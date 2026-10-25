# Dependency.toToml

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fc461a418ed9719e7b0af14d93ee8a7e39b97e823d26681fbfe8cc8d562f962",
  "kind": "def",
  "lexical_name": "Dependency.toToml",
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
  "slug": "dependency-totoml--ef39332c9fc05fafe8f46925",
  "source": {
    "blob": "a6624e3ef4b0f1192d3ecdd871bcbf2e3372eae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef39332c9fc05fafe8f46925594825e32bf95c0f59257492807004060e44a81b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fc461a418ed9719e7b0af14d93ee8a7e39b97e823d26681fbfe8cc8d562f962`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public protected def Dependency.toToml (dep : Dependency) (t : Table  := {}) : Table :=
  let t := t
    |>.insert `name dep.name
    |>.insertD `scope dep.scope ""
  let t :=
    match dep.version with
    | .none => t
    | .git rev =>
      match dep.src? with
      | some (.git (rev := some gitRev) ..) =>
        if gitRev == rev then
          t -- `rev` will be set below
        else t.insert `version s!"git#{rev}"
      | _ => t.insert `rev rev
    | .ver ver => t.insert `version ver.toString
  let t :=
    if let some src := dep.src? then
      match src with
      | .path dir => t.insert `path (toToml dir)
      | .git url rev? subDir? =>
        t.insert `git url
        |>.smartInsert `rev rev?
        |>.smartInsert `subDir subDir?
    else
      t
  t.smartInsert `options <| dep.opts.foldl (·.insert · ·) Table.empty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Toml/Variant09809a5a0e1c24dee42985b76416dc05931937c0ff1133b5319208f90f3db95f.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6624e3ef4b0f1192d3ecdd871bcbf2e3372eae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
