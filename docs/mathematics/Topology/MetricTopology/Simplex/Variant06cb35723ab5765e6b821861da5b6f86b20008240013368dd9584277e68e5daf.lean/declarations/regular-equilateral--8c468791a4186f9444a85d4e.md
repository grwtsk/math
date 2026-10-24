# Regular.equilateral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "230d2160a32882d6098735e31cdce61e10eb79da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe75ce0-814d-b38f-3c73-60e3372bd799",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:156b5a22-28a8-eb06-0494-ce4984566d90",
  "kind": "lemma",
  "lexical_name": "Regular.equilateral",
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
  "slug": "regular-equilateral--8c468791a4186f9444a85d4e",
  "source": {
    "blob": "230d2160a32882d6098735e31cdce61e10eb79da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 121,
    "path": "GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c468791a4186f9444a85d4ec7bfb3ba6ee7a344f736f6730ff7b37598a2220b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156b5a22-28a8-eb06-0494-ce4984566d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Regular.equilateral {s : Simplex R P n} (hr : s.Regular) : s.Equilateral := by
  refine ⟨dist (s.points 0) (s.points 1), fun i j hij ↦ ?_⟩
  have hn : n ≠ 0 := by omega
  by_cases hi : i = 1
  · rw [hi, dist_comm]
    rcases hr (Equiv.swap 0 j) with ⟨x, hx⟩
    nth_rw 2 [← x.dist_eq]
    simp_rw [← Function.comp_apply (f := x), ← hx]
    simp only [comp_apply, Equiv.swap_apply_left]
    convert rfl
    rw [Equiv.swap_apply_of_ne_of_ne (by norm_num [hn]) (by omega)]
  · rcases hr ((Equiv.swap 0 i).trans (Equiv.swap 1 j)) with ⟨x, hx⟩
    nth_rw 2 [← x.dist_eq]
    simp_rw [← Function.comp_apply (f := x), ← hx]
    simp only [Equiv.coe_trans, comp_apply, Equiv.swap_apply_left]
    convert rfl
    · exact Equiv.swap_apply_of_ne_of_ne hi hij
    · rw [Equiv.swap_apply_of_ne_of_ne (by norm_num [hn]) (Ne.symm hi)]
      simp

end Simplex

namespace Triangle

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230d2160a32882d6098735e31cdce61e10eb79da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
