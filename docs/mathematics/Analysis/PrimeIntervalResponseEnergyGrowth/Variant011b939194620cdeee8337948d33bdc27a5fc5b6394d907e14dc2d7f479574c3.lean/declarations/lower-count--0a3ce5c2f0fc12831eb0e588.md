# lower_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:231e7eba-1397-0cd4-5e9b-c8f1f6ac4ce5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a05129bb-c0e2-c1bb-72e3-62de946daa77",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8eaad89a-7f21-2f37-b0dc-ffca44d092f9",
  "kind": "theorem",
  "lexical_name": "lower_count",
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
  "slug": "lower-count--0a3ce5c2f0fc12831eb0e588",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 167,
    "path": "GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a3ce5c2f0fc12831eb0e588b64ec8fb5020d2dfcdcaa2f79292c5d2f0df3aaf",
  "verification": {
    "reference": "docs/verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eaad89a-7f21-2f37-b0dc-ffca44d092f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_count {T : ℝ} (hT : 1024 ≤ T) :
    Real.exp T / (8 * T) ≤ (Nat.primeCounting ⌊Real.exp T / 2⌋₊ : ℝ) := by
  have ht : 0 < T := by linarith
  have he := exp_large hT
  have heone : 1 ≤ Real.exp T := by nlinarith
  have hy : 1 < Real.exp T / 2 := by nlinarith
  have hl2 : (1/2 : ℝ) ≤ Real.log 2 := by
    have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h
    linarith
  have hl4 : Real.log 4 ≤ 3 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 4)
    norm_num at h
    exact h
  have hlogs : Real.log (Real.exp T / 2 + 2) ≤ T + 3 := by
    have hle : Real.exp T / 2 + 2 ≤ 4 * Real.exp T := by nlinarith
    calc
      Real.log (Real.exp T / 2 + 2) ≤ Real.log (4 * Real.exp T) :=
        Real.log_le_log (by positivity) hle
      _ = Real.log 4 + T := by rw [Real.log_mul (by norm_num) (Real.exp_ne_zero T), Real.log_exp]
      _ ≤ T + 3 := by linarith
  have hn : Real.exp T / 8 ≤
      (Real.exp T / 2 - 1) * Real.log 2 - Real.log (Real.exp T / 2 + 2) := by
    have hm := mul_le_mul_of_nonneg_left hl2 (show 0 ≤ Real.exp T / 2 - 1 by linarith)
    nlinarith
  have hden : Real.log (Real.exp T / 2) ≤ T := by
    calc
      Real.log (Real.exp T / 2) ≤ Real.log (Real.exp T) :=
        Real.log_le_log (by positivity) (by nlinarith [Real.exp_pos T])
      _ = T := Real.log_exp T
  have hlpos : 0 < Real.log (Real.exp T / 2) := Real.log_pos hy
  calc
    Real.exp T / (8 * T) = (Real.exp T / 8) / T := by ring
    _ ≤ ((Real.exp T / 2 - 1) * Real.log 2 - Real.log (Real.exp T / 2 + 2)) / T :=
      div_le_div_of_nonneg_right hn ht.le
    _ ≤ ((Real.exp T / 2 - 1) * Real.log 2 - Real.log (Real.exp T / 2 + 2)) /
        Real.log (Real.exp T / 2) :=
      div_le_div_of_nonneg_left (by nlinarith [Real.exp_pos T]) hlpos hden
    _ ≤ (Nat.primeCounting ⌊Real.exp T / 2⌋₊ : ℝ) := Chebyshev.pi_ge' hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PrimeIntervalResponseEnergyGrowth/Variant011b939194620cdeee8337948d33bdc27a5fc5b6394d907e14dc2d7f479574c3.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
