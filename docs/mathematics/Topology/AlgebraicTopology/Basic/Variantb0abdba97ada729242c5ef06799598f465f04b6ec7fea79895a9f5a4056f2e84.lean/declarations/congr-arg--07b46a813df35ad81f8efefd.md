# congr_arg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6499b31bd0cb95bd62b3c1f4cca68ec23db069e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a71c038c-0cab-0895-5a1f-8e7737adc9c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c89ce7e2-347c-4c3d-24ff-4795cd24ea41",
  "kind": "theorem",
  "lexical_name": "congr_arg",
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
  "slug": "congr-arg--07b46a813df35ad81f8efefd",
  "source": {
    "blob": "6499b31bd0cb95bd62b3c1f4cca68ec23db069e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b46a813df35ad81f8efefd99f3ac385f436f4c7faa1aba8efb9da98ee7b1f4",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c89ce7e2-347c-4c3d-24ff-4795cd24ea41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem congr_arg (F : Homotopy f₀ f₁) {x y : I × X} (h : x = y) : F x = F y :=
  F.toContinuousMap.congr_arg h

end

/-- Given a continuous function `f`, we can define a `Homotopy f f` by `F (t, x) = f x`
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variantb0abdba97ada729242c5ef06799598f465f04b6ec7fea79895a9f5a4056f2e84.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6499b31bd0cb95bd62b3c1f4cca68ec23db069e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
