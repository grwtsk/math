# inverse_cost_at_polynomial_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5db3d91-2841-5abd-09ce-d01c4067bd32",
  "kind": "theorem",
  "lexical_name": "inverse_cost_at_polynomial_cutoff",
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
  "slug": "inverse-cost-at-polynomial-cutoff--3ca1b6947ec735731768ea97",
  "source": {
    "blob": "4174357179a9e4962fcf6a571f6cd68575846a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ca1b6947ec735731768ea979aea64b34d256b708c27c68156287fc693c889ed",
  "verification": {
    "reference": "docs/verification/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5db3d91-2841-5abd-09ce-d01c4067bd32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_cost_at_polynomial_cutoff {c C a A H : ℝ} {k : ℕ}
    (hc : 0 < c) (hC : 0 ≤ C) (ha : 0 ≤ a) (hA : 1 ≤ A)
    (hHp : 0 ≤ H) (hH : H ≤ C * A ^ a) :
    c⁻¹ * (1 + H) ^ (k : ℝ) ≤
      c⁻¹ * (1 + C) ^ (k : ℝ) * A ^ (a * k) := by
  have hbase : 1 + H ≤ (1 + C) * A ^ a := by
    have hpow : 1 ≤ A ^ a := Real.one_le_rpow hA ha
    nlinarith
  have hpow := Real.rpow_le_rpow (by positivity : 0 ≤ 1 + H) hbase
    (Nat.cast_nonneg k)
  rw [Real.mul_rpow (by positivity : 0 ≤ 1 + C)
    (Real.rpow_nonneg (by linarith : 0 ≤ A) a), ← Real.rpow_mul (by linarith : 0 ≤ A)] at hpow
  simpa [mul_assoc] using mul_le_mul_of_nonneg_left hpow (inv_nonneg.2 hc.le)

end
end GRWTSK.RiemannHypothesis.Conversation.PrimePhaseGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimePhaseGeometry/Variantff39c3f67efab4ced43ecb31d4309031e3469361c6e59190cf728eb9bc28af97.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4174357179a9e4962fcf6a571f6cd68575846a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
