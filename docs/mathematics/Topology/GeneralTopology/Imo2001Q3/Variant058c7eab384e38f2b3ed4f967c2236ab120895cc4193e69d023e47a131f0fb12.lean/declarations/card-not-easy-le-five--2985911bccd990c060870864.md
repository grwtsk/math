# card_not_easy_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bced14e-abe4-9660-9919-a1e0c8933c39",
  "kind": "lemma",
  "lexical_name": "card_not_easy_le_five",
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
  "slug": "card-not-easy-le-five--2985911bccd990c060870864",
  "source": {
    "blob": "df629a25e354c7bbc04b528a836e9b4a32086026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2001Q3/Variant058c7eab384e38f2b3ed4f967c2236ab120895cc4193e69d023e47a131f0fb12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2985911bccd990c06087086438761da1cf2e20ade882c93a46e3f27b550570da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2001Q3/Variant058c7eab384e38f2b3ed4f967c2236ab120895cc4193e69d023e47a131f0fb12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bced14e-abe4-9660-9919-a1e0c8933c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_not_easy_le_five {i : Fin 21} (hG : #(G i) ≤ 6) (hB : ∀ j, ¬Disjoint (G i) (B j)) :
    #{p ∈ G i | ¬Easy B p} ≤ 5 := by
  by_contra! h
  replace h := le_antisymm (card_filter_le ..) (hG.trans h)
  simp_rw [card_filter_eq_iff, Easy, not_le] at h
  suffices 21 ≤ 12 by norm_num at this
  calc
    _ = #{j | ¬Disjoint (G i) (B j)} := by simp [filter_true_of_mem fun j _ ↦ hB j]
    _ = #((G i).biUnion fun p ↦ {j | p ∈ B j}) := by congr 1; ext j; simp [not_disjoint_iff]
    _ ≤ ∑ p ∈ G i, #{j | p ∈ B j} := card_biUnion_le
    _ ≤ ∑ p ∈ G i, 2 := sum_le_sum fun p mp ↦ Nat.le_of_lt_succ (h p mp)
    _ ≤ _ := by rw [sum_const, smul_eq_mul]; lia

open scoped Classical in
/-- There are at most 210 girl-boy pairs who solved some problem in common that was not easy for
a fixed cohort. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2001Q3/Variant058c7eab384e38f2b3ed4f967c2236ab120895cc4193e69d023e47a131f0fb12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2001Q3/Variant058c7eab384e38f2b3ed4f967c2236ab120895cc4193e69d023e47a131f0fb12.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df629a25e354c7bbc04b528a836e9b4a32086026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
