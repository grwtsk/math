# parityOne_scaleTen_amplitude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82b23352-f690-6a86-509e-c5fb9990059b",
  "kind": "theorem",
  "lexical_name": "parityOne_scaleTen_amplitude",
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
  "slug": "parityone-scaleten-amplitude--4c37b848a228ec84cfcc1448",
  "source": {
    "blob": "77e30c7fc211ce94a6ad00c30c69e5e9fc8586e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyUnmatchedKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c37b848a228ec84cfcc1448eb8b7749206e9587d7872c350ef36114f789614a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyUnmatchedKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82b23352-f690-6a86-509e-c5fb9990059b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityOne_scaleTen_amplitude : canonicalFourFamilyCenteredData 10 (true,false) 10 = 1 := by
  have hs : zeroWindingCenteredShiftSet 20 1 10
      (canonicalFourFamilyShiftSet 20 (true,false)) = {2,4,6,8} := by decide
  have h9 : ArithmeticFunction.moebius 9 = 0 := by
    simpa using ArithmeticFunction.moebius_apply_prime_pow (by norm_num : Nat.Prime 3)
      (by norm_num : (2:ℕ) ≠ 0)
  have h15 : ArithmeticFunction.moebius 15 = 1 := by
    have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (by norm_num : Nat.Coprime 3 5)
    norm_num [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5)] at h
    exact h
  change parityCenteredIntegerCoordinateAmplitude 20 1
    (canonicalFourFamilyShiftSet 20 (true,false)) 10 = 1
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  unfold parityZeroWindingCenteredMobiusCorrelation
  rw [hs]
  norm_num [moebiusReal,h9,h15,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 7),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 17),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 19)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyUnmatchedKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyUnmatchedKernel.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e30c7fc211ce94a6ad00c30c69e5e9fc8586e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
