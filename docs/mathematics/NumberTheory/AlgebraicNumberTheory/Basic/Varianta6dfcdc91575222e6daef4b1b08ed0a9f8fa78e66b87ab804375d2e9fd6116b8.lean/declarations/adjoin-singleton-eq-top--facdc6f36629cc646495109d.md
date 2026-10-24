# adjoin_singleton_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 768,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e8c99c2-7ed3-a209-d584-77f2dd9c8198",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42f0c5c3-3a0a-d392-95c1-7426638d0ce7",
  "kind": "theorem",
  "lexical_name": "adjoin_singleton_eq_top",
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
  "slug": "adjoin-singleton-eq-top--facdc6f36629cc646495109d",
  "source": {
    "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 768,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:facdc6f36629cc646495109d7eba98b595792d2e1603bd33249b86023b51108d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42f0c5c3-3a0a-d392-95c1-7426638d0ce7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_singleton_eq_top [hK : IsCyclotomicExtension {n} ℚ K]
    {ζ : K} (hζ : IsPrimitiveRoot ζ n) :
    ℤ[hζ.toInteger] = ⊤ := by
  have : NumberField K := IsCyclotomicExtension.numberField {n} ℚ K
  induction n using Nat.recOnPrimeCoprime generalizing K hn with
  | zero => exact (neZero_zero_iff_false.mp hn).elim
  | prime_pow p k hp =>
    have : Fact (p.Prime) := ⟨hp⟩
    rw [← hζ.integralPowerBasisOfPrimePow.adjoin_gen_eq_top, hζ.integralPowerBasisOfPrimePow_gen]
  | coprime n₁ n₂ hn₁ hn₂ h hK₁ hK₂ =>
    have : NeZero n₁ := NeZero.of_gt hn₁
    have : NeZero n₂ := NeZero.of_gt hn₂
    have hζ₁ := hζ.pow (NeZero.pos _) (a := n₂) (b := n₁) (by rw [mul_comm])
    have := hζ₁.intermediateField_adjoin_isCyclotomicExtension ℚ
    replace hζ₁ : IsPrimitiveRoot (AdjoinSimple.gen ℚ (ζ ^ n₂)) n₁ :=
      IsPrimitiveRoot.coe_submonoidClass_iff.mp hζ₁
    replace hK₁ := @hK₁ ℚ⟮ζ ^ n₂⟯ _ _ _ _ (AdjoinSimple.gen _ _) hζ₁ (of_intermediateField _)
    have hζ₂ := hζ.pow (NeZero.pos _) (a := n₁) (b := n₂) rfl
    have := hζ₂.intermediateField_adjoin_isCyclotomicExtension ℚ
    replace hζ₂ : IsPrimitiveRoot (AdjoinSimple.gen ℚ (ζ ^ n₁)) n₂ :=
      IsPrimitiveRoot.coe_submonoidClass_iff.mp hζ₂
    replace hK₂ := @hK₂ ℚ⟮ζ ^ n₁⟯ _ _ _ _ (AdjoinSimple.gen _ _) hζ₂ (of_intermediateField _)
    have h_top : ℚ⟮ζ ^ n₂⟯ ⊔ ℚ⟮ζ ^ n₁⟯ = ⊤ := by
      have : IsCyclotomicExtension {n₁ * n₂} ℚ (⊤ : IntermediateField ℚ K) :=
          hK.equiv _ _ _ topEquiv.symm
      have : IsCyclotomicExtension {n₁ * n₂} ℚ ↥(ℚ⟮ζ ^ n₂⟯ ⊔ ℚ⟮ζ ^ n₁⟯) := by
        rw [← Nat.Coprime.lcm_eq_mul h]
        exact isCyclotomicExtension_lcm_sup ℚ K n₁ n₂ ℚ⟮ζ ^ n₂⟯ ℚ⟮ζ ^ n₁⟯
      exact isCyclotomicExtension_eq {n₁ * n₂} ℚ K _ _
    exact adjoin_singleton_eq_top_aux K ℚ⟮ζ ^ n₂⟯ ℚ⟮ζ ^ n₁⟯ hζ₁ hK₁ hζ₂ hK₂ h h_top hζ

set_option backward.isDefEq.respectTransparency.types false in
open Algebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1515299068de52e564fca7761d2e32e313e5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
