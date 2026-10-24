# balanced_energy_ge_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3279c0d-018c-1502-5ade-732ea2a7e31b",
  "kind": "theorem",
  "lexical_name": "balanced_energy_ge_rows",
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
  "slug": "balanced-energy-ge-rows--78cb0fb40b94a52ce70be119",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 118,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78cb0fb40b94a52ce70be1195a42adc7833916650353474607921c50b4cb09dc",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3279c0d-018c-1502-5ade-732ea2a7e31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_energy_ge_rows (S : Finset (ZMod p)) (hm : 0 < m)
    (hfour : 4 * m ≤ S.card) (P : BalancedPartitions S m) (χ : ZMod p)
    (L : ℝ) (hrows : ∀ a : S, L ≤ ∑ b ∈ part P (P.val a),
      modularDistance (χ * (a.val - b.val)) ^ 2) :
    (m : ℝ) ^ 2 / (2 * (S.card : ℝ) ^ 2) * (S.card * L) ≤
      partitionEnergy (partValues (residueEmbedding S) P) χ := by
  have hs : (S.card : ℝ) * L ≤ ∑ a : S, ∑ b ∈ part P (P.val a),
      modularDistance (χ * (a.val - b.val)) ^ 2 := by
    calc
      _ = ∑ _a : S, L := by simp
      _ ≤ _ := Finset.sum_le_sum (fun a _ => hrows a)
  have he := balanced_partition_energy_lower_bound S hm hfour P χ
  rw [sum_parts_pairs] at he
  exact (mul_le_mul_of_nonneg_left hs (by positivity)).trans he

omit [NeZero p] in
/-- Deterministic success implication for source Lemma 3.1. The local counts
will be supplied by the checked conditional hypergeometric law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
