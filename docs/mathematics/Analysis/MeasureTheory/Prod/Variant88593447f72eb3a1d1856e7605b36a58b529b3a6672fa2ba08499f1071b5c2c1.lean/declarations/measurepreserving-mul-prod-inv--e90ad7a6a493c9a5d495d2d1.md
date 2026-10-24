# measurePreserving_mul_prod_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:652337af-95c7-a4e0-3eae-ed8869b25148",
  "kind": "theorem",
  "lexical_name": "measurePreserving_mul_prod_inv",
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
  "slug": "measurepreserving-mul-prod-inv--e90ad7a6a493c9a5d495d2d1",
  "source": {
    "blob": "d7897f0e8ef08349b61e1897a96c13f7f05274cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 143,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e90ad7a6a493c9a5d495d2d11b2a4bb7ea5dc8b7a350ba46df81529ad80584a3",
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

Occurrence: `result:652337af-95c7-a4e0-3eae-ed8869b25148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_mul_prod_inv [IsMulLeftInvariant ν] :
    MeasurePreserving (fun z : G × G => (z.2 * z.1, z.1⁻¹)) (μ.prod ν) (μ.prod ν) := by
  convert (measurePreserving_prod_inv_mul_swap ν μ).comp (measurePreserving_prod_mul_swap μ ν)
    using 1
  ext1 ⟨x, y⟩
  simp_rw [Function.comp_apply, mul_inv_rev, inv_mul_cancel_right]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant88593447f72eb3a1d1856e7605b36a58b529b3a6672fa2ba08499f1071b5c2c1.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7897f0e8ef08349b61e1897a96c13f7f05274cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
