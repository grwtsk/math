# mkExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b2e2d7f42aeca5a2d96d66131e4811421fc2c4fc15b6d4a27e2d97036cf82d6",
  "kind": "def",
  "lexical_name": "mkExtension",
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
  "slug": "mkextension--ddca0816a03f3f2e49e625ad",
  "source": {
    "blob": "ade2b829ae70b67e4417bff44f59221e4c95c4af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 200,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddca0816a03f3f2e49e625ad6012dc099ac828ed45f0ad4272c31a24d406dafe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b2e2d7f42aeca5a2d96d66131e4811421fc2c4fc15b6d4a27e2d97036cf82d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkExtension (name : Name := by exact decl_name%) : IO Extension :=
  registerSimpleScopedEnvExtension {
    name     := name
    initial  := {}
    addEntry := ExtensionState.addEntry
    exportEntry? := fun _ e =>
      -- export only annotations on public decls
      let declName := match e with
        | .inj thm | .ematch thm =>
          match thm.origin with
          | .decl declName => declName
          | _ => unreachable!
        | .ext declName | .cases declName _ | .funCC declName => declName
      if isPrivateName declName then ⟨none, none, some e⟩
      else .uniform (some e)
  }

/--
`grind` is parametrized by a collection of `ExtensionState`. The motivation is to allow
users to use multiple extensions simultaneously without merging them into a single structure.
The collection is scanned linearly. In practice, we expect the array to be very small.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ade2b829ae70b67e4417bff44f59221e4c95c4af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
