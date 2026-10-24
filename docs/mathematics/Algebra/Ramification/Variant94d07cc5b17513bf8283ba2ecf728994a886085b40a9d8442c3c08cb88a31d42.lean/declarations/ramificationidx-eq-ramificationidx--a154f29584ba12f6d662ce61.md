# ramificationIdx'_eq_ramificationIdx'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3387f167-8f3d-d0b8-f0b9-ddd784d3f639",
  "kind": "theorem",
  "lexical_name": "ramificationIdx'_eq_ramificationIdx'",
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
  "slug": "ramificationidx-eq-ramificationidx--a154f29584ba12f6d662ce61",
  "source": {
    "blob": "b03b00f0a11e4dac24dd38293fa2c12c315cf439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 144,
    "path": "GRWTSK/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a154f29584ba12f6d662ce6195e577e013d1a0c3a02085e399450206bdedcca6",
  "verification": {
    "reference": "docs/verification/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3387f167-8f3d-d0b8-f0b9-ddd784d3f639`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx'_eq_ramificationIdx' [IsDedekindDomain S]
    [q.LiesOver p] [hq : q.IsPrime] (hpS : p.map (algebraMap R S) ≠ ⊥) :
    p.ramificationIdx' q = q.ramificationIdx R := by
  have hq' : q ≠ ⊥ := ne_bot_of_le_ne_bot hpS (map_le_of_le_comap (q.over_def p).le)
  have : q.IsMaximal := hq.isMaximal hq'
  obtain ⟨I, hqI, h⟩ := Ideal.eq_prime_pow_mul_coprime hpS q
  replace hqI : ¬ I ≤ q := by
    contrapose! hqI
    rw [sup_of_le_left hqI]
    exact hq.ne_top
  rw [← IsDedekindDomain.ramificationIdx'_eq_normalizedFactors_count hpS hq hq'] at h
  apply_fun (map (algebraMap S (Localization.AtPrime q))) at h
  rw [map_map, ← IsScalarTower.algebraMap_eq, Ideal.map_mul, Ideal.map_pow,
    map_eq_top_of_not_le (Localization.AtPrime q) hqI, mul_top, AtPrime.map_eq_maximalIdeal] at h
  have hSq := isDiscreteValuationRing_of_dedekind_domain S hq' (Localization.AtPrime q)
  rw [ramificationIdx_eq p q, h, hSq.length_quotient_pow_maximalIdeal, ENat.toNat_natCast]

@[deprecated (since := "2026-07-01")] alias ramificationIdx_eq_ramificationIdx'' :=
  ramificationIdx'_eq_ramificationIdx'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ramification/Variant94d07cc5b17513bf8283ba2ecf728994a886085b40a9d8442c3c08cb88a31d42.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03b00f0a11e4dac24dd38293fa2c12c315cf439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
