# canonicalFourFamily_terminal_amplitude_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0cb71a6-1f62-c73a-19ff-22188a45191b",
  "kind": "theorem",
  "lexical_name": "canonicalFourFamily_terminal_amplitude_three",
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
  "slug": "canonicalfourfamily-terminal-amplitude-three--1643cd50b557fbaa920a430f",
  "source": {
    "blob": "8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 203,
    "path": "GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1643cd50b557fbaa920a430f93a3800142377a036996c07f912e829a98b313b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0cb71a6-1f62-c73a-19ff-22188a45191b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalFourFamily_terminal_amplitude_three :
    canonicalFourFamilyCenteredData 3 (canonicalFourFamilyOfAnchor 6) 4 = -1 := by
  have hset : zeroWindingCenteredShiftSet 6 0 4
      (canonicalFourFamilyShiftSet 6 (false, false)) = {2} := by decide
  have hmu6 : moebiusReal 6 = 1 := by
    have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (by norm_num : Nat.Coprime 2 3)
    rw [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
      ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)] at h
    unfold moebiusReal
    norm_num at h ⊢
    exact_mod_cast h
  change parityCenteredIntegerCoordinateAmplitude 6 0
    (canonicalFourFamilyShiftSet 6 (false, false)) 4 = -1
  rw [authentic_integer_center_amplitude_eq_centered_sum]
  unfold parityZeroWindingCenteredMobiusCorrelation
  rw [hset]
  have hmu6' : ArithmeticFunction.moebius 6 = 1 := by
    change ((ArithmeticFunction.moebius 6 : ℤ) : ℝ) = 1 at hmu6
    exact_mod_cast hmu6
  norm_num [hmu6', moebiusReal, ArithmeticFunction.moebius_apply_prime
    (by norm_num : Nat.Prime 2)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CanonicalFourFamilyArithmeticRestrictions.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d16fe5e6d37bd0b9eef28ca51b16c0b767dbb8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
