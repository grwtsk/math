# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:549dd4fb9f85862fddf38251d197045e4d7caf29e6f88ef1571bedc6a8ae4878",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--32624ff3dcbbed859bbf5798",
  "source": {
    "blob": "e05382ba39251d3d33e6d8948c89b0effccc7414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 557,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32624ff3dcbbed859bbf57982d3bb15b65d6d4f9ee161eeb4520e84a5b58aa95",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:549dd4fb9f85862fddf38251d197045e4d7caf29e6f88ef1571bedc6a8ae4878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 900) : G.IsContinuous J K :=
  letI := IsDenseSubsite.isCoverDense J K G
  letI := IsDenseSubsite.isLocallyFull J K G
  letI := IsDenseSubsite.isLocallyFaithful J K G
  IsCoverDense.isContinuous J K G (IsDenseSubsite.coverPreserving J K G)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantded31dda558b0841a1106da634d9be5f2924873551354cf30c3407e6a9bc1133.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05382ba39251d3d33e6d8948c89b0effccc7414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
