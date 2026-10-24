# regularCenteredStructuredFourDistinctEnvelope_of_perLag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:206c2e4a-8bcb-46a0-b5a1-af3240305594",
  "kind": "theorem",
  "lexical_name": "regularCenteredStructuredFourDistinctEnvelope_of_perLag",
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
  "slug": "regularcenteredstructuredfourdistinctenvelope-of-perlag--11073cac40d22d7e2bb96317",
  "source": {
    "blob": "1c69e3e0b98ea25d2e73c80a5220a51314822d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11073cac40d22d7e2bb963173080eee2e42bd3f46c586d710990681c08c13b6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:206c2e4a-8bcb-46a0-b5a1-af3240305594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularCenteredStructuredFourDistinctEnvelope_of_perLag
    (L : StructuredFourDistinctLagCost)
    (hL : RegularCenteredStructuredFourDistinctPerLagBound L)
    (_hLnonneg : ∀ b d z r H, 0 ≤ L b d z r H) :
    RegularCenteredStructuredFourDistinctEnvelope
      (regularCenteredStructuredFourDistinctLagCostEndpoint L) := by
  intro b
  unfold regularCenteredStructuredFourDistinctEndpoint
    regularCenteredStructuredFourDistinctAtModulus
    centeredStructuredFourDistinctWindingLagSum
    centeredStructuredFourDistinctWindingLagCorrelation
    regularCenteredStructuredFourDistinctLagCostEndpoint
    regularCenteredStructuredFourDistinctLagCostAtModulus
  apply Finset.sum_le_sum
  intro d hdmem
  have hdpos : 0 < d :=
    (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  have familyBound :
      ∀ r : ℕ, ∀ H : Finset ℕ,
        |∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
            8 * centeredStructuredFourDistinctLagCorrelation
              b r (z * (d * d)) H| ≤
          ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
            8 * L b d z r H := by
    intro r H
    calc
      |∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          8 * centeredStructuredFourDistinctLagCorrelation
            b r (z * (d * d)) H| ≤
        ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          |8 * centeredStructuredFourDistinctLagCorrelation
            b r (z * (d * d)) H| := by
              exact Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          8 * L b d z r H := by
            apply Finset.sum_le_sum
            intro z hz
            simpa only [abs_mul, show |(8 : ℝ)| = 8 by norm_num] using
              mul_le_mul_of_nonneg_left (hL b d r z inferInstance H)
                (by norm_num : (0 : ℝ) ≤ 8)
  have h0e := familyBound 0 (positiveEndpointEvenShiftSet b)
  have h0o := familyBound 0 (positiveEndpointOddShiftSet b)
  have h1e := familyBound 1 (positiveEndpointEvenShiftSet b)
  have h1o := familyBound 1 (positiveEndpointOddShiftSet b)
  linarith

/-- Conservative source profile: no exponent is baked into the interface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c69e3e0b98ea25d2e73c80a5220a51314822d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
