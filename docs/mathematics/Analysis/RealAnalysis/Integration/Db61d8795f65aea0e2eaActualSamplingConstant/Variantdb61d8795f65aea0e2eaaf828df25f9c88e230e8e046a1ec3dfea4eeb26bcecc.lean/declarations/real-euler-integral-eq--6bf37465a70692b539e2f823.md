# real_euler_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e61c2f1c423bd53ca0a4047879e0ff0934c4aa1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47644d5b-782a-7b6c-8da9-53cbfefcc696",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48ff5344-e014-d4b3-5ee5-b271697818ee",
  "kind": "theorem",
  "lexical_name": "real_euler_integral_eq",
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
  "slug": "real-euler-integral-eq--6bf37465a70692b539e2f823",
  "source": {
    "blob": "e61c2f1c423bd53ca0a4047879e0ff0934c4aa1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bf37465a70692b539e2f82372b1edce79f91df7834fc3ab840db26a8681f6e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48ff5344-e014-d4b3-5ee5-b271697818ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_euler_integral_eq :
    (∫ u in Ioi (1 : ℝ), ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-(3 : ℝ) / 2)) =
      1 - ∫ u in Ioi (1 : ℝ), coefficientWeight 0 u := by
  have hi : IntegrableOn (fun u : ℝ ↦ u ^ (-(3 : ℝ) / 2)) (Ioi 1) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) (by norm_num)
  have hw := (coefficientWeight_integrable 0).mono_set
    (Ioi_subset_Ioi (by norm_num : (0 : ℝ) ≤ 1))
  have he : (fun u : ℝ ↦ ((⌊u⌋ : ℝ) + 1 / 2 - u) * u ^ (-(3 : ℝ) / 2)) =
      fun u ↦ (1 / 2 : ℝ) * u ^ (-(3 : ℝ) / 2) - coefficientWeight 0 u := by
    funext u
    simp only [coefficientWeight, pow_zero, mul_one, Int.fract]
    ring
  rw [he, integral_sub (hi.const_mul _) hw, integral_const_mul,
    integral_Ioi_rpow_of_lt (by norm_num) (by norm_num)]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Db61d8795f65aea0e2eaActualSamplingConstant/Variantdb61d8795f65aea0e2eaaf828df25f9c88e230e8e046a1ec3dfea4eeb26bcecc.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e61c2f1c423bd53ca0a4047879e0ff0934c4aa1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
