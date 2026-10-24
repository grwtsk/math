# commutes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba9b4b0e-f407-7b47-e653-11ddc94861aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc6242e3-3843-5469-275f-092382d4a849",
  "kind": "lemma",
  "lexical_name": "commutes",
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
  "slug": "commutes--433177ada6d36e279b40fe8d",
  "source": {
    "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 379,
    "path": "GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:433177ada6d36e279b40fe8db0f8fb84932e5df5cae14475023942df5a1ae926",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc6242e3-3843-5469-275f-092382d4a849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma commutes (S₁ S₂ T : Type*) [CommSemiring S₁]
    [CommSemiring S₂] [CommSemiring T] [Algebra R S₁] [Algebra R S₂] [Algebra R T] [Algebra S₁ T]
    [Algebra S₂ T] [IsScalarTower R S₁ T] [IsScalarTower R S₂ T] (M₁ M₂ : Submonoid R)
    [IsLocalization M₁ S₁] [IsLocalization M₂ S₂]
    [IsLocalization (Algebra.algebraMapSubmonoid S₂ M₁) T] :
    IsLocalization (Algebra.algebraMapSubmonoid S₁ M₂) T where
  map_units := by
    rintro ⟨m, ⟨a, ha, rfl⟩⟩
    rw [← IsScalarTower.algebraMap_apply, IsScalarTower.algebraMap_apply R S₂ T]
    exact IsUnit.map _ (IsLocalization.map_units _ ⟨a, ha⟩)
  surj a := by
    obtain ⟨⟨y, -, m, hm, rfl⟩, hy⟩ := surj (M := Algebra.algebraMapSubmonoid S₂ M₁) a
    rw [← IsScalarTower.algebraMap_apply, IsScalarTower.algebraMap_apply R S₁ T] at hy
    obtain ⟨⟨z, n, hn⟩, hz⟩ := IsLocalization.surj (M := M₂) y
    have hunit : IsUnit (algebraMap R S₁ m) := map_units _ ⟨m, hm⟩
    use ⟨algebraMap R S₁ z * hunit.unit⁻¹, ⟨algebraMap R S₁ n, n, hn, rfl⟩⟩
    rw [map_mul, ← IsScalarTower.algebraMap_apply, IsScalarTower.algebraMap_apply R S₂ T]
    conv_rhs => rw [← IsScalarTower.algebraMap_apply]
    rw [IsScalarTower.algebraMap_apply R S₂ T, ← hz, map_mul, ← hy]
    convert_to _ = a * (algebraMap S₂ T) ((algebraMap R S₂) n) *
        (algebraMap S₁ T) (((algebraMap R S₁) m) * hunit.unit⁻¹.val)
    · rw [map_mul]
      ring
    simp
  exists_of_eq {x y} hxy := by
    obtain ⟨r, s, d, hr, hs⟩ := IsLocalization.surj₂ M₁ S₁ x y
    apply_fun (· * algebraMap S₁ T (algebraMap R S₁ d)) at hxy
    simp_rw [← map_mul, hr, hs, ← IsScalarTower.algebraMap_apply,
      IsScalarTower.algebraMap_apply R S₂ T] at hxy
    obtain ⟨⟨-, c, hmc, rfl⟩, hc⟩ := exists_of_eq (M := Algebra.algebraMapSubmonoid S₂ M₁) hxy
    simp_rw [← map_mul] at hc
    obtain ⟨a, ha⟩ := IsLocalization.exists_of_eq (M := M₂) hc
    use ⟨algebraMap R S₁ a, a, a.property, rfl⟩
    apply (map_units S₁ d).mul_right_cancel
    rw [mul_assoc, hr, mul_assoc, hs]
    apply (map_units S₁ ⟨c, hmc⟩).mul_right_cancel
    rw [← map_mul, ← map_mul, mul_assoc, mul_comm _ c, ha, map_mul, map_mul]
    ring

variable (Rₘ Sₙ Rₘ' Sₙ' : Type*) [CommSemiring Rₘ] [CommSemiring Sₙ] [CommSemiring Rₘ']
  [CommSemiring Sₙ'] [Algebra R Rₘ] [Algebra S Sₙ] [Algebra R Rₘ'] [Algebra S Sₙ'] [Algebra R Sₙ]
  [Algebra Rₘ Sₙ] [Algebra Rₘ' Sₙ'] [Algebra R Sₙ'] (N : Submonoid S) [IsLocalization M Rₘ]
  [IsLocalization N Sₙ] [IsLocalization M Rₘ'] [IsLocalization N Sₙ'] [IsScalarTower R Rₘ Sₙ]
  [IsScalarTower R S Sₙ] [IsScalarTower R Rₘ' Sₙ'] [IsScalarTower R S Sₙ']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8767d1701d07bd76ecfeb5459c51d21566a06b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
