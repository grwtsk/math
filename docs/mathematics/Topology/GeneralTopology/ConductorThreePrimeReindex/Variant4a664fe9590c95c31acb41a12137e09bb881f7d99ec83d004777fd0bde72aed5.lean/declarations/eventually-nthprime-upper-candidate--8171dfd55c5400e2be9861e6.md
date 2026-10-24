# eventually_nthPrime_upper_candidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15a151b0-b5d9-7cb0-0223-8cd0aaa0232d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c76a090c-5bda-474b-4b9a-b5399267653b",
  "kind": "theorem",
  "lexical_name": "eventually_nthPrime_upper_candidate",
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
  "slug": "eventually-nthprime-upper-candidate--8171dfd55c5400e2be9861e6",
  "source": {
    "blob": "1062b5fa7329ef1f6dd1a17ef544067d18c2647c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 374,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8171dfd55c5400e2be9861e6808fdb5b767ab03f90fa247dedf2da340a0dcc10",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c76a090c-5bda-474b-4b9a-b5399267653b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nthPrime_upper_candidate :
    ∀ᶠ n : ℕ in atTop, Nat.nth Nat.Prime (n + 1) ≤ primeUpperCandidate n := by
  have hpi := tendsto_primeUpperCandidate eventually_primeCounting_lower
  filter_upwards [hpi, eventually_ge_atTop 40] with n hpi hn
  let q : ℕ := ⌈Real.log n⌉₊
  let x : ℕ := primeUpperCandidate n
  have hnpos : (0 : ℝ) < n := by positivity
  have hlogn : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hqpos : 0 < q := Nat.ceil_pos.2 hlogn
  have hxpos_nat : 0 < x := by unfold x primeUpperCandidate; positivity
  have hx40 : 40 ≤ x := by
    unfold x primeUpperCandidate
    calc
      40 = 40 * 1 * 1 := by norm_num
      _ ≤ 40 * n * q := Nat.mul_le_mul (Nat.mul_le_mul le_rfl (by omega)) (by omega)
  have hxpos : (0 : ℝ) < x := by exact_mod_cast hxpos_nat
  have hq_le : q ≤ n := Nat.ceil_le.2 <| by
    exact (Real.log_le_sub_one_of_pos hnpos).trans (by norm_num)
  have hx_le_pow_nat : x ≤ n ^ 4 := by
    unfold x primeUpperCandidate
    have h40nn : 40 ≤ n * n := hn.trans (Nat.le_mul_of_pos_right n (by omega))
    calc
      40 * n * q ≤ 40 * n * n := Nat.mul_le_mul_left (40 * n) hq_le
      _ = 40 * (n * n) := by ring
      _ ≤ (n * n) * (n * n) := Nat.mul_le_mul_right (n * n) h40nn
      _ = n ^ 4 := by ring
  have hx_le_pow : (x : ℝ) ≤ (n : ℝ) ^ 4 := by exact_mod_cast hx_le_pow_nat
  have hlogx : 0 < Real.log (x : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < x by omega))
  have hlogx_le : Real.log (x : ℝ) ≤ 4 * Real.log (n : ℝ) := by
    calc
      Real.log (x : ℝ) ≤ Real.log ((n : ℝ) ^ 4) := Real.log_le_log hxpos hx_le_pow
      _ = 4 * Real.log (n : ℝ) := by rw [Real.log_pow]; norm_num
  have hx_lower : 40 * (n : ℝ) * Real.log n ≤ (x : ℝ) := by
    calc
      40 * (n : ℝ) * Real.log n ≤ 40 * (n : ℝ) * (q : ℝ) :=
        mul_le_mul_of_nonneg_left (Nat.le_ceil (Real.log (n : ℝ))) (by positivity)
      _ = (x : ℝ) := by simp [x, primeUpperCandidate, q]
  have hlog2half : (1 / 2 : ℝ) ≤ Real.log 2 := by
    have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h ⊢
    exact h
  have hfive : (n + 2 : ℝ) ≤ 5 * Real.log 2 * n := by
    have hnr : (40 : ℝ) ≤ n := by exact_mod_cast hn
    nlinarith
  have hcritical : 5 * Real.log 2 * n ≤
      (Real.log 2 / 2) * (x : ℝ) / Real.log x := by
    have hnum : (Real.log 2 / 2) * (40 * (n : ℝ) * Real.log n) ≤
        (Real.log 2 / 2) * (x : ℝ) :=
      mul_le_mul_of_nonneg_left hx_lower (by positivity)
    calc
      5 * Real.log 2 * n =
          (Real.log 2 / 2) * (40 * (n : ℝ) * Real.log n) /
            (4 * Real.log n) := by field_simp; ring
      _ ≤ (Real.log 2 / 2) * (x : ℝ) / (4 * Real.log n) :=
        (div_le_div_iff_of_pos_right (by positivity : (0 : ℝ) < 4 * Real.log n)).2 hnum
      _ ≤ (Real.log 2 / 2) * (x : ℝ) / Real.log x :=
        (div_le_div_iff_of_pos_left (by positivity) (by positivity) hlogx).2 hlogx_le
  have hcount_real : (n + 2 : ℝ) ≤ (Nat.primeCounting x : ℕ) :=
    hfive.trans (hcritical.trans hpi)
  have hcount : n + 2 ≤ Nat.primeCounting x := by exact_mod_cast hcount_real
  have hnlt' : n + 1 < Nat.primeCounting x := by omega
  have hnlt : n + 1 < Nat.count Nat.Prime (x + 1) := by
    simpa [Nat.primeCounting, Nat.primeCounting'] using hnlt'
  exact Nat.lt_succ_iff.mp (Nat.nth_lt_of_lt_count hnlt)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variant4a664fe9590c95c31acb41a12137e09bb881f7d99ec83d004777fd0bde72aed5.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1062b5fa7329ef1f6dd1a17ef544067d18c2647c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
