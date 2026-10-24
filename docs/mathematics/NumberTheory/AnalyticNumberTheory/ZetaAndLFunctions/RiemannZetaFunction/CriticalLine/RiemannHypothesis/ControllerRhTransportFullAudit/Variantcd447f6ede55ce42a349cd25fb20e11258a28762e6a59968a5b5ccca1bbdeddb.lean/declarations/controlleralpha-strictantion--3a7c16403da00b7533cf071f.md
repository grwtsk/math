# controllerAlpha_strictAntiOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2645b0c123c965538c5824ac1df9e416d3100cd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd447f6ede55ce42a349cd25fb20e11258a28762e6a59968a5b5ccca1bbdeddb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:329168a7-735c-a10d-40c1-2d5654bde9e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ec1bc35-b60b-c6ad-aa50-46a7c773f8e7",
  "kind": "theorem",
  "lexical_name": "controllerAlpha_strictAntiOn",
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
  "slug": "controlleralpha-strictantion--3a7c16403da00b7533cf071f",
  "source": {
    "blob": "2645b0c123c965538c5824ac1df9e416d3100cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportFullAudit/Variantcd447f6ede55ce42a349cd25fb20e11258a28762e6a59968a5b5ccca1bbdeddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7c16403da00b7533cf071f088c4b82bc59b72cc11ae30824d99b10d13b1f10",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportFullAudit/Variantcd447f6ede55ce42a349cd25fb20e11258a28762e6a59968a5b5ccca1bbdeddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec1bc35-b60b-c6ad-aa50-46a7c773f8e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controllerAlpha_strictAntiOn (q : ℕ → H) :
    StrictAntiOn (controllerAlpha q) (Set.Ici 1) := by
  intro i hi j _hj hij
  have hir : 0 < (i : ℝ) := by
    exact_mod_cast (show 0 < i by change 1 ≤ i at hi; omega)
  have hijr : (i : ℝ) < j := by exact_mod_cast hij
  have hci := cumulativeCost_nonneg q i
  have hcj := cumulativeCost_nonneg q j
  have hmono := cumulativeCost_monotone q hij.le
  unfold controllerAlpha
  apply one_div_lt_one_div_of_lt (by positivity)
  nlinarith

/-- The positive-index parameters are bounded by the elementary reciprocal sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportFullAudit/Variantcd447f6ede55ce42a349cd25fb20e11258a28762e6a59968a5b5ccca1bbdeddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportFullAudit/Variantcd447f6ede55ce42a349cd25fb20e11258a28762e6a59968a5b5ccca1bbdeddb.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2645b0c123c965538c5824ac1df9e416d3100cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
