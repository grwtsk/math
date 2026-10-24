# Subgraph.IsPerfectMatching.symmDiff_of_isAlternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5c4092e9bc8efe4c61beb036b64f5e62ef437c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 599,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c03bbc04-328c-103c-ab28-907d67e338f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d656f510-3fc2-1e11-041c-4053c38f5431",
  "kind": "lemma",
  "lexical_name": "Subgraph.IsPerfectMatching.symmDiff_of_isAlternating",
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
  "slug": "subgraph-isperfectmatching-symmdiff-of-isalternating--f67a2183dec5e85e80c34354",
  "source": {
    "blob": "e5c4092e9bc8efe4c61beb036b64f5e62ef437c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 599,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f67a2183dec5e85e80c343546c641074a745f5f4c044de148e18ae4617491a80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d656f510-3fc2-1e11-041c-4053c38f5431`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 599–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgraph.IsPerfectMatching.symmDiff_of_isAlternating (hM : M.IsPerfectMatching)
    (hG' : G'.IsAlternating M.spanningCoe) (hG'cyc : G'.IsCycles) :
    (⊤ : Subgraph (M.spanningCoe ∆ G')).IsPerfectMatching := by
  rw [Subgraph.isPerfectMatching_iff]
  intro v
  simp only [symmDiff_def]
  obtain ⟨w, hw⟩ := hM.1 (hM.2 v)
  by_cases h : G'.Adj v w
  · obtain ⟨w', hw'⟩ := hG'cyc.other_adj_of_adj h
    have hmadj : M.Adj v w ↔ ¬M.Adj v w' := by simpa using hG' hw'.1 h hw'.2
    use w'
    simp only [Subgraph.top_adj, SimpleGraph.sup_adj, sdiff_adj, Subgraph.spanningCoe_adj,
      hmadj.mp hw.1, hw'.2, not_true_eq_false, and_self, not_false_eq_true, or_true, true_and]
    rintro y (hl | hr)
    · grind
    · obtain ⟨w'', hw''⟩ := hG'cyc.other_adj_of_adj hr.1
      by_contra! hc
      simp_all [show M.Adj v y ↔ ¬M.Adj v w' by simpa using hG' hc hr.1 hw'.2]
  · use w
    simp only [Subgraph.top_adj, SimpleGraph.sup_adj, sdiff_adj, Subgraph.spanningCoe_adj, hw.1, h,
      not_false_eq_true, and_self, not_true_eq_false, or_false, true_and]
    rintro y (hl | hr)
    · exact hw.2 _ hl.1
    · have ⟨w', hw'⟩ := hG'cyc.other_adj_of_adj hr.1
      simp_all [show M.Adj v y ↔ ¬M.Adj v w' by simpa using hG' hw'.1 hr.1 hw'.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant93bdb61196684a27cbedfea160786b99a916fe28ae929cfb2643852118b211c8.lean#L599).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5c4092e9bc8efe4c61beb036b64f5e62ef437c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
