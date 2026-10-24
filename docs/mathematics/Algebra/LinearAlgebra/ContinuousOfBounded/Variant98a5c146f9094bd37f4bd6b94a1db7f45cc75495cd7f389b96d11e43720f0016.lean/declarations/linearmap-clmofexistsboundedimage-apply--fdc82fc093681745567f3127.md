# LinearMap.clmOfExistsBoundedImage_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90f3a908baaaf9ba647d098cf19287e41decdf40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1754780f-29a4-74d7-e309-f566f11f42f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4547c178-e362-bd01-ff0d-72a8f2546b1f",
  "kind": "theorem",
  "lexical_name": "LinearMap.clmOfExistsBoundedImage_apply",
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
  "slug": "linearmap-clmofexistsboundedimage-apply--fdc82fc093681745567f3127",
  "source": {
    "blob": "90f3a908baaaf9ba647d098cf19287e41decdf40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc82fc093681745567f3127ff66122ae7e2b4ee93dd52a67b6d00c718d87340",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4547c178-e362-bd01-ff0d-72a8f2546b1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.clmOfExistsBoundedImage_apply {f : E →ₗ[𝕜] F}
    {h : ∃ V ∈ 𝓝 (0 : E), Bornology.IsVonNBounded 𝕜 (f '' V)} {x : E} :
    f.clmOfExistsBoundedImage h x = f x :=
  rfl

end NontriviallyNormedField

section RCLike

open TopologicalSpace Bornology

variable [FirstCountableTopology E]
variable [RCLike 𝕜] [Module 𝕜 E] [ContinuousSMul 𝕜 E]
variable [RCLike 𝕜'] [Module 𝕜' F] [ContinuousSMul 𝕜' F]
variable {σ : 𝕜 →+* 𝕜'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variant98a5c146f9094bd37f4bd6b94a1db7f45cc75495cd7f389b96d11e43720f0016.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f3a908baaaf9ba647d098cf19287e41decdf40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
