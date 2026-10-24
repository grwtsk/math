# isHaarMeasure_eq_of_isProbabilityMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f27cee36e757273dbc80d255aaf98ed21bc354",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 700,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:893fe0cf-0c18-c0e9-4ced-9f0a58444ab7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d64aaeba-bd0e-2e8a-24cd-052937fb6758",
  "kind": "lemma",
  "lexical_name": "isHaarMeasure_eq_of_isProbabilityMeasure",
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
  "slug": "ishaarmeasure-eq-of-isprobabilitymeasure--ee24bbf620ce004642981631",
  "source": {
    "blob": "d8f27cee36e757273dbc80d255aaf98ed21bc354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 700,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee24bbf620ce004642981631ca6dcb7720874a4ecaaf0adbf3908aa86b2f7493",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64aaeba-bd0e-2e8a-24cd-052937fb6758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isHaarMeasure_eq_of_isProbabilityMeasure [LocallyCompactSpace G] (μ' μ : Measure G)
    [IsProbabilityMeasure μ] [IsProbabilityMeasure μ'] [IsHaarMeasure μ] [IsHaarMeasure μ'] :
    μ' = μ := by
  have : CompactSpace G := by
    by_contra H
    rw [not_compactSpace_iff] at H
    simpa using measure_univ_of_isMulLeftInvariant μ
  have A s : μ' s = haarScalarFactor μ' μ • μ s :=
    measure_isMulInvariant_eq_smul_of_isCompact_closure _ _ isClosed_closure.isCompact
  have Z := A univ
  simp only [measure_univ, ENNReal.smul_def, smul_eq_mul, mul_one, ENNReal.one_eq_coe] at Z
  ext s _hs
  simp [A s, ← Z]

/-!
### Uniqueness of measure of open sets

Two Haar measures give the same measure to open sets (or more generally to sets which are everywhere
positive), up to the scalar `haarScalarFactor μ' μ `.
-/

@[to_additive measure_isAddHaarMeasure_eq_smul_of_isEverywherePos]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f27cee36e757273dbc80d255aaf98ed21bc354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
