# le_multiplicity_iff_replicate_le_normalizedFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e8fec99-c460-22e3-817f-1fd4cccd6685",
  "kind": "theorem",
  "lexical_name": "le_multiplicity_iff_replicate_le_normalizedFactors",
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
  "slug": "le-multiplicity-iff-replicate-le-normalizedfactors--6a0050562eacc86db2d52d15",
  "source": {
    "blob": "cf401250dde34a934d25e304e587c93dabbe5bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 985,
    "line": 961,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0050562eacc86db2d52d155fb22ee133905acb1fbc74f472227a3b8a669837",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e8fec99-c460-22e3-817f-1fd4cccd6685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–985.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_multiplicity_iff_replicate_le_normalizedFactors [DecidableEq R] {a b : R} {n : ℕ}
    (ha : Irreducible a) (hb : b ≠ 0) :
    ↑n ≤ multiplicity a b ↔ replicate n (normalize a) ≤ normalizedFactors b := by
  rw [← pow_dvd_iff_le_multiplicity]
  revert b
  induction' n with n ih; · simp
  intro b hb
  constructor
  · rintro ⟨c, rfl⟩
    rw [Ne.def, pow_succ, mul_assoc, mul_eq_zero, not_or] at hb
    rw [pow_succ, mul_assoc, normalizedFactors_mul hb.1 hb.2, replicate_succ,
      normalizedFactors_irreducible ha, singleton_add, cons_le_cons_iff, ← ih hb.2]
    apply Dvd.intro _ rfl
  · rw [Multiset.le_iff_exists_add]
    rintro ⟨u, hu⟩
    rw [← (normalizedFactors_prod hb).dvd_iff_dvd_right, hu, prod_add, prod_replicate]
    exact (Associated.pow_pow <| associated_normalize a).dvd.trans (Dvd.intro u.prod rfl)
#align unique_factorization_monoid.le_multiplicity_iff_replicate_le_normalized_factors UniqueFactorizationMonoid.le_multiplicity_iff_replicate_le_normalizedFactors

/-- The multiplicity of an irreducible factor of a nonzero element is exactly the number of times
the normalized factor occurs in the `normalizedFactors`.

See also `count_normalizedFactors_eq` which expands the definition of `multiplicity`
to produce a specification for `count (normalizedFactors _) _`..
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf401250dde34a934d25e304e587c93dabbe5bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
