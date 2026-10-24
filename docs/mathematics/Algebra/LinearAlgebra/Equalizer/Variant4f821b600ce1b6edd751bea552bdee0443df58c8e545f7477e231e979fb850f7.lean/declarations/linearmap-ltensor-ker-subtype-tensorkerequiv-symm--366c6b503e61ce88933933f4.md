# LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:335c7686-6c39-8987-7541-e85b8a5c3346",
  "kind": "lemma",
  "lexical_name": "LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm",
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
  "slug": "linearmap-ltensor-ker-subtype-tensorkerequiv-symm--366c6b503e61ce88933933f4",
  "source": {
    "blob": "e0afaf8f1a3a3dd01cac113b1ad03d09aee8909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:366c6b503e61ce88933933f4ddc7413583f285391a0bdcc92a8280a9e9b3920f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:335c7686-6c39-8987-7541-e85b8a5c3346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm [Module.Flat R M]
    (x : ker (AlgebraTensorModule.lTensor S M f)) :
    (lTensor M (ker f).subtype) ((tensorKerEquiv S M f).symm x) = x :=
  lTensor_ker_subtype_tensorKerInv S M f x

/-- If `M` is `R`-flat, the canonical map `M ⊗[R] eq(f, g) →ₗ[S] eq (𝟙 ⊗ f, 𝟙 ⊗ g)` is an
isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant4f821b600ce1b6edd751bea552bdee0443df58c8e545f7477e231e979fb850f7.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0afaf8f1a3a3dd01cac113b1ad03d09aee8909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
