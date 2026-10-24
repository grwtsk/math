# toRealPositiveLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdc5d71e13fde2d0191bcb0d53c6303e150a7baff6dc4098d189fb8c3b0f20df",
  "kind": "def",
  "lexical_name": "toRealPositiveLinear",
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
  "slug": "torealpositivelinear--2b14832ee309c2bebc9d285a",
  "source": {
    "blob": "756663c8d2496bfcef23a2d7e7545579bcc4bdf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 807,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b14832ee309c2bebc9d285a9954e838e6cb0fe11d23b88bd1c8fe7aca7bce0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdc5d71e13fde2d0191bcb0d53c6303e150a7baff6dc4098d189fb8c3b0f20df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toRealPositiveLinear (Λ : C_c(α, ℝ≥0) →ₗ[ℝ≥0] ℝ≥0) : C_c(α, ℝ) →ₚ[ℝ] ℝ :=
  PositiveLinearMap.mk₀
    { toFun := fun f => Λ (nnrealPart f) - Λ (nnrealPart (- f))
      map_add' f g := by
        simp only [neg_add_rev]
        obtain ⟨h, hh⟩ := exists_add_nnrealPart_add_eq f g
        rw [← add_zero ((Λ (f + g).nnrealPart).toReal - (Λ (-g + -f).nnrealPart).toReal),
          ← sub_self (Λ h).toReal, sub_add_sub_comm, ← NNReal.coe_add, ← NNReal.coe_add,
          ← map_add, ← map_add, hh.1, add_comm (-g) (-f), hh.2]
        simp only [map_add, NNReal.coe_add]
        ring
      map_smul' a f := by
        rcases le_total 0 a with ha | ha
        · rw [RingHom.id_apply, smul_eq_mul, ← (smul_neg a f), nnrealPart_smul_pos f ha,
            nnrealPart_smul_pos (-f) ha]
          simp [sup_of_le_left ha, mul_sub]
        · simp only [RingHom.id_apply, smul_eq_mul, ← (smul_neg a f),
            nnrealPart_smul_neg f ha, nnrealPart_smul_neg (-f) ha, map_smul,
            NNReal.coe_mul, Real.coe_toNNReal', neg_neg, sup_of_le_left (neg_nonneg.mpr ha)]
          ring }
    (fun g hg ↦ by simp [nnrealPart_neg_eq_zero_of_nonneg hg])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variant837c41a87cf98259bb47805481d8f7b34bc7950b732d1c21014be063d7195fe3.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756663c8d2496bfcef23a2d7e7545579bcc4bdf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
