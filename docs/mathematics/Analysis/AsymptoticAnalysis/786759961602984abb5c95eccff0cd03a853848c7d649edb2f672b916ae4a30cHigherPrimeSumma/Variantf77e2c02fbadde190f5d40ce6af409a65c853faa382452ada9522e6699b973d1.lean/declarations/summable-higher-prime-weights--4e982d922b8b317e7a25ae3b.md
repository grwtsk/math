# summable_higher_prime_weights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a015730e-a60d-cbc0-789e-ff674d13a9fa",
  "kind": "theorem",
  "lexical_name": "summable_higher_prime_weights",
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
  "slug": "summable-higher-prime-weights--4e982d922b8b317e7a25ae3b",
  "source": {
    "blob": "624b234ace6b95c789cb23023337af8959fcedc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 72,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e982d922b8b317e7a25ae3b5628a8771bbfd0697c517158beb8164ff2622581",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a015730e-a60d-cbc0-789e-ff674d13a9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_higher_prime_weights :
    Summable (fun pk : Nat.Primes × ℕ ↦
      Real.log (pk.1 : ℝ) / Real.sqrt (pk.1 : ℝ) ^ (pk.2 + 3)) := by
  have hgeom : Summable (fun k : ℕ ↦ (3 / 4 : ℝ) ^ k) :=
    summable_geometric_of_lt_one (by norm_num) (by norm_num)
  have hpseries : Summable (fun p : Nat.Primes ↦ (p : ℝ) ^ (-5 / 4 : ℝ)) := by
    exact Nat.Primes.summable_rpow.mpr (by norm_num : (-5 / 4 : ℝ) < -1)
  have hmajorant : Summable (fun pk : Nat.Primes × ℕ ↦
      4 * (pk.1 : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ pk.2) := by
    apply (summable_prod_of_nonneg (show 0 ≤ (fun pk : Nat.Primes × ℕ ↦
      4 * (pk.1 : ℝ) ^ (-5 / 4 : ℝ) * (3 / 4 : ℝ) ^ pk.2) from
        fun _ ↦ by positivity)).mpr
    refine ⟨fun p ↦ ?_, ?_⟩
    · dsimp only
      exact hgeom.mul_left (4 * (p : ℝ) ^ (-5 / 4 : ℝ))
    dsimp only
    simp_rw [tsum_mul_left, tsum_geometric_of_lt_one (by norm_num : 0 ≤ (3 / 4 : ℝ))
      (by norm_num : (3 / 4 : ℝ) < 1)]
    exact (hpseries.mul_left 16).congr (fun p ↦ by ring)
  apply hmajorant.of_nonneg_of_le
  · intro pk
    apply div_nonneg
    · apply Real.log_nonneg
      exact_mod_cast pk.1.prop.one_le
    · positivity
  · intro pk
    exact higher_prime_weight_le pk.1 pk.2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `624b234ace6b95c789cb23023337af8959fcedc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
