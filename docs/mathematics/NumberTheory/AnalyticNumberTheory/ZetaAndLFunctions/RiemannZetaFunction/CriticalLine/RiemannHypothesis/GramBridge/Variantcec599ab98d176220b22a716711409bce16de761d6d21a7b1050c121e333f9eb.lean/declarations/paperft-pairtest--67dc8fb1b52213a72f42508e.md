# paperFT_pairTest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3366cab977b88a81cbafd150f4f705ebce00768d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/cec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b08921cb-4ca6-1522-f46e-2fe757c3fa82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26d774e6-1f14-2d3d-df2c-b726449c6404",
  "kind": "theorem",
  "lexical_name": "paperFT_pairTest",
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
  "slug": "paperft-pairtest--67dc8fb1b52213a72f42508e",
  "source": {
    "blob": "3366cab977b88a81cbafd150f4f705ebce00768d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67dc8fb1b52213a72f42508e82a3f27fc2ee98cb26af4f56f0c9a0ce002163f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26d774e6-1f14-2d3d-df2c-b726449c6404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperFT_pairTest (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (k l : ℤ) (z : ℂ) :
    paperFT (kfun P T k l) z
      = P.phiHat T (z - P.tau T k) * P.phiHat T (z - P.tau T l) := by
  unfold kfun
  rw [Zeta23.EF.paperFT_weilTest (fk_continuous P T hφC2 k) (fk_continuous P T hφC2 l)
      (fk_hasCompactSupport P T hφsupp k) (fk_hasCompactSupport P T hφsupp l),
    GzGp.paperFT_fk, GzGp.paperFT_fk, ← GzGp.phiHat_conj]
  congr 2
  rw [map_sub, Complex.conj_conj, Complex.conj_ofReal]

/-- on the real line ĥ is the REAL number φ̂_ℝ(τ − τ_k)·φ̂_ℝ(τ − τ_l). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GramBridge/Variantcec599ab98d176220b22a716711409bce16de761d6d21a7b1050c121e333f9eb.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3366cab977b88a81cbafd150f4f705ebce00768d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
