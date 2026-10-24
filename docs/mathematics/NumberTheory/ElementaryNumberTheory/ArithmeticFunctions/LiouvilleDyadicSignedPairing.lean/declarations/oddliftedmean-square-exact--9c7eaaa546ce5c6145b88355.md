# oddLiftedMean_square_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f333820-0bc7-0aa2-f719-be2fa3fcb9dc",
  "kind": "theorem",
  "lexical_name": "oddLiftedMean_square_exact",
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
  "slug": "oddliftedmean-square-exact--9c7eaaa546ce5c6145b88355",
  "source": {
    "blob": "6c0bcfb623c68d0704260017d75b85dd41f7bc1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 56,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7eaaa546ce5c6145b88355b460fc570f9b0ac0fe93ae679a02ca84c6ab02a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f333820-0bc7-0aa2-f719-be2fa3fcb9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oddLiftedMean_square_exact (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (hM : 0 < M) :
    (4 : ℚ) * (oddLiftedMean M H S) ^ 2 =
      (liouvilleSubsetMean M H S) ^ 2 +
        (oddResidualMean M H S) ^ 2 +
          2 * ((-1 : ℚ) ^ S.card *
            liouvilleSubsetMean M H S *
            oddResidualMean M H S) := by
  rw [oddLiftedMean_half_source_plus_residual M H S hM]
  have hsgn : ((-1 : ℚ) ^ S.card) ^ 2 = 1 := by
    calc
      _ = (-1 : ℚ) ^ (S.card * 2) :=
        (pow_mul (-1 : ℚ) S.card 2).symm
      _ = (-1 : ℚ) ^ (2 * S.card) := by rw [Nat.mul_comm]
      _ = ((-1 : ℚ) ^ 2) ^ S.card :=
        pow_mul (-1 : ℚ) 2 S.card
      _ = 1 := by norm_num
  calc
    (4 : ℚ) *
      ((((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S +
           oddResidualMean M H S) / 2) ^ 2) =
      (((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S +
           oddResidualMean M H S) ^ 2) := by ring
    _ = (((-1 : ℚ) ^ S.card) ^ 2 *
           (liouvilleSubsetMean M H S) ^ 2 +
         (oddResidualMean M H S) ^ 2 +
           2 * ((-1 : ℚ) ^ S.card *
             liouvilleSubsetMean M H S *
             oddResidualMean M H S)) := by ring
    _ = _ := by rw [hsgn]; ring

/-- Sum the pointwise identity over ALL nonempty Walsh characters.
The signed pairing retains every character and the exact coefficient 2.
This identity is stronger than the previous convexity inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleDyadicSignedPairing.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c0bcfb623c68d0704260017d75b85dd41f7bc1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
