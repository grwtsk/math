# measurePreserving_prod_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4baea960-f5d1-dddf-0da1-7546f7bc446b",
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
  "slug": "measurepreserving-prod-mul-right--5297dc0ab2ff6c64b0758d9f",
  "source": {
    "blob": "16a4065bfb41689e592b6a16c2146123b88df3de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 373,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5297dc0ab2ff6c64b0758d9f5fb5caa194d36207284e5ead4374f436f4c70757",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4baea960-f5d1-dddf-0da1-7546f7bc446b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_prod_mul_right [IsMulRightInvariant ν] :
    MeasurePreserving (fun z : G × G => (z.1, z.2 * z.1)) (μ.prod ν) (μ.prod ν) :=
  MeasurePreserving.skew_product (g := fun x y => y * x) (MeasurePreserving.id μ)
    (measurable_snd.mul measurable_fst) <| Filter.eventually_of_forall <| map_mul_right_eq_self ν
#align measure_theory.measure_preserving_prod_mul_right MeasureTheory.measurePreserving_prod_mul_right
#align measure_theory.measure_preserving_prod_add_right MeasureTheory.measurePreserving_prod_add_right

/-- The map `(x, y) ↦ (y, xy)` sends the measure `μ × ν` to `ν × μ`. -/
@[to_additive measurePreserving_prod_add_swap_right
" The map `(x, y) ↦ (y, x + y)` sends the measure `μ × ν` to `ν × μ`. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant73219930276a4bdf2a997294f8b8ca73ee7a6382d4f77a21a45b5ba61472f47b.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a4065bfb41689e592b6a16c2146123b88df3de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
