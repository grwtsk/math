# pairSwap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7824f70477eb8c1f6ef3d980fee1674b1655b2d1e2367a3feac884989d25899",
  "kind": "def",
  "lexical_name": "pairSwap",
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
  "slug": "pairswap--a2ca9e1d30c7d1d1999ed345",
  "source": {
    "blob": "4ad2cf8a1aa8bab8ad7a01a62ec8aac4c19e5e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2ca9e1d30c7d1d1999ed345914acb044b985d3b658eac698dd64e8dc634f89a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7824f70477eb8c1f6ef3d980fee1674b1655b2d1e2367a3feac884989d25899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pairSwap : PairState H ≃ₗᵢ[ℂ] PairState H where
  toLinearEquiv := (WithLp.linearEquiv 2 ℂ (H × H)).trans
    ((LinearEquiv.prodComm ℂ H H).trans (WithLp.linearEquiv 2 ℂ (H × H)).symm)
  norm_map' x := by
    apply (sq_eq_sq₀ (norm_nonneg _) (norm_nonneg _)).1
    simp only [WithLp.prod_norm_sq_eq_of_L2]
    change ‖x.snd‖ ^ 2 + ‖x.fst‖ ^ 2 = ‖x.fst‖ ^ 2 + ‖x.snd‖ ^ 2
    ring

/-- Swapping the explicit channels fixes the multiplication convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompensatedReadout/Variant7b645c71514a7d58f1d3ebaaf317b46326892a17bef2e095bcde7e2acd0043ef.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ad2cf8a1aa8bab8ad7a01a62ec8aac4c19e5e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
