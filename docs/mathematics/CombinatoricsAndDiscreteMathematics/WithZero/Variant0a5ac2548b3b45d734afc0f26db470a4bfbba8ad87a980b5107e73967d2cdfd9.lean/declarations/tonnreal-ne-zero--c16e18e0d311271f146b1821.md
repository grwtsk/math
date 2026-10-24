# toNNReal_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2652aaec-98da-c149-68bc-58a0589ad5b7",
  "kind": "theorem",
  "lexical_name": "toNNReal_ne_zero",
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
  "slug": "tonnreal-ne-zero--c16e18e0d311271f146b1821",
  "source": {
    "blob": "9bc548e819251e094f7b21ba673727b11bee03d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c16e18e0d311271f146b182104282d22e1ec6de77068ee6c3e1e93364e0f888a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2652aaec-98da-c149-68bc-58a0589ad5b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNNReal_ne_zero {e : ℝ≥0} {m : ℤᵐ⁰} (he : e ≠ 0) (hm : m ≠ 0) : toNNReal he m ≠ 0 := by
  simp only [ne_eq, map_eq_zero, hm, not_false_eq_true]

/-- `toNNReal` sends nonzero elements to positive elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/WithZero/Variant0a5ac2548b3b45d734afc0f26db470a4bfbba8ad87a980b5107e73967d2cdfd9.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bc548e819251e094f7b21ba673727b11bee03d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
