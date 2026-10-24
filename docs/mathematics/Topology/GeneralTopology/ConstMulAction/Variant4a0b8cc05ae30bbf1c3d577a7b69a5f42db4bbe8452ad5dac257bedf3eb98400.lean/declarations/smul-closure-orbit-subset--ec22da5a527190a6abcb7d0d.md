# smul_closure_orbit_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b296a5768b6f6955b4baca1d569971067ae4cc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78056e5a-0359-ad35-e142-50965eb2c4d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd52156c-0588-bd8c-bfa9-15db940faaaa",
  "kind": "theorem",
  "lexical_name": "smul_closure_orbit_subset",
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
  "slug": "smul-closure-orbit-subset--ec22da5a527190a6abcb7d0d",
  "source": {
    "blob": "4b296a5768b6f6955b4baca1d569971067ae4cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec22da5a527190a6abcb7d0de6727718783b2650934e632af9a5f70eed4ff80d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd52156c-0588-bd8c-bfa9-15db940faaaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_closure_orbit_subset (c : M) (x : α) :
    c • closure (MulAction.orbit M x) ⊆ closure (MulAction.orbit M x) :=
  (smul_closure_subset c _).trans <| closure_mono <| MulAction.smul_orbit_subset _ _
#align smul_closure_orbit_subset smul_closure_orbit_subset
#align vadd_closure_orbit_subset vadd_closure_orbit_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variant4a0b8cc05ae30bbf1c3d577a7b69a5f42db4bbe8452ad5dac257bedf3eb98400.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b296a5768b6f6955b4baca1d569971067ae4cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
