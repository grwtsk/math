# Convex.centerMass_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff330a5a-7590-8823-e11b-aa8070769e76",
  "kind": "theorem",
  "lexical_name": "Convex.centerMass_mem",
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
  "slug": "convex-centermass-mem--23207d298942b48a9bdc4e88",
  "source": {
    "blob": "34df82812a2bb352a11a6900f202dd878c99807e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23207d298942b48a9bdc4e88db21bc24977dd84199b085df5521257f9c5e65e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff330a5a-7590-8823-e11b-aa8070769e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.centerMass_mem (hs : Convex R s) :
    (∀ i ∈ t, 0 ≤ w i) → (0 < ∑ i in t, w i) → (∀ i ∈ t, z i ∈ s) → t.centerMass w z ∈ s := by
  induction' t using Finset.induction with i t hi ht
  · simp [lt_irrefl]
  intro h₀ hpos hmem
  have zi : z i ∈ s := hmem _ (mem_insert_self _ _)
  have hs₀ : ∀ j ∈ t, 0 ≤ w j := fun j hj => h₀ j <| mem_insert_of_mem hj
  rw [sum_insert hi] at hpos
  by_cases hsum_t : ∑ j in t, w j = 0
  · have ws : ∀ j ∈ t, w j = 0 := (sum_eq_zero_iff_of_nonneg hs₀).1 hsum_t
    have wz : ∑ j in t, w j • z j = 0 := sum_eq_zero fun i hi => by simp [ws i hi]
    simp only [centerMass, sum_insert hi, wz, hsum_t, add_zero]
    simp only [hsum_t, add_zero] at hpos
    rw [← mul_smul, inv_mul_cancel (ne_of_gt hpos), one_smul]
    exact zi
  · rw [Finset.centerMass_insert _ _ _ hi hsum_t]
    refine' convex_iff_div.1 hs zi (ht hs₀ _ _) _ (sum_nonneg hs₀) hpos
    · exact lt_of_le_of_ne (sum_nonneg hs₀) (Ne.symm hsum_t)
    · intro j hj
      exact hmem j (mem_insert_of_mem hj)
    · exact h₀ _ (mem_insert_self _ _)
#align convex.center_mass_mem Convex.centerMass_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34df82812a2bb352a11a6900f202dd878c99807e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
