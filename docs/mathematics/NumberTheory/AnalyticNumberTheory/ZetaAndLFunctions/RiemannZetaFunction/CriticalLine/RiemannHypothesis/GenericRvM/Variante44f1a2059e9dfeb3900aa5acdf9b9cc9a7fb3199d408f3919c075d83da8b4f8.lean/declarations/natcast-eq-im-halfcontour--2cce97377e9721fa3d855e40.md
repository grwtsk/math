# natCast_eq_im_halfContour

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29a5022721d4c466f23a8bb07e519816e03e05cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a40e14ad-a173-7015-0952-c7d5f4add4e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afa64765-c8ae-18aa-d407-59b07b422ad1",
  "kind": "theorem",
  "lexical_name": "natCast_eq_im_halfContour",
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
  "slug": "natcast-eq-im-halfcontour--2cce97377e9721fa3d855e40",
  "source": {
    "blob": "29a5022721d4c466f23a8bb07e519816e03e05cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cce97377e9721fa3d855e40df381d84394d32ab6df82691bc9f5d703e71ce11",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afa64765-c8ae-18aa-d407-59b07b422ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_eq_im_halfContour {N : ℕ}
    (hN : RectangleIntegral' F (-1 + T₁ * I) (2 + T₂ * I) = (N : ℂ))
    (hfold : RectangleIntegral F (-1 + T₁ * I) (2 + T₂ * I) = 2 * I * ((halfContour F T₁ T₂).im : ℂ)) :
    (N : ℝ) = (1 / Real.pi) * (halfContour F T₁ T₂).im := by
  have h := hN
  change (1 / (2 * Real.pi * I)) • RectangleIntegral _ _ _ = _ at h
  rw [hfold, smul_eq_mul] at h
  have h' : ((N : ℝ) : ℂ) = (((1 / Real.pi) * (halfContour F T₁ T₂).im : ℝ) : ℂ) := by
    push_cast; rw [← h]; field_simp
  exact_mod_cast h'

end fold

/-! ### (B) the main-term assembly -/

set_option maxHeartbeats 1000000 in
/-- **(B) Riemann–von Mangoldt main term, generic**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variante44f1a2059e9dfeb3900aa5acdf9b9cc9a7fb3199d408f3919c075d83da8b4f8.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29a5022721d4c466f23a8bb07e519816e03e05cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
