# coefficientProduct_le_polynomialRatio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:922f2c12-0968-e037-e82a-d2ffa1fde5f7",
  "kind": "theorem",
  "lexical_name": "coefficientProduct_le_polynomialRatio",
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
  "slug": "coefficientproduct-le-polynomialratio--b6aab3502c7359f5b100c9d6",
  "source": {
    "blob": "602400a08e5b8a7792355c50773dc002a04f3355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 69,
    "path": "GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6aab3502c7359f5b100c9d65fe2d5bd571e46ad05f2f2f8458561c4dfea5805",
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

Occurrence: `result:922f2c12-0968-e037-e82a-d2ffa1fde5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientProduct_le_polynomialRatio {K T h : ℝ} {m : ℕ}
    (hK : 0 ≤ K) (hT : 0 < T) (hh : 0 ≤ h)
    (hm : 2 * K ≤ (m : ℝ) * h) (n : ℕ) :
    coefficientProduct (fun j ↦ supplierCoefficient K (T + (j : ℝ) * h)) n ≤
      criticalFactor ^ n * ((T + (n : ℝ) * h) / T) ^ m := by
  induction n with
  | zero => simp [coefficientProduct, hT.ne']
  | succ n ih =>
    have hx : 0 < T + (n : ℝ) * h := by positivity
    have ha := supplierCoefficient_nonneg hK hx
    have hb := supplierCoefficient_le_polynomialRatio hx hh hm
    have hright : 0 ≤ criticalFactor ^ n * ((T + (n : ℝ) * h) / T) ^ m := by
      have hq := criticalFactor_pos
      positivity
    rw [coefficientProduct_succ]
    calc
      _ ≤ (criticalFactor ^ n * ((T + (n : ℝ) * h) / T) ^ m) *
          (criticalFactor * (((T + (n : ℝ) * h) + h) / (T + (n : ℝ) * h)) ^ m) :=
        mul_le_mul ih hb ha hright
      _ = criticalFactor ^ (n + 1) *
          (((T + (n : ℝ) * h) / T) *
            (((T + (n : ℝ) * h) + h) / (T + (n : ℝ) * h))) ^ m := by
        rw [pow_succ, mul_pow]
        ring
      _ = criticalFactor ^ (n + 1) * ((T + ((n + 1 : ℕ) : ℝ) * h) / T) ^ m := by
        congr 2
        push_cast
        field_simp
        ring

/-- The geometric factor cancels `exp (S/2)` exactly at the fixed shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SupplierCriticalDecay/Variant11c2d0543148930743d7389fb6060e486bd88d4f2d0b9ac3a5f745df67be831f.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602400a08e5b8a7792355c50773dc002a04f3355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
