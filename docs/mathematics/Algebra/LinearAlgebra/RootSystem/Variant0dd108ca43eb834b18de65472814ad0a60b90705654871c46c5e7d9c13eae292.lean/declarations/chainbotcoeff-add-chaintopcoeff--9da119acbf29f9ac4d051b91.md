# chainBotCoeff_add_chainTopCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4312a1f-1b38-bc9b-7092-f61ce2767de4",
  "kind": "lemma",
  "lexical_name": "chainBotCoeff_add_chainTopCoeff",
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
  "slug": "chainbotcoeff-add-chaintopcoeff--9da119acbf29f9ac4d051b91",
  "source": {
    "blob": "547bf2d3648c86ddbd257c98d5b98845f730e703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da119acbf29f9ac4d051b9162b16a71b9c2a27953018b33c47268a2ee56c40b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4312a1f-1b38-bc9b-7092-f61ce2767de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chainBotCoeff_add_chainTopCoeff :
    chainBotCoeff α β + chainTopCoeff α β = chainLength α β := by
  by_cases hα : α.IsZero
  · rw [hα.eq, chainTopCoeff_zero, chainBotCoeff_zero, zero_add, chainLength_of_isZero α β hα]
  apply le_antisymm
  · rw [← Nat.le_sub_iff_add_le (chainTopCoeff_le_chainLength α β),
      ← not_lt, ← Nat.succ_le, chainBotCoeff, ← Weight.coe_neg]
    intro e
    apply genWeightSpace_nsmul_add_ne_bot_of_le _ _ e
    rw [← Nat.cast_smul_eq_nsmul ℤ, Nat.cast_succ, Nat.cast_sub (chainTopCoeff_le_chainLength α β),
      LieModule.Weight.coe_neg, smul_neg, ← neg_smul, neg_add_rev, neg_sub, sub_eq_neg_add,
      ← add_assoc, ← neg_add_rev, add_smul, add_assoc, ← coe_chainTop, neg_smul,
      ← @Nat.cast_one ℤ, ← Nat.cast_add, Nat.cast_smul_eq_nsmul]
    exact rootSpace_neg_nsmul_add_chainTop_of_lt α β hα (Nat.lt_succ_self _)
  · rw [← not_lt]
    intro e
    apply rootSpace_neg_nsmul_add_chainTop_of_le α β e
    rw [← Nat.succ_add, ← Nat.cast_smul_eq_nsmul ℤ, ← neg_smul, coe_chainTop, ← add_assoc,
      ← add_smul, Nat.cast_add, neg_add, add_assoc, neg_add_cancel, add_zero, neg_smul, ← smul_neg,
      Nat.cast_smul_eq_nsmul]
    exact genWeightSpace_chainTopCoeff_add_one_nsmul_add (-α) β (Weight.IsNonZero.neg hα)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `547bf2d3648c86ddbd257c98d5b98845f730e703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
