# unit_mem_mul_iff_mem_swap_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 228,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72f8e80c-5860-f361-80e5-59c92551d901",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:190655aa-55b0-c72c-731d-a542bb28fce5",
  "kind": "theorem",
  "lexical_name": "unit_mem_mul_iff_mem_swap_mul",
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
  "slug": "unit-mem-mul-iff-mem-swap-mul--0705c61ff7b7fe4d4e35a76a",
  "source": {
    "blob": "948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 228,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0705c61ff7b7fe4d4e35a76a334a7ce5c2528f87879d1538b61271cd20784fc1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190655aa-55b0-c72c-731d-a542bb28fce5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_mem_mul_iff_mem_swap_mul {a b : A} {r : Rˣ} : ↑r ∈ σ (a * b) ↔ ↑r ∈ σ (b * a) := by
  have h₁ : ∀ x y : A, IsUnit (1 - x * y) → IsUnit (1 - y * x) := by
    refine' fun x y h => ⟨⟨1 - y * x, 1 + y * h.unit.inv * x, _, _⟩, rfl⟩
    calc
      (1 - y * x) * (1 + y * (IsUnit.unit h).inv * x) =
          1 - y * x + y * ((1 - x * y) * h.unit.inv) * x :=
        by noncomm_ring
      _ = 1 := by simp only [Units.inv_eq_val_inv, IsUnit.mul_val_inv, mul_one, sub_add_cancel]
    calc
      (1 + y * (IsUnit.unit h).inv * x) * (1 - y * x) =
          1 - y * x + y * (h.unit.inv * (1 - x * y)) * x :=
        by noncomm_ring
      _ = 1 := by simp only [Units.inv_eq_val_inv, IsUnit.val_inv_mul, mul_one, sub_add_cancel]
  have := Iff.intro (h₁ (r⁻¹ • a) b) (h₁ b (r⁻¹ • a))
  rw [mul_smul_comm r⁻¹ b a] at this
  simpa only [mem_iff, not_iff_not, Algebra.algebraMap_eq_smul_one, ← Units.smul_def,
    IsUnit.smul_sub_iff_sub_inv_smul, smul_mul_assoc]
#align spectrum.unit_mem_mul_iff_mem_swap_mul spectrum.unit_mem_mul_iff_mem_swap_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
