# Prefix.Variadic.toTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aa94d1020cfcbf74969a9cec309909a2ee8a8362704b186ca9d96e35e52899e",
  "kind": "def",
  "lexical_name": "Prefix.Variadic.toTree",
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
  "slug": "prefix-variadic-totree--619b58439d17d6d2568824e6",
  "source": {
    "blob": "0601bd39815753a601ca31dd941531638a4a255c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:619b58439d17d6d2568824e67e7115493aa4c885b3f5c4f1ccc977ced006423b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aa94d1020cfcbf74969a9cec309909a2ee8a8362704b186ca9d96e35e52899e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Prefix.Variadic.toTree : Prefix.Variadic α → Tree α
  | .atom a => .var a
  | .zero => .falsum
  | .one => .truth
  | .not p => .neg (Prefix.Variadic.toTree p)
  | .all ps => Tree.conjList (Prefix.Variadic.toTreeList ps)
  | .any ps => Tree.disjList (Prefix.Variadic.toTreeList ps)
  | .impl p q => .impl (Prefix.Variadic.toTree p) (Prefix.Variadic.toTree q)
  | .eqv p q => .eqv (Prefix.Variadic.toTree p) (Prefix.Variadic.toTree q)
  | .nand p q => .nand (Prefix.Variadic.toTree p) (Prefix.Variadic.toTree q)

/-- Compile a list of Variadic children. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0601bd39815753a601ca31dd941531638a4a255c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
