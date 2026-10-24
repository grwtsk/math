# completion_energy_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52e0059d6f22783e7695e655955045203e164476",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ac7956f-cd4e-ec48-9fb9-fa06010f65d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "52e0059d6f22783e7695e655955045203e164476",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/Analysis/Asymptotics/FinitePrimeChainEnergyBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:944c4892-391c-ccdb-ad3f-241fb7e6d8ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b96c472-e478-c91d-8cd4-32426c4ecb13",
  "kind": "theorem",
  "lexical_name": "completion_energy_bound",
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
  "slug": "completion-energy-bound--b7a09774e9be941e8836d6c9",
  "source": {
    "blob": "52e0059d6f22783e7695e655955045203e164476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 43,
    "path": "GRWTSK/Analysis/Asymptotics/FinitePrimeChainEnergyBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7a09774e9be941e8836d6c92495f56ca0b13963f4f0bc0adc474020ad9102f3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence8692902b1e7e84a2d2ddee6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b96c472-e478-c91d-8cd4-32426c4ecb13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_energy_bound {T C₀ C₁ a q d H : ℝ}
    (hT : 0 ≤ T) (hC₀ : 0 ≤ C₀) (hC₁ : 0 ≤ C₁)
    (ha : 0 ≤ a) (hq : 0 ≤ q)
    (cert : AmortizedCompletion T C₀ C₁ a q d H) :
    energy T ≤ (Real.exp H*(C₀+C₁))*(1+T)^(d+a+q) := by
  let φ := fun j => sourceEnergy (cert.chain.states j) T+cert.reserve (cert.chain.states j)
  have hit := Cost.generalized_iteration φ cert.cost cert.debit
    cert.costNonnegative cert.debitNonnegative cert.step cert.chain.length
  have hinit : φ 0 ≤ C₀*(1+T)^a := by
    simpa [φ, cert.chain.initial] using cert.initialBudget
  have hbase : 1 ≤ 1+T := by linarith
  have haPow : (1+T)^a ≤ (1+T)^(a+q) :=
    Real.rpow_le_rpow_of_exponent_le hbase (by linarith)
  have hqPow : (1+T)^q ≤ (1+T)^(a+q) :=
    Real.rpow_le_rpow_of_exponent_le hbase (by linarith)
  have hbudget : φ 0+Cost.prefixSum cert.debit cert.chain.length ≤
      (C₀+C₁)*(1+T)^(a+q) := by
    calc
      _ ≤ C₀*(1+T)^a+C₁*(1+T)^q := add_le_add hinit cert.debitBudget
      _ ≤ C₀*(1+T)^(a+q)+C₁*(1+T)^(a+q) :=
        add_le_add (mul_le_mul_of_nonneg_left haPow hC₀)
          (mul_le_mul_of_nonneg_left hqPow hC₁)
      _ = _ := by ring
  have hexp := Cost.exp_cost_polynomial hT cert.costBudget
  have htail : 0 ≤ (C₀+C₁)*(1+T)^(a+q) := by positivity
  have hreturn : energy T ≤ φ cert.chain.length := by
    dsimp [φ]
    rw [cert.chain.terminal, sourceEnergy_completed]
    exact le_add_of_nonneg_right (cert.reserveNonnegative _)
  calc
    energy T ≤ φ cert.chain.length := hreturn
    _ ≤ Real.exp (Cost.prefixSum cert.cost cert.chain.length)*
        (φ 0+Cost.prefixSum cert.debit cert.chain.length) := hit
    _ ≤ Real.exp (Cost.prefixSum cert.cost cert.chain.length)*
        ((C₀+C₁)*(1+T)^(a+q)) :=
      mul_le_mul_of_nonneg_left hbudget (Real.exp_pos _).le
    _ ≤ (Real.exp H*(1+T)^d)*((C₀+C₁)*(1+T)^(a+q)) :=
      mul_le_mul_of_nonneg_right hexp htail
    _ = (Real.exp H*(C₀+C₁))*(1+T)^(d+a+q) := by
      simp only [Real.rpow_add (by linarith : 0 < 1+T)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/FinitePrimeChainEnergyBounds__SourceOccurrence8692902b1e7e84a2d2ddee6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/FinitePrimeChainEnergyBounds.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e0059d6f22783e7695e655955045203e164476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
