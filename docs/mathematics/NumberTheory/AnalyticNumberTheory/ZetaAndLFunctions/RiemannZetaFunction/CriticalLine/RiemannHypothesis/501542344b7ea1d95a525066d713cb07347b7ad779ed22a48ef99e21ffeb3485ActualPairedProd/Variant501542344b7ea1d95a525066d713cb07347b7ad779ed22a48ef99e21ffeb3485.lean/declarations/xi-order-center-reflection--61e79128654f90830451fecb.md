# xi_order_center_reflection

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
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8a04d45-eba3-4919-3186-08a3a41fb8c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55378c78-07a3-6fb7-dfa6-abc456fcc631",
  "kind": "theorem",
  "lexical_name": "xi_order_center_reflection",
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
  "slug": "xi-order-center-reflection--61e79128654f90830451fecb",
  "source": {
    "blob": "ac60e12e68ade1bf0b5b99a1619b8dff38a6cd12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e79128654f90830451fecbbd697f429f781bddffffaf79606554de1dc99625",
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

Occurrence: `result:55378c78-07a3-6fb7-dfa6-abc456fcc631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_order_center_reflection (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt XiToeplitz.xi (1 / 2 + u) =
      meromorphicOrderAt XiToeplitz.xi (1 / 2 - u) := by
  have hp := xi_order_eq_descended_order u hu
  have hm := xi_order_eq_descended_order (-u) (neg_ne_zero.mpr hu)
  have hs : (-u) ^ 2 = u ^ 2 := by ring
  have hc : (1 / 2 : ℂ) + (-u) = 1 / 2 - u := by ring
  rw [hs, hc] at hm
  exact hp.trans hm.symm

/-- The actual centered series is not the zero function: the restored endpoint
`xi(1)=1/2` supplies a concrete nonzero value at `w=1/4`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485ActualPairedProd/Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac60e12e68ade1bf0b5b99a1619b8dff38a6cd12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
