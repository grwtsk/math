# positive_of_coercive_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d60b061-8437-3e33-e11c-191a7a7f2644",
  "kind": "theorem",
  "lexical_name": "positive_of_coercive_residual",
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
  "slug": "positive-of-coercive-residual--7a16c35f94f21fb601d1ed15",
  "source": {
    "blob": "c0be3f8be5463a7c0b7f99e25a9f5acdd8125ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 47,
    "path": "GRWTSK/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a16c35f94f21fb601d1ed150a399154e4da650aad4b93f34f794b22aeebe505",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d60b061-8437-3e33-e11c-191a7a7f2644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_of_coercive_residual (H P : E →L[𝕜] E) (hH : H.IsSymmetric) (c : ℝ)
    (hmargin : ∀ u, c*‖u‖^2 ≤ P.reApplyInnerSelf u) (hresidual : ‖H-P‖ ≤ c) :
    H.IsPositive := by
  refine ⟨hH,fun u => ?_⟩
  exact (mul_nonneg (sub_nonneg.mpr hresidual) (sq_nonneg _)).trans
    (coercive_approximation_lower H P c hmargin u)

/-- The source operator H is fixed outside every precision/approximant quantifier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuard/Variant4e1dd38a41cc0dd8eb489ff30065af586d8f78f0531fcbec2bbb18e2791f6b3e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0be3f8be5463a7c0b7f99e25a9f5acdd8125ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
