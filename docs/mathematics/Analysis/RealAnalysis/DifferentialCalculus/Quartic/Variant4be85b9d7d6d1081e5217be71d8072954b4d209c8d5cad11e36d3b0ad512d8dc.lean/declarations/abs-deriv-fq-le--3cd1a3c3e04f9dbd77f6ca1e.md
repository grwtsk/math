# abs_deriv_fQ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3616ba9-e596-5670-c8b4-2c8ba7b2a4fc",
  "kind": "lemma",
  "lexical_name": "abs_deriv_fQ_le",
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
  "slug": "abs-deriv-fq-le--3cd1a3c3e04f9dbd77f6ca1e",
  "source": {
    "blob": "85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cd1a3c3e04f9dbd77f6ca1e2f815ab91f66c98fcaa32f093d8ecde7831d8cad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3616ba9-e596-5670-c8b4-2c8ba7b2a4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_deriv_fQ_le (hL : 0 < L) {u : ℝ} (hu : |u| ≤ L / 2) : |deriv (fQ L) u| ≤ 3 / 2 / L := by
  set U : Set ℝ := Ioo (-(L / 2 + L / 10)) (L / 2 + L / 10) with hUdef
  have hU : IsOpen U := isOpen_Ioo
  have huU : u ∈ U := by
    simp only [hUdef, mem_Ioo]; constructor <;> linarith [neg_abs_le u, le_abs_self u]
  have hsm := fQ_contDiffOn hL
  -- h' = 2 f_Q f_Q'
  have hev : (fun v => fQ L v * fQ L v) =ᶠ[nhds u] hQ L := by
    filter_upwards [hU.mem_nhds huU] with v hv using fQ_mul_self_of_mem hL hv
  have hd : deriv (hQ L) u = deriv (fQ L) u * fQ L u + fQ L u * deriv (fQ L) u := by
    rw [← hev.deriv_eq]; exact deriv_mul_eq hU hsm hsm huU
  have hf := fQ_core_ge hL hu
  have hh := abs_deriv_hQ_le hL hu
  have e : deriv (fQ L) u = deriv (hQ L) u / (2 * fQ L u) := by
    rw [hd]; field_simp; ring
  rw [e, abs_div, abs_of_pos (by linarith : 0 < 2 * fQ L u)]
  rw [div_le_div_iff₀ (by linarith) hL]
  calc |deriv (hQ L) u| * L ≤ 58 / 25 / L * L := by gcongr
    _ = 58 / 25 := by field_simp
    _ ≤ 3 / 2 * (2 * (4 / 5)) := by norm_num
    _ ≤ 3 / 2 * (2 * fQ L u) := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
