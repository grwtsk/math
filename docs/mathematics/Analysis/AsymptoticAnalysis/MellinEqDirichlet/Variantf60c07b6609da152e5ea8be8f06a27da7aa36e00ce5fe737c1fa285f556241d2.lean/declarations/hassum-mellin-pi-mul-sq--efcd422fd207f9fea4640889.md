# hasSum_mellin_pi_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a23c30ad74e718e34e9fe79edeae6aa8af845d90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57ed4155-52ee-395d-7142-38d0bcc0c05b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d823bbde-52d1-448e-e93e-73f3e5696b06",
  "kind": "lemma",
  "lexical_name": "hasSum_mellin_pi_mul_sq",
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
  "slug": "hassum-mellin-pi-mul-sq--efcd422fd207f9fea4640889",
  "source": {
    "blob": "a23c30ad74e718e34e9fe79edeae6aa8af845d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 118,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efcd422fd207f9fea4640889b26591d2382a5fa0c9a3a02aae7dadcbce696027",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d823bbde-52d1-448e-e93e-73f3e5696b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_mellin_pi_mul_sq {a : ι → ℂ} {r : ι → ℝ} {F : ℝ → ℂ} {s : ℂ} (hs : 0 < s.re)
    (hF : ∀ t ∈ Ioi 0, HasSum (fun i ↦ if r i = 0 then 0 else a i * rexp (-π * r i ^ 2 * t)) (F t))
    (h_sum : Summable fun i ↦ ‖a i‖ / |r i| ^ s.re) :
    HasSum (fun i ↦ Gammaℝ s * a i / |r i| ^ s) (mellin F (s / 2)) := by
  have hs' : 0 < (s / 2).re := by rw [div_ofNat_re]; positivity
  simp_rw [← sq_eq_zero_iff (a := r _)] at hF
  convert! hasSum_mellin_pi_mul₀ (fun i ↦ sq_nonneg (r i)) hs' hF ?_ using 3 with i
  · rw [← neg_div, Gammaℝ_def]
  · rw [← sq_abs, ofReal_pow, ← cpow_nat_mul']
    · ring_nf
    all_goals rw [arg_ofReal_of_nonneg (abs_nonneg _)]; linarith [pi_pos]
  · convert! h_sum using 3 with i
    rw [← sq_abs, ← rpow_natCast_mul (abs_nonneg _), div_ofNat_re, Nat.cast_ofNat,
      mul_div_cancel₀ _ two_pos.ne']

/-- Tailored version for odd Jacobi theta functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MellinEqDirichlet/Variantf60c07b6609da152e5ea8be8f06a27da7aa36e00ce5fe737c1fa285f556241d2.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a23c30ad74e718e34e9fe79edeae6aa8af845d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
