# classReading_original_pickup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e722b800-50e0-e298-9549-cb9cb2ae5564",
  "kind": "theorem",
  "lexical_name": "classReading_original_pickup",
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
  "slug": "classreading-original-pickup--25c49fd0a7ae02a77f4a77a1",
  "source": {
    "blob": "c32a6a8c244ef48517e13107784089fb0db67484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 199,
    "path": "GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25c49fd0a7ae02a77f4a77a1f268782d0b6d395bd7804cf8fef2e0d837ee92b2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e722b800-50e0-e298-9549-cb9cb2ae5564`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classReading_original_pickup {A t : ℝ} (hA : 1 ≤ A) (ht : t ∈ readingWindow A) :
    classReading A (weightedSourceState A t hA) = centeredPickup A t := by
  rw [classReading_weightedSourceState hA,
    WeightedSourcePickupIdentity.centeredPickup_exact hA ht]

/-- Exact retained reading of the concrete cutoff; the window stays fixed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32a6a8c244ef48517e13107784089fb0db67484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
