# importLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7f469c729900ba0cd7809d5a5fce41fbb2847fd77052effd13a599754e1c14f",
  "kind": "def",
  "lexical_name": "importLT",
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
  "slug": "importlt--85a0ab8eaccb811d4b191d84",
  "source": {
    "blob": "b7f95ff6677b8853fb31d2417d3da89fe37005ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variantb5f189841f565fff98f12181654ffdb5cd254c76a2556c4a6b6f77a3c63d9eb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85a0ab8eaccb811d4b191d84f683ecaffc54fd6164f65ec27881f291cf7022fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variantb5f189841f565fff98f12181654ffdb5cd254c76a2556c4a6b6f77a3c63d9eb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7f469c729900ba0cd7809d5a5fce41fbb2847fd77052effd13a599754e1c14f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def importLT (env : Environment) (f1 f2 : Name) : Bool :=
  (env.findRedundantImports #[f1, f2]).contains f1

/--
`#clear_deprecations "YYYY₁-MM₁-DD₁" "YYYY₂-MM₂-DD₂" really` computes the declarations that have
the `@[deprecated]` attribute and the `since` field satisfies
`YYYY₁-MM₁-DD₁ ≤ since ≤ YYYY₂-MM₂-DD₂`.
For each one of them, it retrieves the command that generated it and removes it.
It also verbosely logs various steps of the computation.

Running `#clear_deprecations "YYYY₁-MM₁-DD₁" "YYYY₂-MM₂-DD₂"`, without the trailing `really` skips
the removal, but still emits the same verbose output.

This function is intended for automated use by the `remove_deprecations` automation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variantb5f189841f565fff98f12181654ffdb5cd254c76a2556c4a6b6f77a3c63d9eb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindDeprecations/Variantb5f189841f565fff98f12181654ffdb5cd254c76a2556c4a6b6f77a3c63d9eb4.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7f95ff6677b8853fb31d2417d3da89fe37005ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
