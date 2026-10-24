# actual_column_window_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:496576d0-7b78-da74-bdaf-ae868f44a4ba",
  "kind": "theorem",
  "lexical_name": "actual_column_window_nonempty",
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
  "slug": "actual-column-window-nonempty--215a332a696085e9646100f4",
  "source": {
    "blob": "468219a70e5a25ff0e592cc7a38a8aee05e21184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 306,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:215a332a696085e9646100f434770c14eae549ebee59403cc5a6de0c7159af9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:496576d0-7b78-da74-bdaf-ae868f44a4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_column_window_nonempty {A : ℝ} (hA : 1 ≤ A) :
    vaughanCutoff A + 1 ≤ sourceKernelCutoff A / (vaughanCutoff A + 1) := by
  let a := vaughanCutoff A + 1
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ha : (a : ℝ) < Real.exp A := by
    have hc : (a : ℝ) = (vaughanCutoff A : ℝ) + 1 := by simp [a]
    linarith [exp_gt_square_add_one hA]
  have hs : ((a * a : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    rw [Nat.cast_mul, show 2 * A = A + A by ring, Real.exp_add]
    nlinarith [show (0 : ℝ) ≤ (a : ℝ) from Nat.cast_nonneg a, Real.exp_pos A]
  have hN : a * a ≤ sourceKernelCutoff A :=
    (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 hs
  exact (Nat.le_div_iff_mul_le (by dsimp [a]; omega : 0 < a)).2 hN

/-- The full actual physical work converts for every real A at least one, without a new premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/482298b7eb81af058f9eSourceActualLogColumnTransport/Variant05506eb5524b21e52121fea041de5a06e0488b8586806b9b8c52b117656b4596.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `468219a70e5a25ff0e592cc7a38a8aee05e21184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
