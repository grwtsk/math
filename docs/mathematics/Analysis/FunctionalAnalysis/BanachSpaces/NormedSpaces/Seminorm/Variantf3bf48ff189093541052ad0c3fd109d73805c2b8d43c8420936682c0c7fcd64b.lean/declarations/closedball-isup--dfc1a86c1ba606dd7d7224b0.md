# closedBall_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c246ce3cf065b4bd87737f96aed7df768aa27fd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 983,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d5bff7-13cd-3b3b-f7b5-f77d0c34fc04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd1ac5b6-b5e4-3841-c93c-2357f6740036",
  "kind": "theorem",
  "lexical_name": "closedBall_iSup",
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
  "slug": "closedball-isup--dfc1a86c1ba606dd7d7224b0",
  "source": {
    "blob": "c246ce3cf065b4bd87737f96aed7df768aa27fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 991,
    "line": 983,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfc1a86c1ba606dd7d7224b08dd91ca189a8daa7da17d4d1c9294eb30b57f4f6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd1ac5b6-b5e4-3841-c93c-2357f6740036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 983–991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_iSup {p : ι → Seminorm 𝕜 E} (hp : BddAbove (range p)) (e : E) {r : ℝ}
    (hr : 0 < r) : closedBall (⨆ i, p i) e r = ⋂ i, closedBall (p i) e r := by
  cases isEmpty_or_nonempty ι
  · rw [iSup_of_empty', iInter_of_empty, Seminorm.sSup_empty]
    exact closedBall_bot _ hr
  · ext x
    have := Seminorm.bddAbove_range_iff.mp hp (x - e)
    simp only [mem_closedBall, mem_iInter, Seminorm.iSup_apply hp, ciSup_le_iff this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Seminorm/Variantf3bf48ff189093541052ad0c3fd109d73805c2b8d43c8420936682c0c7fcd64b.lean#L983).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c246ce3cf065b4bd87737f96aed7df768aa27fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
