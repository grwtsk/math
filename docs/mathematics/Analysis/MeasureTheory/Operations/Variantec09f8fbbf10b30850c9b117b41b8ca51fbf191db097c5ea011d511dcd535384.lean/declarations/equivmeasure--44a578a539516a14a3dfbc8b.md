# equivMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:005cadbd84d12fc98452e40ea2c5b6b0774202cb12be1d0b0b822f78670cbfb4",
  "kind": "def",
  "lexical_name": "equivMeasure",
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
  "slug": "equivmeasure--44a578a539516a14a3dfbc8b",
  "source": {
    "blob": "9205c48eb761706cc18537e786739a6673faaa89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 179,
    "path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44a578a539516a14a3dfbc8bf17d89d5c951725d972fb04508446f4b572b4b1f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:005cadbd84d12fc98452e40ea2c5b6b0774202cb12be1d0b0b822f78670cbfb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivMeasure [MeasurableSpace α] : VectorMeasure α ℝ≥0∞ ≃ Measure α where
  toFun := ennrealToMeasure
  invFun := toENNRealVectorMeasure
  left_inv := toENNRealVectorMeasure_ennrealToMeasure
  right_inv := ennrealToMeasure_toENNRealVectorMeasure

end

section

variable {mα : MeasurableSpace α} [MeasurableSpace β]
variable {M : Type*} [AddCommMonoid M] [TopologicalSpace M]
variable (v : VectorMeasure α M)

open scoped Classical in
/-- The pushforward of a vector measure along a function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Operations/Variantec09f8fbbf10b30850c9b117b41b8ca51fbf191db097c5ea011d511dcd535384.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9205c48eb761706cc18537e786739a6673faaa89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
