# quadraticLiftCoefficient_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a0c850e-261b-e720-cece-bb35d1f364b3",
  "kind": "theorem",
  "lexical_name": "quadraticLiftCoefficient_unique",
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
  "slug": "quadraticliftcoefficient-unique--acdef679c5d251a4fd1fc834",
  "source": {
    "blob": "eeb1c60c78c1a24e232d1c5659715beab8f65c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acdef679c5d251a4fd1fc8343775fff3a67b993dbcb96d5c2624963c3888ef34",
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

Occurrence: `result:7a0c850e-261b-e720-cece-bb35d1f364b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticLiftCoefficient_unique
    {p k a t u : ℕ} (hp : Nat.Prime p) (hp2 : p ≠ 2) (hk : 1 ≤ k)
    (hroot : p ^ k ∣ a ^ 2 + 1)
    (ht : QuadraticLiftCoefficient p k a t)
    (hu : QuadraticLiftCoefficient p k a u) :
    t = u := by
  let q := quadraticLiftQuotient p k a
  let c := 2 * a
  have ht0 : q + c * t ≡ 0 [MOD p] :=
    Nat.modEq_zero_iff_dvd.mpr ht.2
  have hu0 : q + c * u ≡ 0 [MOD p] :=
    Nat.modEq_zero_iff_dvd.mpr hu.2
  have hsum : q + c * t ≡ q + c * u [MOD p] :=
    ht0.trans hu0.symm
  have hmul : c * t ≡ c * u [MOD p] :=
    Nat.ModEq.add_left_cancel' q hsum
  have hcancel := Nat.ModEq.cancel_left_div_gcd hp.pos hmul
  have hcop := oddPrime_two_mul_root_coprime hp hp2 hk hroot
  have htu : t ≡ u [MOD p] := by
    simpa [c, hcop.symm.gcd_eq_one] using hcancel
  exact htu.eq_of_lt_of_lt ht.1 hu.1

/-- Every odd-prime root has exactly one correction digit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerLift.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb1c60c78c1a24e232d1c5659715beab8f65c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
