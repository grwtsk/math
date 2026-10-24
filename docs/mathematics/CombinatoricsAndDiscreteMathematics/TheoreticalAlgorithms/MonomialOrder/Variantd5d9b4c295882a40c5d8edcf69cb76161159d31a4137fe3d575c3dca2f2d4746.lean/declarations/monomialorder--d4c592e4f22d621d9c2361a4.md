# MonomialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a9a6ac798a62d43a0d0ac8fae06953d48c2c6a183bfa4ab59a6db370aeab2f2",
  "kind": "structure",
  "lexical_name": "MonomialOrder",
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
  "slug": "monomialorder--d4c592e4f22d621d9c2361a4",
  "source": {
    "blob": "150917a2f329f2bd4bab822c7a2e85d5d5a3f380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4c592e4f22d621d9c2361a49afb33f26a1460a166dec6379e56eaad6bbe3c8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a9a6ac798a62d43a0d0ac8fae06953d48c2c6a183bfa4ab59a6db370aeab2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MonomialOrder (σ : Type*) where
  /-- The synonym type -/
  syn : Type*
  /-- `syn` is a additive commutative monoid -/
  acm : AddCommMonoid syn := by infer_instance
  /-- `syn` is linearly ordered -/
  lo : LinearOrder syn := by infer_instance
  /-- `syn` is a linearly ordered cancellative additive commutative monoid -/
  iocam : IsOrderedCancelAddMonoid syn := by infer_instance
  /-- the additive equivalence from `σ →₀ ℕ` to `syn` -/
  toSyn : (σ →₀ ℕ) ≃+ syn
  /-- `toSyn` is monotone -/
  toSyn_monotone : Monotone toSyn
  /-- `syn` is a well ordering -/
  wf : WellFoundedLT syn := by infer_instance

attribute [instance] MonomialOrder.acm MonomialOrder.lo MonomialOrder.iocam MonomialOrder.wf

namespace MonomialOrder

variable {σ : Type*} (m : MonomialOrder σ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MonomialOrder/Variantd5d9b4c295882a40c5d8edcf69cb76161159d31a4137fe3d575c3dca2f2d4746.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `150917a2f329f2bd4bab822c7a2e85d5d5a3f380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
