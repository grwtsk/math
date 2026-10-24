# measurableSet_generateFrom_memPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec92f7c4-749b-3ea2-6c67-bdddcf26ec59",
  "kind": "lemma",
  "lexical_name": "measurableSet_generateFrom_memPartition",
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
  "slug": "measurableset-generatefrom-mempartition--d26cd131159f1534e6a1e53e",
  "source": {
    "blob": "9a1bf0067295a8a42baf3bc454b7d2493db23678",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 377,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant94422f58b9f6ea777f45a0a6b16cd0c78d98e9369685a39ba5a6cb12e85117e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d26cd131159f1534e6a1e53efe592a1fc861790d9a015994a784d530f494fc64",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant94422f58b9f6ea777f45a0a6b16cd0c78d98e9369685a39ba5a6cb12e85117e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec92f7c4-749b-3ea2-6c67-bdddcf26ec59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_generateFrom_memPartition (t : ℕ → Set α) (n : ℕ) :
    MeasurableSet[generateFrom (memPartition t (n + 1))] (t n) := by
  have : t n = ⋃ u ∈ memPartition t n, u ∩ t n := by
    simp_rw [← iUnion_inter, ← sUnion_eq_biUnion, sUnion_memPartition, univ_inter]
  rw [this]
  refine MeasurableSet.biUnion (finite_memPartition _ _).countable (fun v hv ↦ ?_)
  refine measurableSet_generateFrom ?_
  rw [memPartition_succ]
  exact ⟨v, hv, Or.inl rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant94422f58b9f6ea777f45a0a6b16cd0c78d98e9369685a39ba5a6cb12e85117e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant94422f58b9f6ea777f45a0a6b16cd0c78d98e9369685a39ba5a6cb12e85117e5.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a1bf0067295a8a42baf3bc454b7d2493db23678` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
