# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b9708fb13d446d7ba1820cf355c1e579917a6a1bd6218b87a151b45fb4bf231",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--756ebe6bc15bd935cdbc4d7d",
  "source": {
    "blob": "094ce964a1c5fdec6882af0a070794e4339342b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticMultiplicity/Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:756ebe6bc15bd935cdbc4d7d4985ff63f33f0d9cd5c45a1ce12a23c588ae1074",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticMultiplicity/Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b9708fb13d446d7ba1820cf355c1e579917a6a1bd6218b87a151b45fb4bf231`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : analyticOrderAt (fun z : ℂ ↦ z ^ 2) 0 = 2 := by
  have hid : analyticOrderAt (fun z : ℂ ↦ z) 0 = 1 := analyticOrderAt_id
  simpa only [hid, one_mul] using order_comp_square_zero (f := fun z : ℂ ↦ z) analyticAt_id

#print order_mul_nonvanishing
#print order_eq_of_local_normalization
#print order_eq_of_local_coordinate
#print simple_iff_of_local_coordinate
#print order_comp_square
#print order_comp_square_neg
#print order_comp_square_zero
#print same_zero_support_different_order
#print axioms order_mul_nonvanishing
#print axioms order_eq_of_local_normalization
#print axioms order_eq_of_local_coordinate
#print axioms simple_iff_of_local_coordinate
#print axioms order_comp_square
#print axioms order_comp_square_neg
#print axioms order_comp_square_zero
#print axioms same_zero_support_different_order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticMultiplicity/Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AnalyticMultiplicity/Variantc82f7007bb1dc65e8e44b7a8177f3003541f19c4f87c51516b598d5a07839a77.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094ce964a1c5fdec6882af0a070794e4339342b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
