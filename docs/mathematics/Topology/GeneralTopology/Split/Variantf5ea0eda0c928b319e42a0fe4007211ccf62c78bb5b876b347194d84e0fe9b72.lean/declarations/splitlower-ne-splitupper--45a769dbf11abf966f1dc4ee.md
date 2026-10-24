# splitLower_ne_splitUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25abcf1b-b736-f44a-81c7-cb4966b5e6b6",
  "kind": "theorem",
  "lexical_name": "splitLower_ne_splitUpper",
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
  "slug": "splitlower-ne-splitupper--45a769dbf11abf966f1dc4ee",
  "source": {
    "blob": "c6797b4068735b75a0d033c627995fe25d26d24b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 145,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45a769dbf11abf966f1dc4eea70561f23906b1349e3f5bde79e1cffc72f5762b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25abcf1b-b736-f44a-81c7-cb4966b5e6b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitLower_ne_splitUpper (I : Box ι) (i : ι) (x : ℝ) :
    I.splitLower i x ≠ I.splitUpper i x := by
  rcases le_or_gt x (I.lower i) with h | _
  · rw [splitUpper_eq_self.2 h, splitLower_eq_bot.2 h]
    exact WithBot.bot_ne_coe
  · refine (disjoint_splitLower_splitUpper I i x).ne ?_
    rwa [Ne, splitLower_eq_bot, not_le]

end Box

namespace Prepartition

variable {I J : Box ι} {i : ι} {x : ℝ}

open scoped Classical in
/-- The partition of `I : Box ι` into the boxes `I ∩ {y | y ≤ x i}` and `I ∩ {y | x i < y}`.
One of these boxes can be empty, then this partition is just the single-box partition `⊤`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6797b4068735b75a0d033c627995fe25d26d24b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
