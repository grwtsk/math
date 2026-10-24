# actual_translate_add_product_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45277d23d54d7018eff4b47dabb52a01200b9305",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2343010d-9c72-b4de-9237-9e78840bd4c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8cc04b72-822b-9907-64cc-ca90775ac0ae",
  "kind": "theorem",
  "lexical_name": "actual_translate_add_product_hasDerivAt",
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
  "slug": "actual-translate-add-product-hasderivat--90d9acd4c87e3d797729c3c9",
  "source": {
    "blob": "45277d23d54d7018eff4b47dabb52a01200b9305",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90d9acd4c87e3d797729c3c956c659b02a433ded262905a99d84d951aabd2514",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cc04b72-822b-9907-64cc-ca90775ac0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_translate_add_product_hasDerivAt (A : ℝ) (hA : 0 < A)
    (g : ℝ → ℝ) (hg : Integrable g) (t : ℝ) :
    HasDerivAt (fun s => ∫ x : ℝ, g x *
      deriv (normalizedTest explicitSecondDerivative A) (x + s))
      (∫ x : ℝ, g x * actualSecondProfile A (x + t)) t := by
  have hd := (actual_translate_product_hasDerivAt A hA g hg (-t)).comp t
    (hasDerivAt_neg t)
  simpa only [Function.comp_def, sub_neg_eq_add, neg_mul, mul_neg, neg_neg, mul_one] using hd

/-- The actual third derivative is the signed mixed second/first-profile correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45277d23d54d7018eff4b47dabb52a01200b9305` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
