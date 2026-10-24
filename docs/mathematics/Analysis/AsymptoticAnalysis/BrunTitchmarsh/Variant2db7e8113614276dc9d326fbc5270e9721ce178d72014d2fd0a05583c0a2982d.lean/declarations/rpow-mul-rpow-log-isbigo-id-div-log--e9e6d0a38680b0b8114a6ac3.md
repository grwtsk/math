# rpow_mul_rpow_log_isBigO_id_div_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e586f4bec3fa69d76499efc20cd4350c0ea483e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4729a599-a3f0-63d7-b0e9-668bf2bd0f98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63b2a21a-3db3-66b9-9c99-a0b03ce4278c",
  "kind": "theorem",
  "lexical_name": "rpow_mul_rpow_log_isBigO_id_div_log",
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
  "slug": "rpow-mul-rpow-log-isbigo-id-div-log--e9e6d0a38680b0b8114a6ac3",
  "source": {
    "blob": "5e586f4bec3fa69d76499efc20cd4350c0ea483e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 304,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9e6d0a38680b0b8114a6ac390aa61a9a582125ef6f766cd084f92794eef643b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63b2a21a-3db3-66b9-9c99-a0b03ce4278c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_mul_rpow_log_isBigO_id_div_log (k : ℝ) {r : ℝ} (hr : r < 1) :
    (fun x ↦ (x : ℝ) ^ (r : ℝ) * (Real.log x) ^ k) =O[atTop]
      (fun x ↦ x / Real.log x) := calc
  (fun x ↦ (x : ℝ) ^ (r : ℝ) * (Real.log x) ^ k) =O[atTop]
      (fun x ↦ (x : ℝ) ^ (r : ℝ) * x ^ ((1-r)/2 : ℝ)) := by
    apply IsBigO.mul (isBigO_refl ..)
    apply (isLittleO_log_rpow_rpow_atTop k (by linarith) ..).isBigO
  _ =ᶠ[atTop] (fun N ↦ (N : ℝ) * (N ^ ((1-r)/2 : ℝ))⁻¹) := by
    filter_upwards [Filter.eventually_gt_atTop 0]
    intro N hN
    trans (N ^ (1 : ℝ) * (N ^ ((1-r)/2 : ℝ))⁻¹)
    · rw [← Real.rpow_add hN, ← Real.rpow_neg hN.le, ← Real.rpow_add hN]
      ring_nf
    · rw [← Nat.cast_one, Real.rpow_natCast, pow_one]
  _ =O[atTop] (fun N ↦ (N : ℝ) * (Real.log N)⁻¹) := by
    apply IsBigO.mul (isBigO_refl ..)
    apply IsBigO.inv_rev
    · apply (isLittleO_log_rpow_atTop (by linarith) ..).isBigO
    · filter_upwards [Filter.eventually_gt_atTop 1]
      intro N hN hcontra
      linarith [Real.log_pos hN]
  _ = (fun N ↦ (N : ℝ)/(Real.log N)) := by
    simp_rw [div_eq_mul_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant2db7e8113614276dc9d326fbc5270e9721ce178d72014d2fd0a05583c0a2982d.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e586f4bec3fa69d76499efc20cd4350c0ea483e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
