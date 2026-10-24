# compStarAlgHom'_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93db060648a3419cc805dccda8f52d11a024b60a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ffd5e9ff-a7f4-1ec0-45bf-b86f4e8757a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1ffd806-6664-dfe5-2bff-89141d4e7c86",
  "kind": "theorem",
  "lexical_name": "compStarAlgHom'_id",
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
  "slug": "compstaralghom-id--cc2abf4b5460a407eb537f95",
  "source": {
    "blob": "93db060648a3419cc805dccda8f52d11a024b60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 100,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc2abf4b5460a407eb537f951617e9909cf048f380688cc30880945097a7c0ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1ffd806-6664-dfe5-2bff-89141d4e7c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compStarAlgHom'_id : compStarAlgHom' 𝕜 A (ContinuousMap.id X) = StarAlgHom.id 𝕜 C(X, A) :=
  StarAlgHom.ext fun _ => ContinuousMap.ext fun _ => rfl

/-- `ContinuousMap.compStarAlgHom'` is functorial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variantdd856c6fd9dc034be7fef64004ff3eb21fa6830080f9e9b354b41821a70fa5bf.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93db060648a3419cc805dccda8f52d11a024b60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
