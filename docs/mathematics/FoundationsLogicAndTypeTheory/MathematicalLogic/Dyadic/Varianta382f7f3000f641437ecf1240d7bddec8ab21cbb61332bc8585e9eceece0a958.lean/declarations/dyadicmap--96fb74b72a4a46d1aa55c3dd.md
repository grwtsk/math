# dyadicMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12302ff8584716ff74dd87c10fb8c9d2c5c0fccdd17e9ef970c23cacfcd9238e",
  "kind": "def",
  "lexical_name": "dyadicMap",
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
  "slug": "dyadicmap--96fb74b72a4a46d1aa55c3dd",
  "source": {
    "blob": "c55be7bd19f710dc67e6385202a768e2c112b8a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96fb74b72a4a46d1aa55c3dd21727c5b2f448e7553c09fbaf06330eeddd2a8cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12302ff8584716ff74dd87c10fb8c9d2c5c0fccdd17e9ef970c23cacfcd9238e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dyadicMap : Localization.Away (2 : ℤ) →+ Surreal where
  toFun x :=
    (Localization.liftOn x fun x y => x • powHalf (Submonoid.log y)) <| by
      intro m₁ m₂ n₁ n₂ h₁
      obtain ⟨⟨n₃, y₃, hn₃⟩, h₂⟩ := Localization.r_iff_exists.mp h₁
      simp only [Subtype.coe_mk, mul_eq_mul_left_iff] at h₂
      cases h₂
      · obtain ⟨a₁, ha₁⟩ := n₁.prop
        obtain ⟨a₂, ha₂⟩ := n₂.prop
        simp only at ha₁ ha₂ ⊢
        have hn₁ : n₁ = Submonoid.pow 2 a₁ := Subtype.ext ha₁.symm
        have hn₂ : n₂ = Submonoid.pow 2 a₂ := Subtype.ext ha₂.symm
        have h₂ : 1 < (2 : ℤ).natAbs := one_lt_two
        rw [hn₁, hn₂, Submonoid.log_pow_int_eq_self h₂, Submonoid.log_pow_int_eq_self h₂]
        apply dyadic_aux
        rwa [ha₁, ha₂, mul_comm, mul_comm m₂]
      · have : (1 : ℤ) ≤ 2 ^ y₃ := by exact_mod_cast Nat.one_le_pow y₃ 2 Nat.succ_pos'
        linarith
  map_zero' := Localization.liftOn_zero _ _
  map_add' x y :=
    Localization.induction_on₂ x y <| by
      rintro ⟨a, ⟨b, ⟨b', rfl⟩⟩⟩ ⟨c, ⟨d, ⟨d', rfl⟩⟩⟩
      have h₂ : 1 < (2 : ℤ).natAbs := one_lt_two
      have hpow₂ := Submonoid.log_pow_int_eq_self h₂
      simp_rw [Submonoid.pow_apply] at hpow₂
      simp_rw [Localization.add_mk, Localization.liftOn_mk,
        Submonoid.log_mul (Int.pow_right_injective h₂), hpow₂]
      calc
        (2 ^ b' * c + 2 ^ d' * a) • powHalf (b' + d') =
            (c * 2 ^ b') • powHalf (b' + d') + (a * 2 ^ d') • powHalf (d' + b') := by
          simp only [add_smul, mul_comm, add_comm]
        _ = c • powHalf d' + a • powHalf b' := by simp only [zsmul_pow_two_powHalf]
        _ = a • powHalf b' + c • powHalf d' := add_comm _ _
#align surreal.dyadic_map Surreal.dyadicMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Varianta382f7f3000f641437ecf1240d7bddec8ab21cbb61332bc8585e9eceece0a958.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c55be7bd19f710dc67e6385202a768e2c112b8a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
