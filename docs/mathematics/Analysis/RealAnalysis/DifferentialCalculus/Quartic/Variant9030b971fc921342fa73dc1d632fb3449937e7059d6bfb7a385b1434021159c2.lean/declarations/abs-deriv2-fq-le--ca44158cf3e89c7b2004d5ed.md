# abs_deriv2_fQ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4af68999694eed7a92ae7ce5929aa3a6582582b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c20438f-de16-ac29-4097-be9bfdd680f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:385b7672-fb53-5003-a336-ab3854b24ae5",
  "kind": "lemma",
  "lexical_name": "abs_deriv2_fQ_le",
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
  "slug": "abs-deriv2-fq-le--ca44158cf3e89c7b2004d5ed",
  "source": {
    "blob": "4af68999694eed7a92ae7ce5929aa3a6582582b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca44158cf3e89c7b2004d5ed62f5a73cd65b782154cb529b845935b1495379de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:385b7672-fb53-5003-a336-ab3854b24ae5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_deriv2_fQ_le (hL : 0 < L) {u : ℝ} (hu : |u| ≤ L / 2) : |deriv (deriv (fQ L)) u| ≤ 12 / L ^ 2 := by
  set U : Set ℝ := Ioo (-(L / 2 + L / 10)) (L / 2 + L / 10) with hUdef
  have hU : IsOpen U := isOpen_Ioo
  have hmemU : ∀ v, |v| < L / 2 + L / 10 → v ∈ U := fun v hv => by
    simp only [hUdef, mem_Ioo]; constructor <;> linarith [neg_abs_le v, le_abs_self v]
  have huU : u ∈ U := hmemU u (by linarith)
  have hsm := fQ_contDiffOn hL
  -- h'' = 2 f_Q f_Q'' + 2 f_Q'² : second derivatives agree on U since the functions agree on U
  have hd1 : ∀ v ∈ U, deriv (fun x => fQ L x * fQ L x) v = deriv (hQ L) v := by
    intro v hv
    have hev : (fun x => fQ L x * fQ L x) =ᶠ[nhds v] hQ L := by
      filter_upwards [hU.mem_nhds hv] with x hx using fQ_mul_self_of_mem hL hx
    exact hev.deriv_eq
  have hev2 : deriv (fun x => fQ L x * fQ L x) =ᶠ[nhds u] deriv (hQ L) := by
    filter_upwards [hU.mem_nhds huU] with v hv using hd1 v hv
  have hd2 : deriv (deriv (hQ L)) u
      = deriv (deriv (fQ L)) u * fQ L u + 2 * (deriv (fQ L) u * deriv (fQ L) u)
        + fQ L u * deriv (deriv (fQ L)) u := by
    rw [← hev2.deriv_eq]; exact deriv2_mul_eq hU hsm hsm huU
  have hf := fQ_core_ge hL hu
  have h1 := abs_deriv_fQ_le hL hu
  have h2 := abs_deriv2_hQ_le hL hu
  have e : deriv (deriv (fQ L)) u
      = (deriv (deriv (hQ L)) u - 2 * (deriv (fQ L) u * deriv (fQ L) u)) / (2 * fQ L u) := by
    rw [hd2]; field_simp; ring
  rw [e, abs_div, abs_of_pos (by linarith : 0 < 2 * fQ L u), div_le_div_iff₀ (by linarith) (by positivity)]
  have hsq : |deriv (fQ L) u| ^ 2 ≤ (3 / 2 / L) ^ 2 := pow_le_pow_left₀ (abs_nonneg _) h1 2
  have hL2 : 0 < L ^ 2 := by positivity
  calc |deriv (deriv (hQ L)) u - 2 * (deriv (fQ L) u * deriv (fQ L) u)| * L ^ 2
      ≤ (|deriv (deriv (hQ L)) u| + 2 * |deriv (fQ L) u| ^ 2) * L ^ 2 := by
        gcongr
        calc |deriv (deriv (hQ L)) u - 2 * (deriv (fQ L) u * deriv (fQ L) u)|
            ≤ |deriv (deriv (hQ L)) u| + |2 * (deriv (fQ L) u * deriv (fQ L) u)| := abs_sub _ _
          _ = |deriv (deriv (hQ L)) u| + 2 * |deriv (fQ L) u| ^ 2 := by
              rw [abs_mul, abs_two, abs_mul, sq]
    _ ≤ (64 / 5 / L ^ 2 + 2 * (3 / 2 / L) ^ 2) * L ^ 2 := by gcongr
    _ = 64 / 5 + 9 / 2 := by field_simp; ring
    _ ≤ 12 * (2 * (4 / 5)) := by norm_num
    _ ≤ 12 * (2 * fQ L u) := by gcongr

/-! ### the ModFactor instance and the admissible window -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant9030b971fc921342fa73dc1d632fb3449937e7059d6bfb7a385b1434021159c2.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af68999694eed7a92ae7ce5929aa3a6582582b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
