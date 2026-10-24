# count_normalizedFactors_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7732d966-5326-bfaf-9b7f-ac0fc0ee16c6",
  "kind": "theorem",
  "lexical_name": "count_normalizedFactors_eq",
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
  "slug": "count-normalizedfactors-eq--563d0cf5ee015678c4189a9b",
  "source": {
    "blob": "cf401250dde34a934d25e304e587c93dabbe5bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1019,
    "line": 1002,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:563d0cf5ee015678c4189a9b7c93d0cb2e58b61e7d3039e2728f7021080daf5a",
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

Occurrence: `result:7732d966-5326-bfaf-9b7f-ac0fc0ee16c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1002–1019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_normalizedFactors_eq [DecidableEq R] {p x : R} (hp : Irreducible p)
  (hnorm : normalize p = p) {n : ℕ} (hle : p ^ n ∣ x) (hlt : ¬p ^ (n + 1) ∣ x) :
  (normalizedFactors x).count p = n := by
  letI : DecidableRel ((· ∣ ·) : R → R → Prop) := fun _ _ => Classical.propDecidable _
  by_cases hx0 : x = 0
  · simp [hx0] at hlt
  rw [← PartENat.natCast_inj]
  convert (multiplicity_eq_count_normalizedFactors hp hx0).symm
  · exact hnorm.symm
  exact (multiplicity.eq_coe_iff.mpr ⟨hle, hlt⟩).symm
#align unique_factorization_monoid.count_normalized_factors_eq UniqueFactorizationMonoid.count_normalizedFactors_eq

/-- The number of times an irreducible factor `p` appears in `normalizedFactors x` is defined by
the number of times it divides `x`. This is a slightly more general version of
`UniqueFactorizationMonoid.count_normalizedFactors_eq` that allows `p = 0`.

See also `multiplicity_eq_count_normalizedFactors` if `n` is given by `multiplicity p x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean#L1002).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf401250dde34a934d25e304e587c93dabbe5bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
