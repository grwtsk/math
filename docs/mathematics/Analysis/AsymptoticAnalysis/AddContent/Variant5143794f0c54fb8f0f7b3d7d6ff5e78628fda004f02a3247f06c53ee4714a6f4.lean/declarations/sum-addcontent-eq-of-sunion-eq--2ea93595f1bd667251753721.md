# sum_addContent_eq_of_sUnion_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b38d613-5974-a1a2-057a-28708546d651",
  "kind": "theorem",
  "lexical_name": "sum_addContent_eq_of_sUnion_eq",
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
  "slug": "sum-addcontent-eq-of-sunion-eq--2ea93595f1bd667251753721",
  "source": {
    "blob": "b5d77c88c308407f1310d1dd0106b3c4ed916648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 197,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ea93595f1bd667251753721002ba938cfd25f78605f4af7d8c9faae378d996c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b38d613-5974-a1a2-057a-28708546d651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_addContent_eq_of_sUnion_eq (hC : IsSetSemiring C) (J J' : Finset (Set α))
    (hJ : ↑J ⊆ C) (hJdisj : PairwiseDisjoint (J : Set (Set α)) id)
    (hJ' : ↑J' ⊆ C) (hJ'disj : PairwiseDisjoint (J' : Set (Set α)) id)
    (h : ⋃₀ (J : Set (Set α)) = ⋃₀ J') :
    ∑ s ∈ J, m s = ∑ t ∈ J', m t := by
  calc ∑ s ∈ J, m s
  _ = ∑ s ∈ J, (∑ t ∈ J', m (s ∩ t)) := by
    apply Finset.sum_congr rfl (fun s hs ↦ ?_)
    have : s = ⋃ t ∈ J', s ∩ t := by
      simp_rw [← Finset.set_biUnion_coe, ← inter_iUnion, left_eq_inter, ← sUnion_eq_biUnion, ← h]
      exact subset_sUnion_of_mem hs
    nth_rewrite 1 [this]
    apply addContent_biUnion
    · exact fun t ht ↦ hC.inter_mem _ (hJ hs) _ (hJ' ht)
    · exact hJ'disj.mono fun _ ↦ by simp
    · rw [← this]
      exact hJ hs
  _ = ∑ t ∈ J', (∑ s ∈ J, m (s ∩ t)) := sum_comm
  _ = ∑ t ∈ J', m t := by
    apply Finset.sum_congr rfl (fun t ht ↦ ?_)
    have : t = ⋃ s ∈ J, s ∩ t := by
      simp_rw [← Finset.set_biUnion_coe, ← iUnion_inter, right_eq_inter, ← sUnion_eq_biUnion, h]
      exact subset_sUnion_of_mem ht
    nth_rewrite 2 [this]
    apply (addContent_biUnion _ _ _).symm
    · exact fun s hs ↦ hC.inter_mem _ (hJ hs) _ (hJ' ht)
    · exact hJdisj.mono fun _ ↦ by simp
    · rw [← this]
      exact hJ' ht

open scoped Classical in
/-- Extend a content over `C` to the finite unions of elements of `C` by additivity.
Use instead `AddContent.supClosure` which is the same function bundled as an `AddContent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AddContent/Variant5143794f0c54fb8f0f7b3d7d6ff5e78628fda004f02a3247f06c53ee4714a6f4.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d77c88c308407f1310d1dd0106b3c4ed916648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
