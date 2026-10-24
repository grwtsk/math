# HasFDerivWithinAt.of_comp_of_leftInverse

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
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ea379bc-7304-791a-c615-71c07ee8ca35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77593f5c-153a-6f20-ba73-0336aa18cb4e",
  "kind": "theorem",
  "lexical_name": "HasFDerivWithinAt.of_comp_of_leftInverse",
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
  "slug": "hasfderivwithinat-of-comp-of-leftinverse--19b00dc44df5dc59da9ae75e",
  "source": {
    "blob": "40073ef9a332f9c54564aa68e5ab05b6d5da10ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b00dc44df5dc59da9ae75e4c6fee1072b081fc28c675c4a35aa21779df92dd",
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

Occurrence: `result:77593f5c-153a-6f20-ba73-0336aa18cb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFDerivWithinAt.of_comp_of_leftInverse
    (hst : Tendsto g (𝓝[s] a) (𝓝[t] (g a))) (hf : HasFDerivWithinAt f f' t (g a))
    (hh : HasFDerivWithinAt h h' s a) (hcomp : f ∘ g =ᶠ[𝓝[s] a] h)
    (hf'symm : Function.LeftInverse f'symm f') (ha : a ∈ s) :
    HasFDerivWithinAt g (f'symm ∘L h') s a := by
  refine HasFDerivAtFilter.of_comp_of_leftInverse ?_ hf hh ?_ hf'symm
  · exact hst.prodMap (by simp)
  · exact hcomp.prodMap (hcomp.self_of_nhdsWithin ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/OfCompLeft/Variant711d0daf300c1dd3106b1fd8bd352253af48247bd076352ae1c01caca23a9232.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40073ef9a332f9c54564aa68e5ab05b6d5da10ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
