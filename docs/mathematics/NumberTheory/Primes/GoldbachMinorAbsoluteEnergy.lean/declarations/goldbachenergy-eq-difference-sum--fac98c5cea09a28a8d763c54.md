# goldbachEnergy_eq_difference_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d870b144-d8d9-b0b0-ba88-c7ad59538370",
  "kind": "theorem",
  "lexical_name": "goldbachEnergy_eq_difference_sum",
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
  "slug": "goldbachenergy-eq-difference-sum--fac98c5cea09a28a8d763c54",
  "source": {
    "blob": "63ad20000c9aacc51529181c6be51b56eeac7b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fac98c5cea09a28a8d763c542cb688ab44629112d51a554677f5566203843cfa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d870b144-d8d9-b0b0-ba88-c7ad59538370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachEnergy_eq_difference_sum (N : ℕ) (x : ℝ) :
    (goldbachExponentialEnergy N x : ℂ) =
      ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
        (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
          unitCharacter ((p : ℤ) - (q : ℤ)) x := by
  unfold goldbachExponentialEnergy
  rw [Complex.sq_norm, ← Complex.mul_conj]
  unfold goldbachExponentialSum
  simp_rw [map_sum, map_mul, Complex.conj_ofReal, ← unitCharacter_neg_eq_conj]
  simp_rw [Finset.sum_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro q hq
  rw [sub_eq_add_neg, unitCharacter_add]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachMinorAbsoluteEnergy.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63ad20000c9aacc51529181c6be51b56eeac7b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
