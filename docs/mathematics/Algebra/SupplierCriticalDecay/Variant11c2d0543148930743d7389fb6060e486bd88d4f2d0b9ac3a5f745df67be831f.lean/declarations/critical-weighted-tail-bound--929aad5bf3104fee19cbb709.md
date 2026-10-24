# critical_weighted_tail_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0954c433-c95a-009d-6dcf-1aa5233188b3",
  "kind": "theorem",
  "lexical_name": "critical_weighted_tail_bound",
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
  "slug": "critical-weighted-tail-bound--929aad5bf3104fee19cbb709",
  "source": {
    "blob": "602400a08e5b8a7792355c50773dc002a04f3355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 134,
    "path": "GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:929aad5bf3104fee19cbb709451e76ed9901480494265cdb6a8fe8c5f96fd4fd",
  "verification": {
    "reference": "docs/verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0954c433-c95a-009d-6dcf-1aa5233188b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_weighted_tail_bound {E : ℝ → ℝ} {K T C c : ℝ} {m n : ℕ}
    (hK : 0 ≤ K) (hT : 0 < T) (_hC : 0 ≤ C)
    (hm : 2 * K ≤ (m : ℝ) * criticalStep)
    (hE0 : 0 ≤ E (T + (n : ℝ) * criticalStep))
    (hE : E (T + (n : ℝ) * criticalStep) ≤
      C * Real.exp ((T + (n : ℝ) * criticalStep) / 2 -
        c * Real.sqrt (T + (n : ℝ) * criticalStep))) :
    coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * criticalStep)) n *
        E (T + (n : ℝ) * criticalStep) ≤
      (C * Real.exp (T / 2) / T ^ m) *
        ((T + (n : ℝ) * criticalStep) ^ m *
          Real.exp (-c * Real.sqrt (T + (n : ℝ) * criticalStep))) := by
  have hS : 0 < T + (n : ℝ) * criticalStep := by
    have hh := criticalStep_pos
    positivity
  have hp := coefficientProduct_le_polynomialRatio hK hT criticalStep_pos.le hm n
  have hright : 0 ≤ criticalFactor ^ n * ((T + (n : ℝ) * criticalStep) / T) ^ m := by
    have hh := criticalFactor_pos
    positivity
  apply (mul_le_mul hp hE hE0 hright).trans
  apply le_of_eq
  have he : (T + (n : ℝ) * criticalStep) / 2 -
      c * Real.sqrt (T + (n : ℝ) * criticalStep) =
      (T + (n : ℝ) * criticalStep) / 2 +
        (-c * Real.sqrt (T + (n : ℝ) * criticalStep)) := by ring
  rw [he, Real.exp_add, div_pow]
  calc
    _ = (C / T ^ m) *
        (criticalFactor ^ n * Real.exp ((T + (n : ℝ) * criticalStep) / 2)) *
        ((T + (n : ℝ) * criticalStep) ^ m *
          Real.exp (-c * Real.sqrt (T + (n : ℝ) * criticalStep))) := by ring
    _ = _ := by rw [critical_exponential_cancellation]; ring

/-- The original weighted tail vanishes from an explicit eventual classical
envelope bound.  The conclusion retains the full original coefficient product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602400a08e5b8a7792355c50773dc002a04f3355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
