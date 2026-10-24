# infEdist_thickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f443a810-0410-fc80-8df5-810c6aa18d34",
  "kind": "theorem",
  "lexical_name": "infEdist_thickening",
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
  "slug": "infedist-thickening--396bd7511f7e0d5e30db6074",
  "source": {
    "blob": "8d5475f5b8aa812720c499ff5b0479122ce5f9ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 249,
    "path": "GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:396bd7511f7e0d5e30db607429a60774a3e95829341ccdfc3b8d08bd2fd0c057",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f443a810-0410-fc80-8df5-810c6aa18d34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infEdist_thickening (hδ : 0 < δ) (s : Set E) (x : E) :
    infEdist x (thickening δ s) = infEdist x s - ENNReal.ofReal δ := by
  obtain hs | hs := lt_or_le (infEdist x s) (ENNReal.ofReal δ)
  · rw [infEdist_zero_of_mem, tsub_eq_zero_of_le hs.le]
    exact hs
  refine' (tsub_le_iff_right.2 infEdist_le_infEdist_thickening_add).antisymm' _
  refine' le_sub_of_add_le_right ofReal_ne_top _
  refine' le_infEdist.2 fun z hz => le_of_forall_lt' fun r h => _
  cases' r with r
  · exact add_lt_top.2 ⟨lt_top_iff_ne_top.2 <| infEdist_ne_top ⟨z, self_subset_thickening hδ _ hz⟩,
      ofReal_lt_top⟩
  have hr : 0 < ↑r - δ := by
    refine' sub_pos_of_lt _
    have := hs.trans_lt ((infEdist_le_edist_of_mem hz).trans_lt h)
    rw [ofReal_eq_coe_nnreal hδ.le, some_eq_coe] at this
    exact_mod_cast this
  rw [some_eq_coe, edist_lt_coe, ← dist_lt_coe, ← add_sub_cancel'_right δ ↑r] at h
  obtain ⟨y, hxy, hyz⟩ := exists_dist_lt_lt hr hδ h
  refine' (ENNReal.add_lt_add_right ofReal_ne_top <|
    infEdist_lt_iff.2 ⟨_, mem_thickening_iff.2 ⟨_, hz, hyz⟩, edist_lt_ofReal.2 hxy⟩).trans_le _
  rw [← ofReal_add hr.le hδ.le, sub_add_cancel, ofReal_coe_nnreal]
  exact le_rfl
#align inf_edist_thickening infEdist_thickening

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pointwise/Variantf0b0dc731a036867e39c95e44ffb710f733d462e76f7ba395f05018fa3f620ed.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5475f5b8aa812720c499ff5b0479122ce5f9ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
