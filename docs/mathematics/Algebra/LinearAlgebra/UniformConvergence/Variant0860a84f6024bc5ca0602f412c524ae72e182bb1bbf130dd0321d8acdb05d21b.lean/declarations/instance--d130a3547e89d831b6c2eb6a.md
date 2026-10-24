# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e06a614f07ceb8d6c2d7992c0696561a90a24e6fc6cd7fc95e7911b97f69e346",
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
  "slug": "instance--d130a3547e89d831b6c2eb6a",
  "source": {
    "blob": "1ae336ec74038ab161e8d09821b05825ac5d4f22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 241,
    "path": "GRWTSK/Algebra/LinearAlgebra/UniformConvergence/Variant0860a84f6024bc5ca0602f412c524ae72e182bb1bbf130dd0321d8acdb05d21b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d130a3547e89d831b6c2eb6a5af4d3f0af61d8906ac3606e3031fcf18d0bd19f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/UniformConvergence/Variant0860a84f6024bc5ca0602f412c524ae72e182bb1bbf130dd0321d8acdb05d21b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e06a614f07ceb8d6c2d7992c0696561a90a24e6fc6cd7fc95e7911b97f69e346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsUniformGroup (α →ᵤ[𝔖] G) :=
  ⟨(-- Since `(/) : G × G → G` is uniformly continuous,
    -- `UniformOnFun.postcomp_uniformContinuous` tells us that
    -- `((/) ∘ —) : (α →ᵤ[𝔖] G × G) → (α →ᵤ[𝔖] G)` is uniformly continuous too. By precomposing with
    -- `UniformOnFun.uniformEquivProdArrow`, this gives that
    -- `(/) : (α →ᵤ[𝔖] G) × (α →ᵤ[𝔖] G) → (α →ᵤ[𝔖] G)` is also uniformly continuous
    UniformOnFun.postcomp_uniformContinuous uniformContinuous_div).comp
    UniformOnFun.uniformEquivProdArrow.symm.uniformContinuous⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/UniformConvergence/Variant0860a84f6024bc5ca0602f412c524ae72e182bb1bbf130dd0321d8acdb05d21b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/UniformConvergence/Variant0860a84f6024bc5ca0602f412c524ae72e182bb1bbf130dd0321d8acdb05d21b.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ae336ec74038ab161e8d09821b05825ac5d4f22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
