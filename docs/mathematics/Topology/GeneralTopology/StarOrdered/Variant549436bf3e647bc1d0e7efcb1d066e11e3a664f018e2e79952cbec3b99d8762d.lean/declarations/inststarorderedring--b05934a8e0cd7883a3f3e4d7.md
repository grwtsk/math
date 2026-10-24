# instStarOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e21618902a5bc8dbc1e9a5410d5abcd037e61b6f89b9f8de9f8165f7d5a18ff2",
  "kind": "instance",
  "lexical_name": "instStarOrderedRing",
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
  "slug": "inststarorderedring--b05934a8e0cd7883a3f3e4d7",
  "source": {
    "blob": "fd9208dc2721913f04bd3568fd33c57b86ad0cf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b05934a8e0cd7883a3f3e4d7ef9333be44b62b33fe21d76bd431c65074bf3400",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e21618902a5bc8dbc1e9a5410d5abcd037e61b6f89b9f8de9f8165f7d5a18ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instStarOrderedRing {R : Type*}
    [TopologicalSpace R] [CommSemiring R] [PartialOrder R] [NoZeroDivisors R] [StarRing R]
    [StarOrderedRing R] [IsTopologicalSemiring R] [ContinuousStar R] [StarOrderedRing C(α, R)] :
    StarOrderedRing C(α, R)₀ where
  le_iff f g := by
    constructor
    · rw [le_def, ← ContinuousMap.coe_coe, ← ContinuousMap.coe_coe g, ← ContinuousMap.le_def,
        StarOrderedRing.le_iff]
      rintro ⟨p, hp_mem, hp⟩
      induction hp_mem using AddSubmonoid.closure_induction_left generalizing f g with
      | one => exact ⟨0, zero_mem _, by ext x; congrm($(hp) x)⟩
      | mul_left s s_mem p p_mem hp' =>
        obtain ⟨s, rfl⟩ := s_mem
        simp only at *
        have h₀ : (star s * s + p) 0 = 0 := by simpa using congr($(hp) 0).symm
        rw [← add_assoc] at hp
        have p'₀ : 0 ≤ p 0 := by rw [← StarOrderedRing.nonneg_iff] at p_mem; exact p_mem 0
        have s₉ : (star s * s) 0 = 0 := le_antisymm ((le_add_of_nonneg_right p'₀).trans_eq h₀)
          (star_mul_self_nonneg (s 0))
        have s₀' : s 0 = 0 := by aesop
        let s' : C(α, R)₀ := ⟨s, s₀'⟩
        obtain ⟨p', hp'_mem, rfl⟩ := hp' (f + star s' * s') g hp
        refine ⟨star s' * s' + p', ?_, by rw [add_assoc]⟩
        exact add_mem (AddSubmonoid.subset_closure ⟨s', rfl⟩) hp'_mem
    · rintro ⟨p, hp, rfl⟩
      induction hp using AddSubmonoid.closure_induction generalizing f with
      | mem s s_mem =>
        obtain ⟨s, rfl⟩ := s_mem
        exact fun x ↦ le_add_of_nonneg_right (star_mul_self_nonneg (s x))
      | one => simp
      | mul g₁ g₂ _ _ h₁ h₂ => calc
          f ≤ f + g₁ := h₁ f
          _ ≤ (f + g₁) + g₂ := h₂ (f + g₁)
          _ = f + (g₁ + g₂) := add_assoc _ _ _

end ContinuousMapZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd9208dc2721913f04bd3568fd33c57b86ad0cf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
