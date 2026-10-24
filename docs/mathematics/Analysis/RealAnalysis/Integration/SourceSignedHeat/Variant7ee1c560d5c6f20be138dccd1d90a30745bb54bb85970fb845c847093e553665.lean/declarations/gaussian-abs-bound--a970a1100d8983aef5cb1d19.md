# gaussian_abs_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cac6ac4-616e-1184-af6e-bdf82394871c",
  "kind": "theorem",
  "lexical_name": "gaussian_abs_bound",
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
  "slug": "gaussian-abs-bound--a970a1100d8983aef5cb1d19",
  "source": {
    "blob": "bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a970a1100d8983aef5cb1d19687096d87d1f68d03dca8be3d078e84411f22456",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cac6ac4-616e-1184-af6e-bdf82394871c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussian_abs_bound (x : ℝ) {τ : ℝ} (hτ : 0 < τ) :
    |x * Real.exp (-τ * x ^ 2)| ≤ terminalCap τ := by
  have hd : 0 < 2 * Real.exp 1 * τ := by positivity
  have he := Real.mul_exp_neg_le_exp_neg_one (2 * τ * x ^ 2)
  have hsq : (x * Real.exp (-τ * x ^ 2)) ^ 2 ≤ 1 / (2 * Real.exp 1 * τ) := by
    have hexp : Real.exp (-τ * x ^ 2) ^ 2 = Real.exp (-(2 * τ * x ^ 2)) := by
      rw [sq, ← Real.exp_add]
      congr 1
      ring
    rw [mul_pow, hexp]
    apply (le_div_iff₀ hd).mpr
    have he' := mul_le_mul_of_nonneg_right he (Real.exp_pos 1).le
    rw [Real.exp_neg (1 : ℝ), inv_mul_cancel₀ (Real.exp_ne_zero 1)] at he'
    nlinarith
  have hroot : (terminalCap τ) ^ 2 = 1 / (2 * Real.exp 1 * τ) := by
    unfold terminalCap
    rw [div_pow, one_pow, Real.sq_sqrt hd.le]
  have hc : 0 ≤ terminalCap τ := by unfold terminalCap; positivity
  apply (sq_le_sq₀ (abs_nonneg _) hc).mp
  rw [sq_abs, hroot]
  exact hsq

/-- The normalized odd heat terminal bound retains the source sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Variant7ee1c560d5c6f20be138dccd1d90a30745bb54bb85970fb845c847093e553665.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf8f6c2db3fb46458c0b91d50e6c7c38d01dce79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
