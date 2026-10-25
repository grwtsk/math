# rowToMessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0d0fffe356c8974681990f13a1d134540ebc78977841be86aff99d917b37229",
  "kind": "def",
  "lexical_name": "rowToMessageData",
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
  "slug": "rowtomessagedata--436de77bd7283afac7ce7256",
  "source": {
    "blob": "94c052c46cbb007bd6e9e23c3404dd2fc3d5a5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant9547a2df15e63ae67eb9dc1844d5ba709172f47c9a19c0efd7161a7b0658f33c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:436de77bd7283afac7ce725617d1e07d3849ccd3adb2aa591bf15a096599094e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant9547a2df15e63ae67eb9dc1844d5ba709172f47c9a19c0efd7161a7b0658f33c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0d0fffe356c8974681990f13a1d134540ebc78977841be86aff99d917b37229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rowToMessageData :
    List MessageData → List MessageData → List MessageData → List Entry → MetaM MessageData
  | line :: lines, dep :: deps, thm :: thms, en :: es => do
    let pipes := String.join (List.replicate en.depth "│ ")
    let pipes := match en.status with
      | Status.sintro => s!"├ "
      | Status.intro  => s!"│ {pipes}┌ "
      | Status.cintro => s!"│ {pipes}├ "
      | Status.lam    => s!"│ {pipes}"
      | Status.reg    => s!"│ {pipes}"

    let row := m!"{line}│{dep}│ {thm} {pipes}{en.type}\n"
    return (← rowToMessageData lines deps thms es).compose row
  | _, _, _, _ => return MessageData.nil

/-- Given all `Entries`, return the entire Fitch table. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant9547a2df15e63ae67eb9dc1844d5ba709172f47c9a19c0efd7161a7b0658f33c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant9547a2df15e63ae67eb9dc1844d5ba709172f47c9a19c0efd7161a7b0658f33c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c052c46cbb007bd6e9e23c3404dd2fc3d5a5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
