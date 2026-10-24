# pi_map_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1748f1a9-a501-43ff-3888-51fb699abc35",
  "kind": "lemma",
  "lexical_name": "pi_map_pi",
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
  "slug": "pi-map-pi--729f26d25e7671abb8f4f07c",
  "source": {
    "blob": "90c3382306c5d989480670d0224b18923be5c18b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:729f26d25e7671abb8f4f07c7383f90ab6fed2eb692f33fd6132ac4fba677814",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1748f1a9-a501-43ff-3888-51fb699abc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pi_map_pi {β : ι → Type*} [∀ i, MeasurableSpace (β i)] {f : Π i, α i → β i}
    (f_mble : ∀ i, AEMeasurable (f i) (μ i)) :
    (FiniteMeasure.pi μ).map (fun x i ↦ (f i (x i))) =
      FiniteMeasure.pi (fun i ↦ (μ i).map (f i)) := by
  apply Subtype.ext
  simp only [val_eq_toMeasure, toMeasure_map, toMeasure_pi]
  rw [Measure.pi_map_pi f_mble]

end FiniteMeasure

namespace ProbabilityMeasure

/-- The product of finitely many probability measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/FiniteMeasurePi/Variantc390bbcc27eca198fba49a7c48bd8d3e0be6db5a4143fec2cc08bddbd467240a.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c3382306c5d989480670d0224b18923be5c18b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
