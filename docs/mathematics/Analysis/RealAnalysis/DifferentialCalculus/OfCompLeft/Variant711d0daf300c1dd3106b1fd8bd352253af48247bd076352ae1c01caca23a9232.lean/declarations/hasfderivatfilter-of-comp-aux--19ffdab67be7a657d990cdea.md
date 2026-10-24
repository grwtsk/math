# HasFDerivAtFilter.of_comp_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40073ef9a332f9c54564aa68e5ab05b6d5da10ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:151eace5-98d8-92f3-55e3-a543848daef4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8024673b-cdbe-b2b2-16c6-06019de13e2c",
  "kind": "theorem",
  "lexical_name": "HasFDerivAtFilter.of_comp_aux",
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
  "slug": "hasfderivatfilter-of-comp-aux--19ffdab67be7a657d990cdea",
  "source": {
    "blob": "40073ef9a332f9c54564aa68e5ab05b6d5da10ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 49,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ffdab67be7a657d990cdeac71d8a8bff1e64452a9309cbb4aea308779d210e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8024673b-cdbe-b2b2-16c6-06019de13e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem HasFDerivAtFilter.of_comp_aux (hf_emb : Topology.IsEmbedding f')
    (htendsto : Tendsto (Prod.map g g) lE lF)
    (hh : HasFDerivAtFilter h h' lE)
    (hf : HasFDerivAtFilter f f' lF)
    (hcomp : Prod.map (f ∘ g) (f ∘ g) =ᶠ[lE] Prod.map h h)
    (ho : (fun (x, y) ↦ g x - g y - g' (x - y)) =O[𝕜; lE]
      (fun (x, y) ↦ f' (g x - g y) - h' (x - y))) :
    HasFDerivAtFilter g g' lE := by
  refine .of_isLittleOTVS <| ho.trans_isLittleOTVS <| .triangle (.symm ?_) hh.isLittleOTVS
  refine (hf.isLittleOTVS.comp_tendsto htendsto).congr' ?_ .rfl |>.trans_isBigOTVS ?_
  · refine hcomp.mono ?_
    simp +contextual
  · refine hf.isThetaTVS_sub hf_emb.isInducing |>.symm.isBigOTVS.comp_tendsto htendsto |>.trans ?_
    refine hh.isBigOTVS_sub.congr' (hcomp.mono ?_) .rfl
    simp +contextual

/-!
### Left inverse

In this section, we prove that `g` has derivative `f'⁻¹ ∘ h'`
whenever `h = f ∘ g` has derivative `h'` and `f'⁻¹` is a left inverse to `f'`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40073ef9a332f9c54564aa68e5ab05b6d5da10ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
