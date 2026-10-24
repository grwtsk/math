# integral_inv_four_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83746f54-b67d-16e0-6e1f-d38abdd5453b",
  "kind": "lemma",
  "lexical_name": "integral_inv_four_Icc",
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
  "slug": "integral-inv-four-icc--44823570ffe453c0aabe984f",
  "source": {
    "blob": "5a2dfb3fad088726b01abcb82c2ac6476be54467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 115,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44823570ffe453c0aabe984f69062a54c2ed1705085d0e22d984bdae5e45efad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83746f54-b67d-16e0-6e1f-d38abdd5453b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_inv_four_Icc {a b c : ℝ} (hab : a ≤ b) (hc : c < a ∨ b < c) :
    ∫ u in Set.Icc a b, ((u - c) ^ 4)⁻¹ = ((a - c) ^ (3:ℕ))⁻¹ / 3 - ((b - c) ^ (3:ℕ))⁻¹ / 3 := by
  have h0 : (0:ℝ) ∉ Set.uIcc (a - c) (b - c) := by
    rw [Set.mem_uIcc]
    rcases hc with hc | hc
    · push Not; constructor <;> intro <;> nlinarith
    · push Not; constructor <;> intro <;> nlinarith
  rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hab]
  have e1 : ∀ u : ℝ, ((u - c) ^ 4)⁻¹ = (u - c) ^ (-4 : ℤ) := by
    intro u; rw [zpow_neg]; norm_cast
  simp_rw [e1]
  rw [intervalIntegral.integral_comp_sub_right (fun x => x ^ (-4:ℤ)) c,
    integral_zpow (Or.inr ⟨by norm_num, h0⟩)]
  norm_num [zpow_neg]
  norm_cast
  push_cast
  set A := ((b - c) ^ (3:ℕ))⁻¹
  set B := ((a - c) ^ (3:ℕ))⁻¹
  linarith

omit [Fintype ι] [DecidableEq ι] in
/-- Closed-interval version of the membership bounds (for use on closures `J t`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2dfb3fad088726b01abcb82c2ac6476be54467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
