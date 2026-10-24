# eta_eq_zeta_of_one_lt_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0233afeef45f71937e064fb9ff8f203d38c0343b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7cdf78-757b-7914-2a1e-b1d2396559b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ea7519-29e2-c2db-e577-be8793d7f366",
  "kind": "theorem",
  "lexical_name": "eta_eq_zeta_of_one_lt_re",
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
  "slug": "eta-eq-zeta-of-one-lt-re--f834bbd6134f94f5d29020d5",
  "source": {
    "blob": "0233afeef45f71937e064fb9ff8f203d38c0343b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 86,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f834bbd6134f94f5d29020d5a49c11985a0934d31bafe84b4ae20c1cd650c5f4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ea7519-29e2-c2db-e577-be8793d7f366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eta_eq_zeta_of_one_lt_re {z : ℂ} (hz : 1 < z.re) :
    eta z = (1 - (2 : ℂ) ^ (1 - z)) * riemannZeta z := by
  let a : ℕ → ℂ := fun n ↦ (n + 1 : ℂ) ^ (-z)
  have ha : Summable a := by
    have hh : Summable (fun n : ℕ ↦ 1 / (n : ℂ) ^ z) :=
      Complex.summable_one_div_nat_cpow.mpr hz
    have ht := (summable_nat_add_iff 1).mpr hh
    simpa only [a, cpow_neg, one_div, Nat.cast_add, Nat.cast_one] using ht
  have he : Summable (fun n ↦ a (2*n)) := ha.comp_injective (by intro n m h; change 2*n=2*m at h; omega)
  have ho : Summable (fun n ↦ a (2*n+1)) := ha.comp_injective (by intro n m h; dsimp only at h; omega)
  have ht : (∑' n, a n) = riemannZeta z := by
    simpa only [a, cpow_neg, one_div] using (zeta_eq_tsum_one_div_nat_add_one_cpow hz).symm
  have hsum := tsum_even_add_odd he ho
  have heven : (∑' n, a (2*n+1)) = (2 : ℂ)^(-z) * riemannZeta z := by
    rw [← ht, ← tsum_mul_left]
    congr 1
    funext n
    simp only [a, Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat]
    have hh := mul_cpow_ofReal_nonneg (a := 2) (b := n+1) (by norm_num) (by positivity) (-z)
    simpa only [ofReal_mul, ofReal_add, ofReal_natCast, ofReal_ofNat, ofReal_one, mul_add, mul_one,
      add_assoc, one_add_one_eq_two] using hh
  have hp : eta z = (∑' n, a (2*n)) - ∑' n, a (2*n+1) := by
    rw [← he.tsum_sub ho]
    unfold eta
    congr 1
    funext n
    simp only [a, pair, Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_ofNat, add_assoc,
      one_add_one_eq_two]
  rw [hp, heven]
  rw [heven, ht] at hsum
  have hpow : (2 : ℂ) ^ (1-z) = 2 * (2 : ℂ)^(-z) := by
    rw [sub_eq_add_neg, cpow_add _ _ (by norm_num), cpow_one]
  rw [hpow]
  linear_combination hsum

#print axioms eta_eq_zeta_of_one_lt_re

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroEta/Variant3564d7dcf315905f9ca65b195f3c0c67546950c85e53f29ee481f9e5c83dfea9.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0233afeef45f71937e064fb9ff8f203d38c0343b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
