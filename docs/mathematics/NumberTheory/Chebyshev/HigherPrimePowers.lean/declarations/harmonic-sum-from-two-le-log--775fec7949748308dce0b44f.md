# harmonic_sum_from_two_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a809a84-dccd-266e-4b3d-87c17b936bcd",
  "kind": "theorem",
  "lexical_name": "harmonic_sum_from_two_le_log",
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
  "slug": "harmonic-sum-from-two-le-log--775fec7949748308dce0b44f",
  "source": {
    "blob": "6dac989dfd24f1a125653b4dbdb16a9663314610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:775fec7949748308dce0b44f328db33277760ccdb5b114295173fcc88ea503b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/HigherPrimePowers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a809a84-dccd-266e-4b3d-87c17b936bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonic_sum_from_two_le_log (K : ℕ) (hK : 1 ≤ K) :
    (∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ)) ≤ Real.log K := by
  have hset : (Finset.Icc 1 K).erase 1 = Finset.Icc 2 K := by
    ext k
    simp only [Finset.mem_erase, Finset.mem_Icc]
    omega
  have hsplit : (harmonic K : ℝ) = 1 + ∑ k ∈ Finset.Icc 2 K, 1 / (k : ℝ) := by
    simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
    rw [← Finset.sum_erase_add (Finset.Icc 1 K) _ (Finset.left_mem_Icc.mpr hK), hset]
    simp only [Nat.cast_one, inv_one, one_div, add_comm]
  have hbound := harmonic_le_one_add_log K
  rw [hsplit] at hbound
  linarith

/-- The complete exact logarithmic budget at every positive square stage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/HigherPrimePowers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/HigherPrimePowers.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dac989dfd24f1a125653b4dbdb16a9663314610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
