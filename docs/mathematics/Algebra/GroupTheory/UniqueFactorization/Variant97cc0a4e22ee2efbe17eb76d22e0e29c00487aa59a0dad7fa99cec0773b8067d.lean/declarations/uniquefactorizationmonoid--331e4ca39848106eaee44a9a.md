# uniqueFactorizationMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8026532-cda7-e259-8c3a-66c232ddad4d",
  "kind": "theorem",
  "lexical_name": "uniqueFactorizationMonoid",
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
  "slug": "uniquefactorizationmonoid--331e4ca39848106eaee44a9a",
  "source": {
    "blob": "a89d0ec2ff2324186f13ea86f03937e3cf787207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 64,
    "path": "GRWTSK/Algebra/GroupTheory/UniqueFactorization/Variant97cc0a4e22ee2efbe17eb76d22e0e29c00487aa59a0dad7fa99cec0773b8067d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:331e4ca39848106eaee44a9a0e93daf912d08eef5e2acac5c31880b669cf1161",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/UniqueFactorization/Variant97cc0a4e22ee2efbe17eb76d22e0e29c00487aa59a0dad7fa99cec0773b8067d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8026532-cda7-e259-8c3a-66c232ddad4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniqueFactorizationMonoid (f : S.LocalizationMap N)
    [UniqueFactorizationMonoid M] : UniqueFactorizationMonoid N :=
  have := f.isCancelMulZero
  .of_exists_prime_factors fun n hn ↦ by
    classical
    have ⟨⟨m, s⟩, eq⟩ := f.surj n
    use ((factors m).map f).filter (¬ IsUnit ·)
    rw [Ne, ← (f.map_units s).mul_left_eq_zero, eq] at hn
    refine ⟨fun x hx ↦ ?_, .trans (eq ▸ ?_) ((associated_mul_unit_left _ _ (f.map_units s)))⟩
    · rw [Multiset.mem_filter, Multiset.mem_map] at hx
      obtain ⟨p, hp, rfl⟩ := hx.1
      exact f.map_prime (prime_of_factor _ hp)
        (mt (fun h ↦ eq_zero_of_zero_dvd <| h ▸ map_dvd f (dvd_of_mem_factors hp)) hn) hx.2
    · exact .trans (.trans (associated_unit_mul_right _ _ <|
        IsUnit.multisetProd_iff.mpr fun x hx ↦ (Multiset.mem_filter.mp hx).2) <| .of_eq <|
        (Multiset.prod_filter_mul_prod_filter_not _).trans (f.toMonoidHom.map_multiset_prod _).symm)
        ((factors_prod (mt (by simp [·]) hn)).map f)

end Submonoid.LocalizationMap

variable [CommSemiring M] (S : Submonoid M)

/-- A localization of a unique factorization monoid is still a unique factorization monoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/UniqueFactorization/Variant97cc0a4e22ee2efbe17eb76d22e0e29c00487aa59a0dad7fa99cec0773b8067d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/UniqueFactorization/Variant97cc0a4e22ee2efbe17eb76d22e0e29c00487aa59a0dad7fa99cec0773b8067d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89d0ec2ff2324186f13ea86f03937e3cf787207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
