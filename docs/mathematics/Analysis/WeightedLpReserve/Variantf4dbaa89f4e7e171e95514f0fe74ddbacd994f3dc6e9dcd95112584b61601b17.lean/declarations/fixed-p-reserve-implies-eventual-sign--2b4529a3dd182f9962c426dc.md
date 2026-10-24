# fixed_p_reserve_implies_eventual_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2644d12-55f1-9cd1-1f8b-dbdf105aa17d",
  "kind": "theorem",
  "lexical_name": "fixed_p_reserve_implies_eventual_sign",
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
  "slug": "fixed-p-reserve-implies-eventual-sign--2b4529a3dd182f9962c426dc",
  "source": {
    "blob": "c65e6ca79cb68d6336beccc6b0f111fce983cd4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b4529a3dd182f9962c426dc9012e50f91d9eb77ad9d6348b5886b237b08c94e",
  "verification": {
    "reference": "docs/verification/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2644d12-55f1-9cd1-1f8b-dbdf105aa17d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_p_reserve_implies_eventual_sign {N : ℕ} {p E R : ℝ}
    (hN : 2 ≤ N) (hp : 1 ≤ p) (hstart : ordinaryPrimePrimitive N ≤ -R)
    (henergy : ∀ K : ℕ, nativePEnergy N K p ≤ E)
    (hreserve : (2 / Real.sqrt N) ^ (1 - p⁻¹) * E ^ p⁻¹ ≤ R) :
    OrdinaryPrimeEventualSignSupplier := by
  have hint (K : ℕ) : ordinaryPrimePrimitive (N + K : ℕ) ≤ 0 := by
    have h := actual_record_holder (by omega : 1 ≤ N) K hp
    have hE0 := native_p_energy_nonneg (by omega : 1 ≤ N) K p
    have hpow := Real.rpow_le_rpow hE0 (henergy K) (by positivity : 0 ≤ p⁻¹)
    have hbound := h.trans (mul_le_mul_of_nonneg_left hpow
      (Real.rpow_nonneg (by positivity : 0 ≤ (2 : ℝ) / Real.sqrt N) (1 - p⁻¹)))
    have hprefix := actual_prefix_le_record N K
    linarith
  apply integer_sign_implies_all_real hN
  intro n hn
  obtain ⟨K, rfl⟩ := Nat.exists_eq_add_of_le hn
  exact hint K

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedLpReserve
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeightedLpReserve/Variantf4dbaa89f4e7e171e95514f0fe74ddbacd994f3dc6e9dcd95112584b61601b17.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c65e6ca79cb68d6336beccc6b0f111fce983cd4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
