# Prefix.Variadic.toTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4d1e03f9d5aeedd1c9f1b4790e72030c52fc764f18affeb19345118d5e575f5",
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
  "slug": "prefix-variadic-totree--4a7a131b6a829d818ced7203",
  "source": {
    "blob": "61a408f470fdbf503da63d590e5d1b291d9e993e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a7a131b6a829d818ced72039fcbace769839107c987b58972a8a48a04f124e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4d1e03f9d5aeedd1c9f1b4790e72030c52fc764f18affeb19345118d5e575f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61a408f470fdbf503da63d590e5d1b291d9e993e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
