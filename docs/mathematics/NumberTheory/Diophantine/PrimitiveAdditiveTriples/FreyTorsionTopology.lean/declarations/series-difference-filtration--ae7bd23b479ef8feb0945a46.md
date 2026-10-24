# series_difference_filtration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:562c8858-6ddf-c1ed-7848-778f549c97c5",
  "kind": "theorem",
  "lexical_name": "series_difference_filtration",
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
  "slug": "series-difference-filtration--ae7bd23b479ef8feb0945a46",
  "source": {
    "blob": "3079bd94e5a609cce1ebf748bb052d8906edae62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae7bd23b479ef8feb0945a4663b504e7c2574ae36542ee2640d268ff936805da",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:562c8858-6ddf-c1ed-7848-778f549c97c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem series_difference_filtration (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (N : ℕ) (F G : PowerSeries R) :
    (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣
        seriesPullback a b l jA jB hl hA hB F - seriesPullback a b l jA jB hl hA hB G ↔
      (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ F - G := by
  simpa only [map_sub] using series_filtration_iff a b l jA jB hl hA hB N (F - G)

section ConnectedTime
variable {T : Type*} [TopologicalSpace T] [PreconnectedSpace T]

/-- Positive finite projections separate canonical completion elements.
Apply a downward transition to handle canonical exponent zero without deleting it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTorsionTopology.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079bd94e5a609cce1ebf748bb052d8906edae62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
