# setIntegral_Ioc_leftLim_vectorMeasure_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "762735ed2b332c5bec324032d308dad123239dcb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dce7a76-039d-3d88-606c-7b745924d322",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04efefb4-38ef-5b61-25cc-9f0ca82b7eef",
  "kind": "theorem",
  "lexical_name": "setIntegral_Ioc_leftLim_vectorMeasure_eq_sub",
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
  "slug": "setintegral-ioc-leftlim-vectormeasure-eq-sub--cf0661508ce71f0852743058",
  "source": {
    "blob": "762735ed2b332c5bec324032d308dad123239dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf0661508ce71f085274305827b3c6801ba3574b675ba7110aabd9152ee0594b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04efefb4-38ef-5b61-25cc-9f0ca82b7eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_Ioc_leftLim_vectorMeasure_eq_sub
    (hf : BoundedVariationOn f univ) (hg : BoundedVariationOn g univ) (hab : a ≤ b) :
    ∫ᵛ x in Ioc a b, f.leftLim x ∂[B; hg.vectorMeasure] =
      B (f.rightLim b) (g.rightLim b) - B (f.rightLim a) (g.rightLim a)
      - ∫ᵛ x in Ioc a b, g.rightLim x ∂[B.flip; hf.vectorMeasure] := by
  rw [hf.setIntegral_leftLim_vectorMeasure_eq_sub hg]
  simp [hab, hf, hg]

/-- *Integration by parts* for Stieltjes vector measure, between `f.rightLim dg` and `g.leftLim df`.
Version with a general pairing function `B`, over an interval `(a, b]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variantddd93ebd71d83db073c5062bdae07492b928cf3e214bd2b4a98ee9aae4823b70.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `762735ed2b332c5bec324032d308dad123239dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
