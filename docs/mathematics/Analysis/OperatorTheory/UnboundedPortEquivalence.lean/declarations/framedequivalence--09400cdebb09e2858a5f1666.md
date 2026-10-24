# FramedEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e47f3bac9b6a5106098e26f09339aca953e2d73c23a470ca6cb09437ec58b404",
  "kind": "structure",
  "lexical_name": "FramedEquivalence",
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
  "slug": "framedequivalence--09400cdebb09e2858a5f1666",
  "source": {
    "blob": "a0f45912a7067c59bbe7fcf4365f49057fcc4459",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 20,
    "path": "GRWTSK/Analysis/Operator/UnboundedPortEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09400cdebb09e2858a5f1666c96277dc5ac64805e8442ea9b3dcefd7e93d0384",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e47f3bac9b6a5106098e26f09339aca953e2d73c23a470ca6cb09437ec58b404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FramedEquivalence
    (A : UnboundedOperator R E) (B : UnboundedOperator R F) where
  frame : E ≃ₗ[R] F
  frame_maps_domain : ∀ x : A.domain, frame x ∈ B.domain
  symm_maps_domain : ∀ y : B.domain, frame.symm y ∈ A.domain
  intertwines :
    (Port.mk frame.toLinearMap frame_maps_domain).Intertwines

namespace FramedEquivalence

variable {A : UnboundedOperator R E}
variable {B : UnboundedOperator R F}
variable {C : UnboundedOperator R G}

/-- Forget a framed domain equivalence to its forward exact port. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/UnboundedPortEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/UnboundedPortEquivalence.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f45912a7067c59bbe7fcf4365f49057fcc4459` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
