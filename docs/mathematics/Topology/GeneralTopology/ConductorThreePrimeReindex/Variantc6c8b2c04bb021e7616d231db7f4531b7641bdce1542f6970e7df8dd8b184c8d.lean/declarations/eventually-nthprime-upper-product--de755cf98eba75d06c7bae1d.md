# eventually_nthPrime_upper_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52843edd-42dd-44fc-a559-799485a345c5",
  "kind": "theorem",
  "lexical_name": "eventually_nthPrime_upper_product",
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
  "slug": "eventually-nthprime-upper-product--de755cf98eba75d06c7bae1d",
  "source": {
    "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 447,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de755cf98eba75d06c7bae1d240e16e5443b6b0acacceb39977cd29c7ac13b0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52843edd-42dd-44fc-a559-799485a345c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nthPrime_upper_product :
    ∀ᶠ n : ℕ in atTop,
      (Nat.nth Nat.Prime (n + 1) : ℝ) ≤ 80 * (n : ℝ) * Real.log n := by
  filter_upwards [eventually_nthPrime_upper_candidate, eventually_ge_atTop 8] with n hnth hn
  let q : ℕ := ⌈Real.log n⌉₊
  have hnpos : (0 : ℝ) < n := by positivity
  have hlogn : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hlog2half : (1 / 2 : ℝ) ≤ Real.log 2 := by
    have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h ⊢
    exact h
  have hlog8 : (1 : ℝ) ≤ Real.log 8 := by
    rw [show (8 : ℝ) = 2 ^ 3 by norm_num, Real.log_pow]
    norm_num
    linarith
  have hlogn_one : (1 : ℝ) ≤ Real.log n := by
    refine hlog8.trans (Real.log_le_log (by norm_num) ?_)
    exact_mod_cast hn
  have hqcast : (q : ℝ) ≤ 2 * Real.log n := by
    have hceil := (Nat.ceil_lt_add_one hlogn.le).le
    dsimp only [q]
    exact hceil.trans (by linarith)
  calc
    (Nat.nth Nat.Prime (n + 1) : ℝ) ≤ (primeUpperCandidate n : ℕ) := by exact_mod_cast hnth
    _ = 40 * (n : ℝ) * (q : ℝ) := by simp [primeUpperCandidate, q]
    _ ≤ 40 * (n : ℝ) * (2 * Real.log n) :=
      mul_le_mul_of_nonneg_left hqcast (by positivity)
    _ = 80 * (n : ℝ) * Real.log n := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
