# norm_sum_stdAddChar_neg_Ico_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a106a52-3a65-6351-42a1-b08c371b0447",
  "kind": "theorem",
  "lexical_name": "norm_sum_stdAddChar_neg_Ico_le",
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
  "slug": "norm-sum-stdaddchar-neg-ico-le--6b20a9d9fa13efd9c68f7b3c",
  "source": {
    "blob": "96930379e6ff23ebff52da0230b72ab22ad95d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 58,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b20a9d9fa13efd9c68f7b3cb389a29445df182dc92d49cc138dfdb9a4f28d9c",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a106a52-3a65-6351-42a1-b08c371b0447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sum_stdAddChar_neg_Ico_le (t : ZMod q) (A B : ℕ)
    (hA : 1 ≤ A) (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        ZMod.stdAddChar (-((n : ZMod q) * t))‖ ≤
      2 * ‖(ZMod.stdAddChar t - 1)⁻¹‖ := by
  by_cases hAB : A ≤ B
  · have hm : ZMod.stdAddChar t - 1 ≠ 0 := by
      intro h
      apply ht
      apply ZMod.injective_stdAddChar
      simpa using sub_eq_zero.mp h
    have hid := stdAddChar_neg_Ico_mul t A B hA hAB
    have hrewrite :
        (∑ n ∈ Finset.Ico A B,
          ZMod.stdAddChar (-((n : ZMod q) * t))) =
        (ZMod.stdAddChar t - 1)⁻¹ *
          (ZMod.stdAddChar (-(((A - 1 : ℕ) : ZMod q) * t)) -
            ZMod.stdAddChar (-(((B - 1 : ℕ) : ZMod q) * t))) := by
      calc
        _ = ((ZMod.stdAddChar t - 1)⁻¹ *
              (ZMod.stdAddChar t - 1)) *
            (∑ n ∈ Finset.Ico A B,
              ZMod.stdAddChar (-((n : ZMod q) * t))) := by
          rw [inv_mul_cancel₀ hm, one_mul]
        _ = (ZMod.stdAddChar t - 1)⁻¹ *
            ((ZMod.stdAddChar t - 1) *
              (∑ n ∈ Finset.Ico A B,
                ZMod.stdAddChar (-((n : ZMod q) * t)))) := by
          rw [mul_assoc]
        _ = _ := by rw [hid]
    have hnorm (n : ℕ) :
        ‖ZMod.stdAddChar (-((n : ZMod q) * t))‖ = 1 := by
      exact Circle.norm_coe (ZMod.toCircle (-((n : ZMod q) * t)))
    rw [hrewrite, norm_mul]
    calc
      _ ≤ ‖(ZMod.stdAddChar t - 1)⁻¹‖ *
          (‖ZMod.stdAddChar (-(((A - 1 : ℕ) : ZMod q) * t))‖ +
            ‖ZMod.stdAddChar (-(((B - 1 : ℕ) : ZMod q) * t))‖) :=
        mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
      _ = 2 * ‖(ZMod.stdAddChar t - 1)⁻¹‖ := by
        rw [hnorm, hnorm]
        ring
  · have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr (by omega)
    rw [hempty, Finset.sum_empty, norm_zero]
    exact mul_nonneg (by norm_num) (norm_nonneg _)

/-- At zero frequency the sum is its exact cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicInterval.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96930379e6ff23ebff52da0230b72ab22ad95d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
