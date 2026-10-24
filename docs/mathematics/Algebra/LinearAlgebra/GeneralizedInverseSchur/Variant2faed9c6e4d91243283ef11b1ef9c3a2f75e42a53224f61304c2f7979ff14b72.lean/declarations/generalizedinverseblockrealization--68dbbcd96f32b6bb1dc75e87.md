# GeneralizedInverseBlockRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e54de5e4d88c6c9d3280a23af4cee85c5bfd5732c724fc32fc73ec4adf34152d",
  "kind": "structure",
  "lexical_name": "GeneralizedInverseBlockRealization",
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
  "slug": "generalizedinverseblockrealization--68dbbcd96f32b6bb1dc75e87",
  "source": {
    "blob": "21fa892b996de3c45287ca4f76f4d202a90225fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68dbbcd96f32b6bb1dc75e87ab657fce555f9c1a24dc1607db1f966cf8df82e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e54de5e4d88c6c9d3280a23af4cee85c5bfd5732c724fc32fc73ec4adf34152d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeneralizedInverseBlockRealization
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ))) where
  provenanceMatrix : Matrix ι ι ℝ
  crossMatrix : Matrix ι κ ℝ
  autonomousMatrix : Matrix κ κ ℝ
  generalizedInverse : Matrix ι ι ℝ
  generalizedInverse_isSymm : generalizedInverse.IsSymm
  cross_in_range : ∀ u : κ → ℝ,
    provenanceMatrix.mulVec
        (generalizedInverse.mulVec (crossMatrix.mulVec u)) =
      crossMatrix.mulVec u
  provenance_block : ∀ p q,
    G.form (provenanceInclusion p) (provenanceInclusion q) =
      p ⬝ᵥ provenanceMatrix.mulVec q
  cross_block : ∀ p u,
    G.form (provenanceInclusion p) (autonomousInclusion u) =
      p ⬝ᵥ crossMatrix.mulVec u
  autonomous_block : ∀ u v,
    G.form (autonomousInclusion u) (autonomousInclusion v) =
      u ⬝ᵥ autonomousMatrix.mulVec v

namespace GeneralizedInverseBlockRealization

variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- The generalized-inverse normal-equation solver Aplus * B. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant2faed9c6e4d91243283ef11b1ef9c3a2f75e42a53224f61304c2f7979ff14b72.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21fa892b996de3c45287ca4f76f4d202a90225fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
