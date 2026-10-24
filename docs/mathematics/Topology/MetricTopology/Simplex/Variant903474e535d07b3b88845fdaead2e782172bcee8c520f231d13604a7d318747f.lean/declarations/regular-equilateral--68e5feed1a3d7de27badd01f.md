# Regular.equilateral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd2cf340-48ab-6ea4-301b-78609b1886a6",
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
  "slug": "regular-equilateral--68e5feed1a3d7de27badd01f",
  "source": {
    "blob": "9395ead8a380c9b5d995f9694b0e8d5450646a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 129,
    "path": "GRWTSK/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68e5feed1a3d7de27badd01fab38116a4183d25268c31cc7ef1e135b399c46fd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd2cf340-48ab-6ea4-301b-78609b1886a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–152.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Simplex/Variant903474e535d07b3b88845fdaead2e782172bcee8c520f231d13604a7d318747f.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9395ead8a380c9b5d995f9694b0e8d5450646a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
