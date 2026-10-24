# localTrivAt_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 750,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7134a12f-7bc3-2c95-fe24-7094ecd36d57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cef16430-f62f-0686-4d5a-70c3f28c7f37",
  "kind": "theorem",
  "lexical_name": "localTrivAt_apply",
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
  "slug": "localtrivat-apply--5465266487964ed9eb359af4",
  "source": {
    "blob": "6dccfa7168a9adea851592463256a7e13d96a346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 750,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5465266487964ed9eb359af4022c238df6906f2dc2efb7a46d65f6b778f035c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef16430-f62f-0686-4d5a-70c3f28c7f37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localTrivAt_apply (p : Z.TotalSpace) : Z.localTrivAt p.1 p = ⟨p.1, p.2⟩ :=
  Z.toFiberBundleCore.localTrivAt_apply p
#align vector_bundle_core.local_triv_at_apply VectorBundleCore.localTrivAt_apply

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant69b70cada478af84115a332ef6304e9fa4a41dd2f979ede033763ac3ed59ea9f.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dccfa7168a9adea851592463256a7e13d96a346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
