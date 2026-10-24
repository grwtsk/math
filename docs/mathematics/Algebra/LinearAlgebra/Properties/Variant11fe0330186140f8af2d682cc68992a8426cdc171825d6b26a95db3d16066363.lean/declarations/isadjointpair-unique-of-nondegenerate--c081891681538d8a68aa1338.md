# isAdjointPair_unique_of_nondegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05dee9b7-d217-f2fb-9b91-f757eab9af33",
  "kind": "theorem",
  "lexical_name": "isAdjointPair_unique_of_nondegenerate",
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
  "slug": "isadjointpair-unique-of-nondegenerate--c081891681538d8a68aa1338",
  "source": {
    "blob": "40681f592b9648400ded4751c49b81f69c55a0c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c081891681538d8a68aa13388d6ee7d4843d9f3eb90d1e2844d96c9cbc646d07",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05dee9b7-d217-f2fb-9b91-f757eab9af33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAdjointPair_unique_of_nondegenerate (B : BilinForm R₁ M₁) (b : B.Nondegenerate)
    (φ ψ₁ ψ₂ : M₁ →ₗ[R₁] M₁) (hψ₁ : IsAdjointPair B B ψ₁ φ) (hψ₂ : IsAdjointPair B B ψ₂ φ) :
    ψ₁ = ψ₂ :=
  B.compLeft_injective b <| ext fun v w => by rw [compLeft_apply, compLeft_apply, hψ₁, hψ₂]

section FiniteDimensional

variable [FiniteDimensional K V]

/-- Given a nondegenerate bilinear form `B` on a finite-dimensional vector space, `B.toDual` is
the linear equivalence between a vector space and its dual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40681f592b9648400ded4751c49b81f69c55a0c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
