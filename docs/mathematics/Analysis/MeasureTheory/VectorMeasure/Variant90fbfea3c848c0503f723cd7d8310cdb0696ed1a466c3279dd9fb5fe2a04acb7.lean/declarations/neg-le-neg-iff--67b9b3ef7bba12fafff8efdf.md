# neg_le_neg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6547af79-4c8d-2820-3605-68538789dc99",
  "kind": "theorem",
  "lexical_name": "neg_le_neg_iff",
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
  "slug": "neg-le-neg-iff--67b9b3ef7bba12fafff8efdf",
  "source": {
    "blob": "1bc7047d4e9c89a107ff3c8d23514847ae0ce913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 931,
    "path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67b9b3ef7bba12fafff8efdf87fb8e685a2b6033860cb65447265ed548a6970b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6547af79-4c8d-2820-3605-68538789dc99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_le_neg_iff {i : Set α} (hi : MeasurableSet i) : -w ≤[i] -v ↔ v ≤[i] w :=
  ⟨fun h => neg_neg v ▸ neg_neg w ▸ neg_le_neg _ _ hi h, fun h => neg_le_neg _ _ hi h⟩
#align measure_theory.vector_measure.neg_le_neg_iff MeasureTheory.VectorMeasure.neg_le_neg_iff

end

section

variable {M : Type*} [TopologicalSpace M] [OrderedAddCommMonoid M] [OrderClosedTopology M]

variable (v w : VectorMeasure α M) {i j : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant90fbfea3c848c0503f723cd7d8310cdb0696ed1a466c3279dd9fb5fe2a04acb7.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc7047d4e9c89a107ff3c8d23514847ae0ce913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
