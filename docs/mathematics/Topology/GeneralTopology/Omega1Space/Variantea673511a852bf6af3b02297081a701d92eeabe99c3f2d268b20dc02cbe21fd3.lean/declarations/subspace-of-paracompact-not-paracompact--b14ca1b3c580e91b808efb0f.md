# subspace_of_paracompact_not_paracompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47d42266-0b7d-f40d-714b-92dba7626f7e",
  "kind": "theorem",
  "lexical_name": "subspace_of_paracompact_not_paracompact",
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
  "slug": "subspace-of-paracompact-not-paracompact--b14ca1b3c580e91b808efb0f",
  "source": {
    "blob": "e09e42b8e4f01df35a9d53c895415564146069a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 125,
    "path": "GRWTSK/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b14ca1b3c580e91b808efb0f64e0aad66ebacdadb69ed3a3403a1f6c22b4843c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47d42266-0b7d-f40d-714b-92dba7626f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subspace_of_paracompact_not_paracompact :
    ¬ ∀ (X : Type u) (Y : Type v) [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y),
      ParacompactSpace Y → IsEmbedding f → ParacompactSpace X := fun h ↦
  let _ := h _ _ _ inferInstance isEmbedding_shrink_prodMap_inc_id
  not_normalSpace_shrink_Iio_prod_Iic_omega_one inferInstance

/-- The product of two normal spaces need not be normal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09e42b8e4f01df35a9d53c895415564146069a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
