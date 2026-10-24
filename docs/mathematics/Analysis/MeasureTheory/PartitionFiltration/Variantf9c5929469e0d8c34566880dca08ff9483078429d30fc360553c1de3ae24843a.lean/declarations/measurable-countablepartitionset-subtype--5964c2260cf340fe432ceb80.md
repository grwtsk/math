# measurable_countablePartitionSet_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f53008b4-37bc-f591-6f6b-e78361532c4f",
  "kind": "lemma",
  "lexical_name": "measurable_countablePartitionSet_subtype",
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
  "slug": "measurable-countablepartitionset-subtype--5964c2260cf340fe432ceb80",
  "source": {
    "blob": "c130b055b5e8fcc2be572874f20f1fcfe71c882f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 127,
    "path": "GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5964c2260cf340fe432ceb807737b63ddd99f91bd3ce306b33551789739eb0f2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53008b4-37bc-f591-6f6b-e78361532c4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_countablePartitionSet_subtype (n : ℕ)
    (m : MeasurableSpace (countablePartition α n)) :
    @Measurable α (countablePartition α n) (countableFiltration α n) m
      (fun a ↦ ⟨countablePartitionSet n a, countablePartitionSet_mem n a⟩) :=
  measurable_memPartitionSet_subtype
    (measurableSet_enumerateCountable_countableGeneratingSet (α := α)) n m

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c130b055b5e8fcc2be572874f20f1fcfe71c882f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
