# ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cefb8d7f-3774-1f3e-a67c-2ddb67e80493",
  "kind": "theorem",
  "lexical_name": "ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply",
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
  "slug": "ramificationidx-primesoverspanequivmonicfactorsmod-symm-apply--d8dab8e9262f2e68ba7ff396",
  "source": {
    "blob": "b80795e016a90af268cd2e16d7b0afb750149ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 247,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8dab8e9262f2e68ba7ff3960a62a7fe2511a9ca97de0c885c8d5a2560ef89f5",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cefb8d7f-3774-1f3e-a67c-2ddb67e80493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx_primesOverSpanEquivMonicFactorsMod_symm_apply (hp : ¬ p ∣ exponent θ)
    {Q : ℤ[X]} (hQ : Q.map (Int.castRingHom (ZMod p)) ∈ monicFactorsMod θ p) :
    ramificationIdx
      ((primesOverSpanEquivMonicFactorsMod hp).symm
        ⟨Q.map (Int.castRingHom (ZMod p)), hQ⟩ : Ideal (𝓞 K)) ℤ =
          multiplicity (Q.map (Int.castRingHom (ZMod p)))
            ((minpoly ℤ θ).map (Int.castRingHom (ZMod p))) := by
  rw [ramificationIdx_eq_multiplicity (span {↑p}) _ (map_ne_bot_of_ne_bot (by simp [NeZero.ne p]))]
  · apply multiplicity_eq_of_emultiplicity_eq
    rw [← emultiplicity_map_eq (mapEquiv (Int.quotientSpanNatEquivZMod p).symm),
      emultiplicity_factors_map_eq_emultiplicity inferInstance (by simp [NeZero.ne p])
      (not_dvd_exponent_iff.mp hp).eq_top θ.isIntegral]
    · simp only [primesOverSpanEquivMonicFactorsMod_symm_apply,
        Equiv.apply_symm_apply (normalizedFactorsMapEquivNormalizedFactorsMinPolyMk _ _ _ _),
        Polynomial.map_map, Int.quotientSpanNatEquivZMod_comp_castRingHom, mapEquiv_apply]
    · rw [← mem_primesOver_iff_mem_normalizedFactors _ (by simp [NeZero.ne p])]
      exact ((primesOverSpanEquivMonicFactorsMod hp).symm ⟨_, hQ⟩).coe_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant580812e2c8d6f7e1960d58fa26ffa1324d754f9b3bdd4825259902d71b338b7a.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b80795e016a90af268cd2e16d7b0afb750149ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
