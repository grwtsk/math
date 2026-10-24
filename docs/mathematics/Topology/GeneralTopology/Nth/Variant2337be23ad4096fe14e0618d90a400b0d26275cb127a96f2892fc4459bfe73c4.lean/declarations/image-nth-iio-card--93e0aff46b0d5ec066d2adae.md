# image_nth_Iio_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba205b25-47a3-e190-fc37-3871cd31f155",
  "kind": "theorem",
  "lexical_name": "image_nth_Iio_card",
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
  "slug": "image-nth-iio-card--93e0aff46b0d5ec066d2adae",
  "source": {
    "blob": "7182e6827ccf2929f6f6329d723867fd014d452e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93e0aff46b0d5ec066d2adae3e42bf325ce0d88e347e58a6f638728405cc08b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba205b25-47a3-e190-fc37-3871cd31f155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_nth_Iio_card (hf : (setOf p).Finite) : nth p '' Set.Iio #hf.toFinset = setOf p :=
  calc
    nth p '' Set.Iio #hf.toFinset = Set.range (hf.toFinset.orderEmbOfFin rfl) := by
      ext x
      simp only [Set.mem_image, Set.mem_range, Fin.exists_iff, ← nth_eq_orderEmbOfFin hf,
        Set.mem_Iio, exists_prop]
    _ = setOf p := by rw [range_orderEmbOfFin, Set.Finite.coe_toFinset]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7182e6827ccf2929f6f6329d723867fd014d452e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
