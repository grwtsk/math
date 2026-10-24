# subspace_of_normal_not_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b47ee8c2c45d657154d32505e8286e543cb650c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef39d3f7-c6e3-2192-65e1-6ff7bfe57d39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:12a06335-e7de-d16a-0333-61b1ab374da9",
  "kind": "theorem",
  "lexical_name": "subspace_of_normal_not_normal",
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
  "slug": "subspace-of-normal-not-normal--74459b2987954cf27faea415",
  "source": {
    "blob": "b47ee8c2c45d657154d32505e8286e543cb650c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74459b2987954cf27faea415be6a0e079fdbe59bb0df3c65325514e1ad1bafbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12a06335-e7de-d16a-0333-61b1ab374da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subspace_of_normal_not_normal :
    ¬ ∀ (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y),
      NormalSpace Y → IsEmbedding f → NormalSpace X :=
  fun h ↦ not_normalSpace_shrink_Iio_prod_Iic_omega_one <|
    h _ _ _ inferInstance isEmbedding_shrink_prodMap_inc_id

/-- A regular space need not be normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Omega1Space/Variant2ac61e213499dd2052e6ef98d6db4796325683bb8bd5f660d31757cc38c77f30.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b47ee8c2c45d657154d32505e8286e543cb650c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
