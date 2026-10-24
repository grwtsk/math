# abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf7513ee-5199-40ff-e825-f4d5ea4f2374",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e164c4c-568f-0e45-5bb3-c64b7820af2c",
  "kind": "theorem",
  "lexical_name": "abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt",
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
  "slug": "abs-integral-sub-setintegral-mulexpnegmulsq-comp-lt--fba97e045cba5a87a3206335",
  "source": {
    "blob": "9710a5608d8e461dce2e62bdc919b68a4dc9b10f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba97e045cba5a87a3206335f5b09b8919141812db6b165f3ce42e17c4d1d9fe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e164c4c-568f-0e45-5bb3-c64b7820af2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_integral_sub_setIntegral_mulExpNegMulSq_comp_lt (f : C(E, ℝ))
    {K : Set E} (hK : MeasurableSet K) (hε : 0 < ε) (hKP : P Kᶜ < ε.toNNReal) :
    |∫ x, mulExpNegMulSq ε (f x) ∂P - ∫ x in K, mulExpNegMulSq ε (f x) ∂P| < √ε := by
  apply lt_of_le_of_lt (norm_integral_sub_setIntegral_le
    (Eventually.of_forall (fun _ => abs_mulExpNegMulSq_le hε)) hK
    (integrable_mulExpNegMulSq_comp f hε))
  rw [mul_inv_lt_iff₀ (sqrt_pos_of_pos hε), mul_self_sqrt (le_of_lt hε)]
  exact toReal_lt_of_lt_ofReal hKP

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MulExpNegMulSqIntegral/Variant7a87d3b9d16424b158f7d4ad10f97cdd5c3f6c877a9f783ab484a9140abacf28.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9710a5608d8e461dce2e62bdc919b68a4dc9b10f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
