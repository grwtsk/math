# evalSymIntros

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b49532190473d25ae02b84a6e0cdba61b3a09c0dbc8c200a7671b8bece6f9390",
  "kind": "def",
  "lexical_name": "evalSymIntros",
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
  "slug": "evalsymintros--fd7a296976435b7029578b1e",
  "source": {
    "blob": "b11a26871c88b0afb4e35e9315ea5644cfb9a4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd7a296976435b7029578b1e69680cb7cb80ec3fdc43b450c1e6f2b194ccd345",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b49532190473d25ae02b84a6e0cdba61b3a09c0dbc8c200a7671b8bece6f9390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic Parser.Tactic.Grind.symIntros] def evalSymIntros : GrindTactic := fun stx => do
  match stx with
  | `(grind| intros) => evalIntrosCore true
  | `(grind| intros (internalize := false)) => evalIntrosCore false
  | `(grind| intros (internalize := true)) => evalIntrosCore true
  | _ => throwUnsupportedSyntax

/-- Get or create a `BackwardRule` for a declaration, using the name cache. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant2dd881bdbbca7754babd574b283c11f57ca750ceef3b60e4f024d6d50454c32b.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b11a26871c88b0afb4e35e9315ea5644cfb9a4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
