# isHaarMeasure_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c78bd95-f9b0-58d8-55a3-d0b373ee397e",
  "kind": "theorem",
  "lexical_name": "isHaarMeasure_map",
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
  "slug": "ishaarmeasure-map--6f58a81524999b51f773c180",
  "source": {
    "blob": "9af0551171e42e0bccd446f80e6fbb391fea42c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 752,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f58a81524999b51f773c180b8f314dbce389a9f9052ae1a027fcc9d0febf352",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c78bd95-f9b0-58d8-55a3-d0b373ee397e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHaarMeasure_map [BorelSpace G] [ContinuousMul G] {H : Type*} [Group H]
    [TopologicalSpace H] [MeasurableSpace H] [BorelSpace H] [IsTopologicalGroup H]
    (f : G →* H) (hf : Continuous f) (h_surj : Surjective f)
    (h_prop : Tendsto f (cocompact G) (cocompact H)) : IsHaarMeasure (Measure.map f μ) :=
  { toIsMulLeftInvariant := isMulLeftInvariant_map f.toMulHom hf.measurable h_surj
    lt_top_of_isCompact := by
      intro K hK
      rw [← hK.measure_closure, map_apply hf.measurable isClosed_closure.measurableSet]
      set g : CocompactMap G H := ⟨⟨f, hf⟩, h_prop⟩
      exact IsCompact.measure_lt_top (g.isCompact_preimage_of_isClosed hK.closure isClosed_closure)
    toIsOpenPosMeasure := hf.isOpenPosMeasure_map h_surj }

/-- The image of a finite Haar measure under a continuous surjective group homomorphism is again
a Haar measure. See also `isHaarMeasure_map`. -/
@[to_additive
"The image of a finite additive Haar measure under a continuous surjective additive group
homomorphism is again an additive Haar measure. See also `isAddHaarMeasure_map`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af0551171e42e0bccd446f80e6fbb391fea42c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
