# measurePreserving_prod_mul_swap_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b69078e-3253-65bc-0be0-f403301af3a7",
  "kind": "theorem",
  "lexical_name": "measurePreserving_prod_mul_swap_right",
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
  "slug": "measurepreserving-prod-mul-swap-right--c43756eb3e005feaaa7ef92b",
  "source": {
    "blob": "410b654404585236b88a6422692d03d7259f3ef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 360,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c43756eb3e005feaaa7ef92bab499c836e1cbe53bdbb9d9e2164edeaa8cc6d54",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b69078e-3253-65bc-0be0-f403301af3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_prod_mul_swap_right [IsMulRightInvariant μ] :
    MeasurePreserving (fun z : G × G => (z.2, z.1 * z.2)) (μ.prod ν) (ν.prod μ) :=
  (measurePreserving_prod_mul_right ν μ).comp measurePreserving_swap

/-- The map `(x, y) ↦ (xy, y)` preserves the measure `μ × ν`. -/
@[to_additive measurePreserving_add_prod
/-- The map `(x, y) ↦ (x + y, y)` preserves the measure `μ × ν`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b654404585236b88a6422692d03d7259f3ef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
