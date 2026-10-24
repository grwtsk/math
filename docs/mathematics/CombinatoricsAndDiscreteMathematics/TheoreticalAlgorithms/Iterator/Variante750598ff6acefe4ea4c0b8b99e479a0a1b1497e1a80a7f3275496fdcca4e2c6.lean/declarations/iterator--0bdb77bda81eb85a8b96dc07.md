# Iterator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d4223dc4febf531f41cea202db4b0e08283c961491199f49af96b01c60a0137",
  "kind": "structure",
  "lexical_name": "Iterator",
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
  "slug": "iterator--0bdb77bda81eb85a8b96dc07",
  "source": {
    "blob": "8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bdb77bda81eb85a8b96dc073c85fb0b1d1cbb6d2cbcb7bed3043176f5f618b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d4223dc4febf531f41cea202db4b0e08283c961491199f49af96b01c60a0137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Iterator where
  /-- The string being iterated over. -/
  s : String
  /-- The current UTF-8 byte position in the string `s`.

  This position is not guaranteed to be valid for the string. If the position is not valid, then the
  current character is `(default : Char)`, similar to `String.get` on an invalid position.
  -/
  i : Pos.Raw
  deriving DecidableEq, Inhabited

/-- Creates an iterator at the beginning of the string.

This is a no-longer-supported legacy API that will be removed in a future release. You should use
`String.Pos` instead, which is similar, but safer. To iterate over a string `s`, start with
`p : s.startPos`, advance it using `p.next`, access the current character using `p.get` and
check if the position is at the end using `p = s.endPos` or `p.IsAtEnd`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
