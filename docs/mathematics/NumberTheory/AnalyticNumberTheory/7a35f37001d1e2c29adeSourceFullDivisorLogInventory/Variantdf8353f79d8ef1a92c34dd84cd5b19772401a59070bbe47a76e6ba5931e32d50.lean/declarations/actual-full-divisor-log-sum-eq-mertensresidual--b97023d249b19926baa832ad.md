# actual_full_divisor_log_sum_eq_mertensResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f31545fd-0712-e37a-f74d-6bfdd189f73d",
  "kind": "theorem",
  "lexical_name": "actual_full_divisor_log_sum_eq_mertensResidual",
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
  "slug": "actual-full-divisor-log-sum-eq-mertensresidual--b97023d249b19926baa832ad",
  "source": {
    "blob": "aecb2aa5253778e26a05be92e95feeeaf9833158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b97023d249b19926baa832ad85402e2c2b66386ad1e9b1154f939eaf4c2b534f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f31545fd-0712-e37a-f74d-6bfdd189f73d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_divisor_log_sum_eq_mertensResidual (A : ℝ) (hA : 1 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      (∑ m ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) (m : ℝ))) =
        mertensResidual A := by
  rw [mertensResidual_eq_full_mobius_sum A hA]
  apply Finset.sum_congr rfl
  intro d hd
  have hdp : 0 < (d : ℝ) := by
    exact_mod_cast (by have := (Finset.mem_Icc.mp hd).1; omega : 0 < d)
  rw [sourceMobiusKernel_eq_actual_logProfile_sum A (d : ℝ) hdp]

/-- Exact moving split; equality d=U belongs to the complete short sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecb2aa5253778e26a05be92e95feeeaf9833158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
