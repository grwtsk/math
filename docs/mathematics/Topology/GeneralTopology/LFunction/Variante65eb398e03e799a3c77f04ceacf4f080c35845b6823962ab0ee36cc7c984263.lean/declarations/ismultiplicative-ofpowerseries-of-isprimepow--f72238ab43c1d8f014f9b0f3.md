# isMultiplicative_ofPowerSeries_of_isPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8020d056-86aa-da3f-e1c9-ae0e8dd8f2d7",
  "kind": "theorem",
  "lexical_name": "isMultiplicative_ofPowerSeries_of_isPrimePow",
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
  "slug": "ismultiplicative-ofpowerseries-of-isprimepow--f72238ab43c1d8f014f9b0f3",
  "source": {
    "blob": "2dbd6be26a7b8e76ea0aab63b3194c8949571b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f72238ab43c1d8f014f9b0f30c2ca290be8eddc3bc3f5a100169a51addcf08ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8020d056-86aa-da3f-e1c9-ae0e8dd8f2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplicative_ofPowerSeries_of_isPrimePow
    (q : ℕ) (hq : IsPrimePow q) (f : PowerSeries R) (hf : f.constantCoeff = 1) :
    IsMultiplicative (ofPowerSeries q f) := by
  refine ⟨(ofPowerSeries_apply_one q f).trans hf, fun {m n} hmn ↦ ?_⟩
  obtain ⟨p, k, hp, hk, rfl⟩ := hq
  rw [← Nat.prime_iff] at hp
  rw [ofPowerSeries_pow p hk.ne']
  by_cases hm : ∃ i, p ^ i = m
  · obtain ⟨i, rfl⟩ := hm
    by_cases hn : ∃ j, p ^ j = n
    · obtain ⟨j, rfl⟩ := hn
      cases i
      · simp [hk.ne', hf]
      · cases j
        · simp [hk.ne', hf]
        · simp [hp.ne_one] at hmn
    · simp_rw [ofPowerSeries_apply hp.one_lt]
      rw [Function.extend_apply', Function.extend_apply' _ _ _ hn,
        Pi.zero_apply, Pi.zero_apply, mul_zero]
      contrapose! hn
      obtain ⟨j, hj⟩ := hn
      obtain ⟨v, -, rfl⟩ := (Nat.dvd_prime_pow hp).mp (Dvd.intro_left _ hj.symm)
      exact ⟨v, rfl⟩
  · simp_rw [ofPowerSeries_apply hp.one_lt]
    rw [Function.extend_apply', Function.extend_apply' _ _ _ hm,
      Pi.zero_apply, Pi.zero_apply, zero_mul]
    contrapose! hm
    obtain ⟨i, hi⟩ := hm
    obtain ⟨j, -, rfl⟩ := (Nat.dvd_prime_pow hp).mp ⟨n, hi⟩
    exact ⟨j, rfl⟩

end CommRing

end PowerSeries

section EulerProduct

open Filter

variable {ι R : Type*} [CommSemiring R]

/-- A private uniform space instance on `ArithmeticFunction R` in order to define `eulerProduct` as
a `tprod`. If `R` is viewed as having the discrete topology, then the resulting topology on
`ArithmeticFunction R` is the topology of pointwise convergence (see `tendsto_iff`).

See `tendsTo_eulerProduct_of_tendsTo` for the outward facing `eulerProduct` API. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LFunction/Variante65eb398e03e799a3c77f04ceacf4f080c35845b6823962ab0ee36cc7c984263.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dbd6be26a7b8e76ea0aab63b3194c8949571b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
