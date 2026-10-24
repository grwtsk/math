# squareIncrement_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f8dec8-33a6-fcf9-29bd-8443c752fd3f",
  "kind": "theorem",
  "lexical_name": "squareIncrement_decomposition",
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
  "slug": "squareincrement-decomposition--08766ad28a16e57edb9e2f83",
  "source": {
    "blob": "648ba8cc9873e647af70dd079847d85f7eea27f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 151,
    "path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08766ad28a16e57edb9e2f8377d1de4a1ec77c92f74467d64a451949c58d45ee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f8dec8-33a6-fcf9-29bd-8443c752fd3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareIncrement_decomposition (n : ℕ) (hn : 1 ≤ n) :
    squareIncrement n = squarePrimeIncrement n + higherPrimePowerMass n := by
  have hcut := two_le_exponentCutoff n hn
  have hset : Finset.Icc 1 (exponentCutoff n) =
      insert 1 (Finset.Icc 2 (exponentCutoff n)) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  have hnot : 1 ∉ Finset.Icc 2 (exponentCutoff n) := by simp
  calc
    squareIncrement n =
        ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2), ArithmeticFunction.vonMangoldt m :=
      squareIncrement_eq_vonMangoldt_sum n
    _ = ∑ m ∈ (Finset.Ioc (n ^ 2) ((n + 1) ^ 2)).filter IsPrimePow,
        ArithmeticFunction.vonMangoldt m :=
      (Finset.sum_filter_of_ne (fun m _ hm ↦ ArithmeticFunction.vonMangoldt_ne_zero_iff.mp hm)).symm
    _ = ∑ kp ∈ primePowerPairs n, Real.log kp.2 := (pair_mass_eq_vonMangoldt_sum n).symm
    _ = ∑ k ∈ Finset.Icc 1 (exponentCutoff n), ∑ p ∈ primePowerBases n k, Real.log p :=
      pair_mass_eq_exponent_sum n
    _ = squarePrimeIncrement n + higherPrimePowerMass n := by
      rw [hset, Finset.sum_insert hnot, ← squarePrimeIncrement_eq_first_fiber]
      rfl

/-- The logarithmic correction bound applies to the actual source, not just a standalone sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HigherPrimePowerSource.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `648ba8cc9873e647af70dd079847d85f7eea27f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
