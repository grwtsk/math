# eventually_primeCounting_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92d91042-884d-371f-9c5c-50f2a083c147",
  "kind": "theorem",
  "lexical_name": "eventually_primeCounting_lower",
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
  "slug": "eventually-primecounting-lower--0d9d71fdbffc7e63d37a939e",
  "source": {
    "blob": "db8181eba682ff15d4baf598fbcb3c8815994841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9d71fdbffc7e63d37a939ebc9698c09399bf6640af32c8adb39cc6b90ccb80",
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

Occurrence: `result:92d91042-884d-371f-9c5c-50f2a083c147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_primeCounting_lower :
    ∀ᶠ n : ℕ in atTop,
      (Real.log 2 / 2) * (n : ℝ) / Real.log n ≤ (Nat.primeCounting n : ℕ) := by
  have hlog2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hsmallReal := Real.isLittleO_log_id_atTop.bound (div_pos hlog2 (by norm_num : (0 : ℝ) < 4))
  have ht : Tendsto (fun n : ℕ ↦ (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right atTop 1 tendsto_natCast_atTop_atTop
  have hsmall := ht hsmallReal
  filter_upwards [hsmall, eventually_ge_atTop 2] with n hsmall hn
  have hnpos : (0 : ℝ) < n := by positivity
  have hn1pos : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hn1one : (1 : ℝ) ≤ (n : ℝ) + 1 := by linarith [hnpos]
  have hlogn : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hsmall' : Real.log ((n : ℝ) + 1) ≤ (Real.log 2 / 4) * ((n : ℝ) + 1) := by
    simpa [Real.norm_eq_abs, abs_of_nonneg (Real.log_nonneg hn1one), abs_of_pos hn1pos] using hsmall
  have hn1_le : ((n : ℝ) + 1) ≤ 2 * n := by exact_mod_cast (show n + 1 ≤ 2 * n by omega)
  have herror : Real.log ((n : ℝ) + 1) ≤ (Real.log 2 / 2) * n := by
    calc
      Real.log ((n : ℝ) + 1) ≤ (Real.log 2 / 4) * ((n : ℝ) + 1) := hsmall'
      _ ≤ (Real.log 2 / 4) * (2 * n) := mul_le_mul_of_nonneg_left hn1_le (by positivity)
      _ = (Real.log 2 / 2) * n := by ring
  calc
    (Real.log 2 / 2) * (n : ℝ) / Real.log n ≤
        ((n : ℝ) * Real.log 2 - Real.log ((n : ℝ) + 1)) / Real.log n := by
      exact (div_le_div_iff_of_pos_right hlogn).2 (by linarith)
    _ ≤ (Nat.primeCounting n : ℕ) := Chebyshev.pi_ge n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConductorThreePrimeReindex/Variantc6c8b2c04bb021e7616d231db7f4531b7641bdce1542f6970e7df8dd8b184c8d.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db8181eba682ff15d4baf598fbcb3c8815994841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
