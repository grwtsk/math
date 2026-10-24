# minpoly_eq_pow_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:625afd74-df6b-85f6-7d37-806447777a08",
  "kind": "theorem",
  "lexical_name": "minpoly_eq_pow_coprime",
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
  "slug": "minpoly-eq-pow-coprime--5dfe82fd5dce23f84f0e8341",
  "source": {
    "blob": "813eddf5d02976a6910bf8e38414979fcf03ca47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 172,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dfe82fd5dce23f84f0e8341abbdfebbeaf830af58f0298de2f6146bcdf8d2c5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:625afd74-df6b-85f6-7d37-806447777a08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minpoly_eq_pow_coprime {m : ℕ} (hcop : Nat.Coprime m n) :
    minpoly ℤ μ = minpoly ℤ (μ ^ m) := by
  revert n hcop
  refine UniqueFactorizationMonoid.induction_on_prime m ?_ ?_ ?_
  · intro h hn
    congr
    simpa [(Nat.coprime_zero_left _).mp hn] using h
  · intro u hunit _ _
    congr
    simp [Nat.isUnit_iff.mp hunit]
  · intro a p _ hprime
    intro hind h hcop
    rw [hind h (Nat.Coprime.coprime_mul_left hcop)]; clear hind
    replace hprime := hprime.nat_prime
    have hdiv := (Nat.Prime.coprime_iff_not_dvd hprime).1 (Nat.Coprime.coprime_mul_right hcop)
    haveI := Fact.mk hprime
    rw [minpoly_eq_pow (h.pow_of_coprime a (Nat.Coprime.coprime_mul_left hcop)) hdiv]
    congr 1
    ring

/-- If `m : ℕ` is coprime with `n`,
then the minimal polynomial of a primitive `n`-th root of unity `μ`
has `μ ^ m` as root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variante16819a4507a6c8a2d3a9ec1a0a2c3e3a89112d505df4193ca7fa879fdf89336.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `813eddf5d02976a6910bf8e38414979fcf03ca47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
