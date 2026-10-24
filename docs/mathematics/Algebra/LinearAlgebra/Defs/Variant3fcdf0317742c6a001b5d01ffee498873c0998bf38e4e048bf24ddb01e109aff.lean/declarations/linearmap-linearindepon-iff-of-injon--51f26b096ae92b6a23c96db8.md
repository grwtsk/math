# LinearMap.linearIndepOn_iff_of_injOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 337,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5d6c1ef-5a0a-da8c-f940-fcde70f9a863",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:646b6b9c-0040-1d86-a395-ea3ae8f4cd60",
  "kind": "theorem",
  "lexical_name": "LinearMap.linearIndepOn_iff_of_injOn",
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
  "slug": "linearmap-linearindepon-iff-of-injon--51f26b096ae92b6a23c96db8",
  "source": {
    "blob": "d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 337,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f26b096ae92b6a23c96db8fc772043744bb508316940fe5f29c9625b730b2c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:646b6b9c-0040-1d86-a395-ea3ae8f4cd60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem LinearMap.linearIndepOn_iff_of_injOn (f : M →ₗ[R] M')
    (hf_inj : Set.InjOn f (span R (v '' s))) :
    LinearIndepOn R (f ∘ v) s ↔ LinearIndepOn R v s :=
  f.linearIndependent_iff_of_injOn (by rwa [← image_eq_range]) (v := fun i : s ↦ v i)

-- TODO : Rename this `LinearIndependent.of_subsingleton`.
@[nontriviality]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3fcdf0317742c6a001b5d01ffee498873c0998bf38e4e048bf24ddb01e109aff.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e488ffe97c56a8f5ff0d2f1198e6395eb611b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
