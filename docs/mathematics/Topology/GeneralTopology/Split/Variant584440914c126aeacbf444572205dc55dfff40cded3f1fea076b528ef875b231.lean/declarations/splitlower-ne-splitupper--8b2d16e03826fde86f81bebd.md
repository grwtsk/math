# splitLower_ne_splitUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33a14ef0e63282c67eb3a38b11d70565391baa01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c1c38d3-5c7c-c80d-0998-12297a9a7732",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dffcfdbe-1079-3f6d-3ce2-5130752746e0",
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
  "slug": "splitlower-ne-splitupper--8b2d16e03826fde86f81bebd",
  "source": {
    "blob": "33a14ef0e63282c67eb3a38b11d70565391baa01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b2d16e03826fde86f81bebd422338ed8cc133612aa841e1797186e83ad0444b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dffcfdbe-1079-3f6d-3ce2-5130752746e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splitLower_ne_splitUpper (I : Box ι) (i : ι) (x : ℝ) :
    I.splitLower i x ≠ I.splitUpper i x := by
  rcases le_or_lt x (I.lower i) with h | _
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Split/Variant584440914c126aeacbf444572205dc55dfff40cded3f1fea076b528ef875b231.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a14ef0e63282c67eb3a38b11d70565391baa01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
