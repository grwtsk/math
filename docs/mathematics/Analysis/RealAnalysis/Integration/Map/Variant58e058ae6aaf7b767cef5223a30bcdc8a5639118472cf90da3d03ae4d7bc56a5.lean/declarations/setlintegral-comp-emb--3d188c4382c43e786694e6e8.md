# setLIntegral_comp_emb

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c51040b8-4b36-fa95-3648-294915dcf7f9",
  "kind": "theorem",
  "lexical_name": "setLIntegral_comp_emb",
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
  "slug": "setlintegral-comp-emb--3d188c4382c43e786694e6e8",
  "source": {
    "blob": "17ae0e5b1f8bf57f6922f956b374f8cfab56a96d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d188c4382c43e786694e6e813fb833e572d1bbf9736d0ecc6e92ed93054f48d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c51040b8-4b36-fa95-3648-294915dcf7f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setLIntegral_comp_emb (hge : MeasurableEmbedding g) (f : β → ℝ≥0∞) (s : Set α) :
    ∫⁻ a in s, f (g a) ∂μ = ∫⁻ b in g '' s, f b ∂ν := by
  rw [← hg.setLIntegral_comp_preimage_emb hge, Set.preimage_image_eq _ hge.injective]

end MeasurePreserving

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Map/Variant58e058ae6aaf7b767cef5223a30bcdc8a5639118472cf90da3d03ae4d7bc56a5.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17ae0e5b1f8bf57f6922f956b374f8cfab56a96d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
