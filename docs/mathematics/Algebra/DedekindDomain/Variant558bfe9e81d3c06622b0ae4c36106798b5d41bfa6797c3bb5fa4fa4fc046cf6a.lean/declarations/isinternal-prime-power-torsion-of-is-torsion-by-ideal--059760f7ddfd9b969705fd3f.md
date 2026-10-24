# isInternal_prime_power_torsion_of_is_torsion_by_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6b25740-d8fd-b9f6-5474-8966326f0d3e",
  "kind": "theorem",
  "lexical_name": "isInternal_prime_power_torsion_of_is_torsion_by_ideal",
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
  "slug": "isinternal-prime-power-torsion-of-is-torsion-by-ideal--059760f7ddfd9b969705fd3f",
  "source": {
    "blob": "fb0ec4685ce1b9a58ba6b65d575a5f186882852e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 41,
    "path": "GRWTSK/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:059760f7ddfd9b969705fd3fd83d49358a1fd35765672464e1b48e42728033c2",
  "verification": {
    "reference": "docs/verification/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6b25740-d8fd-b9f6-5474-8966326f0d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInternal_prime_power_torsion_of_is_torsion_by_ideal [DecidableEq (Ideal R)]
    {I : Ideal R} (hI : I ≠ ⊥) (hM : Module.IsTorsionBySet R M I) :
    DirectSum.IsInternal fun p : (factors I).toFinset =>
      torsionBySet R M (p ^ (factors I).count ↑p : Ideal R) := by
  let P := factors I
  have prime_of_mem := fun p (hp : p ∈ P.toFinset) =>
    prime_of_factor p (Multiset.mem_toFinset.mp hp)
  apply torsionBySet_isInternal (p := fun p => p ^ P.count p) _
  · convert hM
    rw [← Finset.inf_eq_iInf, IsDedekindDomain.inf_prime_pow_eq_prod, ← Finset.prod_multiset_count,
      ← associated_iff_eq]
    · exact factors_prod hI
    · exact prime_of_mem
    · exact fun _ _ _ _ ij => ij
  · intro p hp q hq pq; dsimp
    rw [irreducible_pow_sup]
    · suffices (normalizedFactors _).count p = 0 by rw [this, zero_min, pow_zero, Ideal.one_eq_top]
      rw [Multiset.count_eq_zero,
        normalizedFactors_of_irreducible_pow (prime_of_mem q hq).irreducible,
        Multiset.mem_replicate]
      exact fun H => pq <| H.2.trans <| normalize_eq q
    · rw [← Ideal.zero_eq_bot]; apply pow_ne_zero; exact (prime_of_mem q hq).ne_zero
    · exact (prime_of_mem p hp).irreducible

/-- A finitely generated torsion module over a Dedekind domain is an internal direct sum of its
`p i ^ e i`-torsion submodules where `p i` are factors of `(⊤ : Submodule R M).annihilator` and
`e i` are their multiplicities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DedekindDomain/Variant558bfe9e81d3c06622b0ae4c36106798b5d41bfa6797c3bb5fa4fa4fc046cf6a.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0ec4685ce1b9a58ba6b65d575a5f186882852e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
