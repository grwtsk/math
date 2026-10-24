# intervalIntegrable_logDeriv_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:100f2afb-6f15-6301-9b0b-9bb1b945ac0f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09433a0f-0faa-3ccc-6ce6-db9f5c8cb056",
  "kind": "lemma",
  "lexical_name": "intervalIntegrable_logDeriv_horizontal",
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
  "slug": "intervalintegrable-logderiv-horizontal--eea67128adf91980ed47b451",
  "source": {
    "blob": "824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eea67128adf91980ed47b4513500e5382ded0f8c1ccc1a434bc333423e04679f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09433a0f-0faa-3ccc-6ce6-db9f5c8cb056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma intervalIntegrable_logDeriv_horizontal (hT : T ≠ 0)
    (hnz : ∀ σ ∈ Set.Icc (1/2 : ℝ) 2, riemannZeta (σ + T * I) ≠ 0)
    {u v : ℝ} (hu : u ∈ Set.Icc (1/2 : ℝ) 2) (hv : v ∈ Set.Icc (1/2 : ℝ) 2) :
    IntervalIntegrable (fun σ : ℝ => logDeriv riemannZeta (σ + T * I)) volume u v :=
  ((continuousOn_logDeriv_horizontal hT hnz).mono
    (Set.uIcc_subset_Icc hu hv)).intervalIntegrable

/-- **Base case.** If `Re ζ(σ+iT) ≠ 0` on `(u,v) ⊆ [1/2,2]` then `|Im ∫_u^v ζ'/ζ(σ+iT) dσ| ≤ 2π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant64a52ae59879ba2bf46aabfad96d8e591f2e4cbc01b755a5d9d024d4229685ba.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824f9aa7e3b29ce2a6cbe5c78f7815aec8ab0ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
