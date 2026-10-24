# measurePreserving_prod_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba7970b6-205d-20f9-2a04-7867fe2914fb",
  "kind": "theorem",
  "lexical_name": "measurePreserving_prod_mul_right",
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
  "slug": "measurepreserving-prod-mul-right--e34f92006fd72a1936283da0",
  "source": {
    "blob": "d7897f0e8ef08349b61e1897a96c13f7f05274cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 352,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e34f92006fd72a1936283da046f3fe55c7fb38388b8058e8a5c6f90adb83635a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba7970b6-205d-20f9-2a04-7867fe2914fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_prod_mul_right [IsMulRightInvariant ν] :
    MeasurePreserving (fun z : G × G => (z.1, z.2 * z.1)) (μ.prod ν) (μ.prod ν) :=
  MeasurePreserving.skew_product (g := fun x y => y * x) (MeasurePreserving.id μ)
    (measurable_snd.mul measurable_fst) <| Filter.Eventually.of_forall <| map_mul_right_eq_self ν

/-- The map `(x, y) ↦ (y, xy)` sends the measure `μ × ν` to `ν × μ`. -/
@[to_additive measurePreserving_prod_add_swap_right
" The map `(x, y) ↦ (y, x + y)` sends the measure `μ × ν` to `ν × μ`. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7897f0e8ef08349b61e1897a96c13f7f05274cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
