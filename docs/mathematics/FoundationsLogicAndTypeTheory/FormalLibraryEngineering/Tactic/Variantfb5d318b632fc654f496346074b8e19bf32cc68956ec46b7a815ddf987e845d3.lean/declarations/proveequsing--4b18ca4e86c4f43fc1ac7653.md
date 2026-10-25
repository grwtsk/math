# proveEqUsing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cafd617b4647c5b2550dd92db67652b8592c4578e17f03d7ba2e10604e0fa46f",
  "kind": "def",
  "lexical_name": "proveEqUsing",
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
  "slug": "proveequsing--4b18ca4e86c4f43fc1ac7653",
  "source": {
    "blob": "8b425a6b62b7f2663cafb89d605b1f8bb59ed9a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b18ca4e86c4f43fc1ac765343d9280d0909e0a9130f1ade8f39fcb189fc18ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cafd617b4647c5b2550dd92db67652b8592c4578e17f03d7ba2e10604e0fa46f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveEqUsing (s : SimpTheorems) (a b : Expr) : MetaM (Option Simp.Result) := do
  let go : SimpM (Option Simp.Result) := do
    let methods := Simp.DefaultMethods.methods
    let a' ← Simp.simp a methods
    let b' ← Simp.simp b methods
    unless ← isDefEq a'.expr b'.expr do return none
    mkEqTrans a' (← mkEqSymm b b')
  withReducible do
    (go { simpTheorems := #[s], congrTheorems := ← Meta.getSimpCongrTheorems }).run' {}

/-- Prove `a = b` by simplifying using move and squash lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantfb5d318b632fc654f496346074b8e19bf32cc68956ec46b7a815ddf987e845d3.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b425a6b62b7f2663cafb89d605b1f8bb59ed9a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
