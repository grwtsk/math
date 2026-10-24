# isBigO_atTop_F_int_zero_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "784ecab95ef493db2cd246f0ba7e6b0a2555bccf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4826a194-a1fd-0e7a-1949-5142d330b66e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31a493a2-236a-ade0-cfa8-41efd4c93d15",
  "kind": "lemma",
  "lexical_name": "isBigO_atTop_F_int_zero_sub",
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
  "slug": "isbigo-attop-f-int-zero-sub--4e9a57f0a19deba187723ce9",
  "source": {
    "blob": "784ecab95ef493db2cd246f0ba7e6b0a2555bccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 247,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e9a57f0a19deba187723ce9f22f7d4752e5ad78b11c01b16e837e7f15d0ca79",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31a493a2-236a-ade0-cfa8-41efd4c93d15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isBigO_atTop_F_int_zero_sub (a : UnitAddCircle) : ∃ p, 0 < p ∧
    (fun t ↦ F_int 0 a t - (if a = 0 then 1 else 0)) =O[atTop] fun t ↦ exp (-p * t) := by
  obtain ⟨a, ha, rfl⟩ := a.eq_coe_Ico
  obtain ⟨p, hp, hp'⟩ := isBigO_atTop_F_nat_zero_sub ha.1
  obtain ⟨q, hq, hq'⟩ := isBigO_atTop_F_nat_zero_sub (sub_nonneg.mpr ha.2.le)
  simp_rw [AddCircle.coe_eq_zero_iff_of_mem_Ico ha]
  simp_rw [eq_false_intro (by linarith [ha.2] : 1 - a ≠ 0), if_false, sub_zero] at hq'
  refine ⟨_, lt_min hp hq, ?_⟩
  have : (fun t ↦ F_int 0 a t - (if a = 0 then 1 else 0)) =ᶠ[atTop]
      fun t ↦ (F_nat 0 a t - (if a = 0 then 1 else 0)) + F_nat 0 (1 - a) t := by
    filter_upwards [eventually_gt_atTop 0] with t ht
    rw [F_int_eq_of_mem_Icc 0 (Ico_subset_Icc_self ha) ht]
    ring
  refine this.isBigO.trans ((hp'.trans ?_).add (hq'.trans ?_)) <;>
  apply isBigO_exp_neg_mul_of_le
  exacts [min_le_left .., min_le_right ..]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantf6572abc864eb2d6ca2548b5f56429d67694ef1adec93c25327239af5fd04a3e.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `784ecab95ef493db2cd246f0ba7e6b0a2555bccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
