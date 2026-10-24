# quadraticLiftCoefficient_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c806d31-1403-8834-049c-3b0d856e46d1",
  "kind": "theorem",
  "lexical_name": "quadraticLiftCoefficient_exists",
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
  "slug": "quadraticliftcoefficient-exists--e0378e4164864d9d9b32aa3b",
  "source": {
    "blob": "eeb1c60c78c1a24e232d1c5659715beab8f65c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0378e4164864d9d9b32aa3ba99cf5ae3ff606dd695a834762f4f2349a3f7b45",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c806d31-1403-8834-049c-3b0d856e46d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticLiftCoefficient_exists
    {p k a : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1) :
    ∃ t, QuadraticLiftCoefficient p k a t := by
  let q := quadraticLiftQuotient p k a
  have hcop := oddPrime_two_mul_root_coprime hp hp2 hk hroot
  obtain ⟨t, ht, htmod⟩ :=
    Nat.exists_mul_mod_eq_of_coprime
      (p - q % p) hcop hp.ne_zero
  refine ⟨t, ht, ?_⟩
  rw [Nat.dvd_iff_mod_eq_zero]
  have hq_lt : q % p < p := Nat.mod_lt _ hp.pos
  by_cases hq0 : q % p = 0
  · have ht0 : (2 * a * t) % p = 0 := by
      simpa [q, hq0] using htmod
    simp [q, Nat.add_mod, hq0, ht0]
  · have hqpos : 0 < q % p := Nat.pos_of_ne_zero hq0
    have hsub_lt : p - q % p < p := Nat.sub_lt hp.pos hqpos
    have htval : (2 * a * t) % p = p - q % p := by
      simpa [q, Nat.mod_eq_of_lt hsub_lt] using htmod
    rw [Nat.add_mod, htval]
    have hsum : q % p + (p - q % p) = p :=
      Nat.add_sub_of_le (Nat.le_of_lt hq_lt)
    rw [hsum, Nat.mod_self]

/-- Uniqueness of the canonical correction digit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb1c60c78c1a24e232d1c5659715beab8f65c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
