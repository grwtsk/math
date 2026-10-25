# isAddUnit_detp_smul_mul_adjp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a65f457-5736-c64f-08c6-b220b752948a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edbd9f81-f516-a3c6-64ff-29926f2f0ae2",
  "kind": "theorem",
  "lexical_name": "isAddUnit_detp_smul_mul_adjp",
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
  "slug": "isaddunit-detp-smul-mul-adjp--790cc02562abf2765985c4cc",
  "source": {
    "blob": "1f6835dd606cf2b44811bda03edc4644595df1e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:790cc02562abf2765985c4cc0f42cbdd06ecde829e9e0bb483091caf4dc5f1e0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbd9f81-f516-a3c6-64ff-29926f2f0ae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAddUnit_detp_smul_mul_adjp (hAB : A * B = 1) :
    IsAddUnit (detp 1 A • (B * adjp (-1) B) + detp (-1) A • (B * adjp 1 B)) := by
  suffices h : ∀ {s t}, s ≠ t → IsAddUnit (detp s A • (B * adjp t B)) from
    (h (by decide)).add (h (by decide))
  intro s t h
  rw [isAddUnit_iff]
  intro i j
  simp_rw [smul_apply, smul_eq_mul, mul_apply, detp, adjp_apply, mul_sum, sum_mul,
    IsAddUnit.sum_iff]
  intro k hk σ hσ τ hτ
  rw [mem_filter] at hσ
  rw [mem_ofSign] at hσ hτ
  rw [← hσ.1, ← hτ, ← sign_inv] at h
  replace h := ne_of_apply_ne sign h
  rw [ne_eq, eq_comm, eq_inv_iff_mul_eq_one] at h
  obtain ⟨l, hl1, hl2⟩ := exists_ne_of_one_lt_card (one_lt_card_support_of_ne_one h) (τ⁻¹ j)
  rw [mem_support, ne_comm] at hl1
  rw [ne_eq, ← mem_singleton, ← mem_compl] at hl2
  rw [← prod_mul_prod_compl {τ⁻¹ j}, mul_mul_mul_comm, mul_comm, ← smul_eq_mul]
  apply IsAddUnit.smul_right
  have h0 : ∀ k, k ∈ ({τ⁻¹ j} : Finset n)ᶜ ↔ τ k ∈ ({j} : Finset n)ᶜ := by
    simp [inv_def, eq_symm_apply]
  rw [← prod_equiv τ h0 fun _ _ ↦ rfl, ← prod_mul_distrib, ← mul_prod_erase _ _ hl2, ← smul_eq_mul]
  exact (isAddUnit_mul hAB l (σ (τ l)) (τ l) hl1).smul_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant10321ea021dfb12565eb320bd060ae0158e351a19fcd60b6de4a0f34c0b21db9.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f6835dd606cf2b44811bda03edc4644595df1e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
