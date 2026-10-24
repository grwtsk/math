# cyclotomic_irreducible_pow_of_irreducible_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3045fff-c839-5cc1-b8e6-0983c0938e31",
  "kind": "theorem",
  "lexical_name": "cyclotomic_irreducible_pow_of_irreducible_pow",
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
  "slug": "cyclotomic-irreducible-pow-of-irreducible-pow--8bd22f71584301ab32d4139f",
  "source": {
    "blob": "43156137dec416b14af1f2a6fd3ccba0a4c23f66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bd22f71584301ab32d4139fd04cfdf80103db3ed17e34cfd989dc41bdd1fff9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3045fff-c839-5cc1-b8e6-0983c0938e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_irreducible_pow_of_irreducible_pow {p : ℕ} (hp : Nat.Prime p) {R} [CommRing R]
    [IsDomain R] {n m : ℕ} (hmn : m ≤ n) (h : Irreducible (cyclotomic (p ^ n) R)) :
    Irreducible (cyclotomic (p ^ m) R) := by
  rcases m.eq_zero_or_pos with (rfl | hm)
  · simpa using irreducible_X_sub_C (1 : R)
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
  induction' k with k hk
  · simpa using h
  have : m + k ≠ 0 := (add_pos_of_pos_of_nonneg hm k.zero_le).ne'
  rw [Nat.add_succ, pow_succ', ← cyclotomic_expand_eq_cyclotomic hp <| dvd_pow_self p this] at h
  exact hk (by linarith) (of_irreducible_expand hp.ne_zero h)
#align polynomial.cyclotomic_irreducible_pow_of_irreducible_pow Polynomial.cyclotomic_irreducible_pow_of_irreducible_pow

/-- If `Irreducible (cyclotomic (p ^ n) R)` then `Irreducible (cyclotomic p R).` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant4e2499db809e7d37d75e26dfad3a7a4a7b127f1e3a97ad4e0e7b1433403d4781.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43156137dec416b14af1f2a6fd3ccba0a4c23f66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
