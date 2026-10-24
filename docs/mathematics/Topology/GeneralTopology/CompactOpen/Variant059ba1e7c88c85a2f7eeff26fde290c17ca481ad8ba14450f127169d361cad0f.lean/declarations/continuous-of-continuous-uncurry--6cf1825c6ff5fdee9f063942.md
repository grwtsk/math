# continuous_of_continuous_uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c3519c26f248f8febbe2923a782863135acf833",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f1abf76-570c-1ce1-679a-c3f92a09177a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:639dea24-1406-8732-3cbf-5995cfbca5d7",
  "kind": "theorem",
  "lexical_name": "continuous_of_continuous_uncurry",
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
  "slug": "continuous-of-continuous-uncurry--6cf1825c6ff5fdee9f063942",
  "source": {
    "blob": "1c3519c26f248f8febbe2923a782863135acf833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cf1825c6ff5fdee9f063942bfaba6f03247531f4ef22c4f2ebd540190c526b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:639dea24-1406-8732-3cbf-5995cfbca5d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_of_continuous_uncurry {A : Type*} [TopologicalSpace A]
    (f : A → ContinuousMonoidHom B C) (h : Continuous (Function.uncurry fun x y => f x y)) :
    Continuous f :=
  (isInducing_toContinuousMap _ _).continuous_iff.mpr
    (ContinuousMap.continuous_of_continuous_uncurry _ h)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactOpen/Variant059ba1e7c88c85a2f7eeff26fde290c17ca481ad8ba14450f127169d361cad0f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3519c26f248f8febbe2923a782863135acf833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
