# isMultiplyPretransitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f97a897abd8566b57100c83b2eb417120a055962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 351,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53e0f756-ba7b-4710-9ddc-2d5f26f9beb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06901e6e-dd97-85f5-b285-5acfc27833b6",
  "kind": "theorem",
  "lexical_name": "isMultiplyPretransitive",
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
  "slug": "ismultiplypretransitive--2d746667cec8d824bae98379",
  "source": {
    "blob": "f97a897abd8566b57100c83b2eb417120a055962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 351,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d746667cec8d824bae9837934c4c0f88fcc839fdfbad0adfd3e25b97bff21b1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06901e6e-dd97-85f5-b285-5acfc27833b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplyPretransitive [IsPretransitive G α] {n : ℕ} {a : α} :
    IsMultiplyPretransitive G α n.succ ↔
      IsMultiplyPretransitive (stabilizer G a) (SubMulAction.ofStabilizer G a) n := by
  refine ⟨fun hn ↦ ⟨fun x y ↦ ?_⟩, fun hn ↦ ⟨fun x y ↦ ?_⟩⟩
  · obtain ⟨g, hgxy⟩ := exists_smul_eq G (ofStabilizer.snoc x) (ofStabilizer.snoc y)
    have hg : g ∈ stabilizer G a := by
      rw [DFunLike.ext_iff] at hgxy
      convert! hgxy (last n)
      simp [ofStabilizer.snoc_last]
    use ⟨g, hg⟩
    ext i
    simp only [smul_apply, SubMulAction.val_smul_of_tower, subgroup_smul_def]
    rw [← ofStabilizer.snoc_castSucc x, ← smul_apply, hgxy, ofStabilizer.snoc_castSucc]
  · -- gx • x = x1 :: a
    obtain ⟨gx, x1, hgx⟩ := exists_smul_of_last_eq G a x
    -- gy • y = y1 :: a
    obtain ⟨gy, y1, hgy⟩ := exists_smul_of_last_eq G a y
    -- g • x1 = y1,
    obtain ⟨g, hg⟩ := hn.exists_smul_eq x1 y1
    use gy⁻¹ * g * gx
    ext i
    simp only [mul_smul, smul_apply, inv_smul_eq_iff]
    simp only [← smul_apply _ _ i, hgy, hgx]
    simp only [smul_apply]
    rcases Fin.eq_castSucc_or_eq_last i with ⟨i, rfl⟩ | ⟨rfl⟩
    · simp [ofStabilizer.snoc_castSucc, ← hg, SetLike.val_smul, subgroup_smul_def]
    · simp only [ofStabilizer.snoc_last, ← hg]
      exact g.prop

end ofStabilizer

namespace ofFixingSubgroup

variable {G α : Type*} [Group G] [MulAction G α]

variable (G) in
/-- The `fixingSubgroup` of a finite subset of cardinal `d`
in an `n`-transitive action acts `n-d`-transitively on the complement. -/
@[to_additive /-- The `fixingSubgroup` of a finite subset of cardinal `d`
in an `n`-transitive additive action acts `n-d`-transitively on the complement. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97a897abd8566b57100c83b2eb417120a055962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
