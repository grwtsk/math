# generateMeasurableRec_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52527a01-339d-f814-c169-bb0059d3b74b",
  "kind": "theorem",
  "lexical_name": "generateMeasurableRec_subset",
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
  "slug": "generatemeasurablerec-subset--c87733f832c33130a5fd5cd1",
  "source": {
    "blob": "0cf28872cca3581e565805434d09bf9fbbfb5791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c87733f832c33130a5fd5cd105e06ebb21268da0c7684986e783176cca064ce9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52527a01-339d-f814-c169-bb0059d3b74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateMeasurableRec_subset (s : Set (Set α)) {i j : ω₁} (h : i ≤ j) :
    generateMeasurableRec s i ⊆ generateMeasurableRec s j := fun x hx => by
  rcases eq_or_lt_of_le h with (rfl | h)
  · exact hx
  · convert iUnion_mem_generateMeasurableRec fun _ => ⟨i, h, hx⟩
    exact (iUnion_const x).symm
#align measurable_space.generate_measurable_rec_subset MeasurableSpace.generateMeasurableRec_subset

/-- At each step of the inductive construction, the cardinality bound `≤ (max #s 2) ^ ℵ₀` holds.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardMeasurableSpace/Variantf1ff33c1d8acbc686269837b6203d11ce9c10643653bb111f937641c6b42408c.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cf28872cca3581e565805434d09bf9fbbfb5791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
