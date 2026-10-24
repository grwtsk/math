# centeredSeries_ne_zero_function

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac60e12e68ade1bf0b5b99a1619b8dff38a6cd12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8d54d4a-3a42-14a7-2fef-44f73bc2923e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b9c685f-1e53-7572-3079-277d3d0d8087",
  "kind": "theorem",
  "lexical_name": "centeredSeries_ne_zero_function",
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
  "slug": "centeredseries-ne-zero-function--4608ba945e1f616ad62cab1a",
  "source": {
    "blob": "ac60e12e68ade1bf0b5b99a1619b8dff38a6cd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4608ba945e1f616ad62cab1a38061f9a0cd92ab052f0a55d39e312fe3cb56409",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b9c685f-1e53-7572-3079-277d3d0d8087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredSeries_ne_zero_function :
    XiToeplitz.centeredSeries ≠ 0 := by
  intro h
  have hz := congrFun h ((1 / 2 : ℂ) ^ 2)
  rw [Pi.zero_apply, XiToeplitz.centeredSeries_square] at hz
  norm_num [XiToeplitz.xi_one] at hz

end

end FormalResearch.RiemannHypothesis.XiFiniteOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac60e12e68ade1bf0b5b99a1619b8dff38a6cd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
