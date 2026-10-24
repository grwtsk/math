# reflectedMoment_eq_neg_negativeHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "083f03b018d616e82b33800b2053ec3fcc41888d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71bb1203-d3fb-a5cf-2ebd-e64441501616",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0567ffed-1074-242a-9a83-dc2a3b4a3110",
  "kind": "theorem",
  "lexical_name": "reflectedMoment_eq_neg_negativeHalf",
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
  "slug": "reflectedmoment-eq-neg-negativehalf--8f6d11dfac0cd14e5e096602",
  "source": {
    "blob": "083f03b018d616e82b33800b2053ec3fcc41888d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 165,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f6d11dfac0cd14e5e096602c8efba9eeefbd2363f1eec0c097b944724b84519",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0567ffed-1074-242a-9a83-dc2a3b4a3110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedMoment_eq_neg_negativeHalf
    {F : ℝ → ℝ} (_hF : TwoMomentProfile F)
    (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), reflectedMomentIntegrand F s r) =
      -(∫ r in Iic (0 : ℝ), shiftedMomentIntegrand F s r) := by
  have h :=
    integral_comp_neg_Iic
      (0 : ℝ)
      (reflectedMomentIntegrand F s)
  have heq :
      (fun r : ℝ =>
        reflectedMomentIntegrand F s (-r)) =
      fun r =>
        -shiftedMomentIntegrand F s r := by
    funext r
    unfold reflectedMomentIntegrand shiftedMomentIntegrand
    simp only [neg_neg, sub_neg_eq_add, neg_mul]
  simp only [neg_zero] at h
  rw [← h, heq, integral_neg]

/-- Exact two-moment reflection identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083f03b018d616e82b33800b2053ec3fcc41888d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
