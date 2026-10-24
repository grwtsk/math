# numDerangements_tendsto_inv_e

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5cce6f4-8a1c-b147-47c7-f76214eb3340",
  "kind": "theorem",
  "lexical_name": "numDerangements_tendsto_inv_e",
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
  "slug": "numderangements-tendsto-inv-e--02274c21c51a3048f21fd770",
  "source": {
    "blob": "011d30ea4b8057973e58868fe715aaf6abfafcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 34,
    "path": "GRWTSK/Topology/GeneralTopology/Exponential/Variant7ccfffdc17ca89bfd627d309f9ad9b04888303e7c3830ae6e3cc052769dd49e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02274c21c51a3048f21fd77082deb4def260ebec8179f57b3235a7ec5776ce6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exponential/Variant7ccfffdc17ca89bfd627d309f9ad9b04888303e7c3830ae6e3cc052769dd49e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5cce6f4-8a1c-b147-47c7-f76214eb3340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem numDerangements_tendsto_inv_e :
    Tendsto (fun n => (numDerangements n : ℝ) / n.factorial) atTop (𝓝 (Real.exp (-1))) := by
  -- we show that d(n)/n! is the partial sum of exp(-1), but offset by 1.
  -- this isn't entirely obvious, since we have to ensure that asc_factorial and
  -- factorial interact in the right way, e.g., that k ≤ n always
  let s : ℕ → ℝ := fun n => ∑ k in Finset.range n, (-1 : ℝ) ^ k / k.factorial
  suffices ∀ n : ℕ, (numDerangements n : ℝ) / n.factorial = s (n + 1) by
    simp_rw [this]
    -- shift the function by 1, and then use the fact that the partial sums
    -- converge to the infinite sum
    rw [tendsto_add_atTop_iff_nat
      (f := fun n => ∑ k in Finset.range n, (-1 : ℝ) ^ k / k.factorial) 1]
    apply HasSum.tendsto_sum_nat
    -- there's no specific lemma for ℝ that ∑ x^k/k! sums to exp(x), but it's
    -- true in more general fields, so use that lemma
    rw [Real.exp_eq_exp_ℝ]
    exact expSeries_div_hasSum_exp ℝ (-1 : ℝ)
  intro n
  rw [← Int.cast_ofNat, numDerangements_sum]
  push_cast
  rw [Finset.sum_div]
  -- get down to individual terms
  refine' Finset.sum_congr (refl _) _
  intro k hk
  have h_le : k ≤ n := Finset.mem_range_succ_iff.mp hk
  rw [Nat.ascFactorial_eq_div, add_tsub_cancel_of_le h_le]
  push_cast [Nat.factorial_dvd_factorial h_le]
  field_simp [Nat.factorial_ne_zero]
  ring
#align num_derangements_tendsto_inv_e numDerangements_tendsto_inv_e
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exponential/Variant7ccfffdc17ca89bfd627d309f9ad9b04888303e7c3830ae6e3cc052769dd49e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exponential/Variant7ccfffdc17ca89bfd627d309f9ad9b04888303e7c3830ae6e3cc052769dd49e5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011d30ea4b8057973e58868fe715aaf6abfafcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
