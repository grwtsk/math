# sum_signedAbelEndpointPairs_eq_endpointFibreEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19ff9423-65f1-29a3-7cc1-a777f9cb2c2b",
  "kind": "theorem",
  "lexical_name": "sum_signedAbelEndpointPairs_eq_endpointFibreEnergy",
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
  "slug": "sum-signedabelendpointpairs-eq-endpointfibreenergy--a42ca2dd4e8536ef42b4855b",
  "source": {
    "blob": "841c6083ed45756773d82c3b0d410a700ecd153b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 229,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a42ca2dd4e8536ef42b4855b156ab63d71b509e6b25e8e2bdd839e24cbe4fa7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ff9423-65f1-29a3-7cc1-a777f9cb2c2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_signedAbelEndpointPairs_eq_endpointFibreEnergy
    (j : ℕ) :
    (∑ q ∈ signedAbelEndpointFibrePairSet j,
      4 * mertensTwoPointPrefix (q.1 - q.2) q.2 ^ 2 *
        (((q.1 : ℝ)⁻¹ - ((((q.1 + 1 : ℕ) : ℝ))⁻¹)))) =
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy j := by
  classical
  unfold signedAbelEndpointFibrePairSet
    weightedMertensSignedAbelEndpointFibreQuadraticEnergy
    mertensTwoPointEndpointFibreQuadraticEnergy
  rw [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  calc
    (∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
      ∑ n ∈ Finset.Ico 1 (2 ^ (j + 1)),
        if n < b then
          4 * mertensTwoPointPrefix (b - n) n ^ 2 *
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)
        else 0) =
      ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ∑ n ∈ Finset.Ico 1 b,
          4 * mertensTwoPointPrefix (b - n) n ^ 2 *
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) := by
      apply Finset.sum_congr rfl
      intro b hb
      exact sum_Ico_one_Y_indicator_lt
        (Nat.le_of_lt (Finset.mem_Ico.mp hb).2)
        (fun n =>
          4 * mertensTwoPointPrefix (b - n) n ^ 2 *
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹))
    _ = 4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          ∑ n ∈ Finset.Ico 1 b,
            mertensTwoPointPrefix (b - n) n ^ 2 := by
      simp_rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro b hb
      apply Finset.sum_congr rfl
      intro n hn
      ring

/-- Main exact endpoint-fibre identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelEndpointFibreQuadraticEnergy.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `841c6083ed45756773d82c3b0d410a700ecd153b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
