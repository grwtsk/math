# IsPretransitive.isPretransitive_ofFixingSubgroup_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69bb02b7-b656-5cb9-89c5-9216dbe368cc",
  "kind": "theorem",
  "lexical_name": "IsPretransitive.isPretransitive_ofFixingSubgroup_inter",
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
  "slug": "ispretransitive-ispretransitive-offixingsubgroup-inter--1071694a839a8c574b44624b",
  "source": {
    "blob": "0d17cebbd1ad711b2841d05d79ff69b9818206f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 479,
    "path": "GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1071694a839a8c574b44624bb619590454592d11e4ae423bf99bf333b930aaca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69bb02b7-b656-5cb9-89c5-9216dbe368cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPretransitive.isPretransitive_ofFixingSubgroup_inter
    (hs : IsPretransitive (fixingSubgroup M s) (ofFixingSubgroup M s))
    {g : M} (ha : s ∪ g • s ≠ ⊤) :
    IsPretransitive (fixingSubgroup M (s ∩ g • s)) (ofFixingSubgroup M (s ∩ g • s)) := by
  rw [Ne, Set.top_eq_univ, ← Set.compl_empty_iff, ← Ne, ← Set.nonempty_iff_ne_empty] at ha
  obtain ⟨a, ha⟩ := ha
  rw [Set.compl_union] at ha
  have ha' : a ∈ (s ∩ g • s)ᶜ := by
    rw [Set.compl_inter]
    exact Set.mem_union_left _ ha.1
  rw [MulAction.isPretransitive_iff_base (⟨a, ha'⟩ : ofFixingSubgroup M (s ∩ g • s))]
  rintro ⟨x, hx⟩
  rw [mem_ofFixingSubgroup_iff, Set.mem_inter_iff, not_and_or] at hx
  rcases hx with hx | hx
  · obtain ⟨⟨k, hk⟩, hkax⟩ := hs.exists_smul_eq ⟨a, ha.1⟩ ⟨x, hx⟩
    use ⟨k, fun ⟨y, hy⟩ ↦ hk ⟨y, hy.1⟩⟩
    rwa [Subtype.ext_iff] at hkax ⊢
  · have hg'x : g⁻¹ • x ∈ ofFixingSubgroup M s := mt Set.mem_smul_set_iff_inv_smul_mem.mpr hx
    have hg'a : g⁻¹ • a ∈ ofFixingSubgroup M s := mt Set.mem_smul_set_iff_inv_smul_mem.mpr ha.2
    obtain ⟨⟨k, hk⟩, hkax⟩ := hs.exists_smul_eq ⟨g⁻¹ • a, hg'a⟩ ⟨g⁻¹ • x, hg'x⟩
    use ⟨g * k * g⁻¹, ?_⟩
    · simp only [← SetLike.coe_eq_coe] at hkax ⊢
      rwa [SetLike.val_smul, Subgroup.mk_smul, eq_inv_smul_iff, smul_smul, smul_smul] at hkax
    · rw [mem_fixingSubgroup_iff] at hk ⊢
      intro y hy
      rw [mul_smul, mul_smul, smul_eq_iff_eq_inv_smul g]
      exact hk _ (Set.mem_smul_set_iff_inv_smul_mem.mp hy.2)

/-- A primitivity criterion -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variantc6e3d1b400480c90531b51d478a18a9d12d4a43c0104a1255260c93215e5fab4.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d17cebbd1ad711b2841d05d79ff69b9818206f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
