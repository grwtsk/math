# LinearIsometryEquiv.norm_iteratedFDeriv_comp_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d1b1086-8f97-0619-3c75-e256f4f07db3",
  "kind": "theorem",
  "lexical_name": "LinearIsometryEquiv.norm_iteratedFDeriv_comp_left",
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
  "slug": "linearisometryequiv-norm-iteratedfderiv-comp-left--9a74dda0709b4e06265d3cbf",
  "source": {
    "blob": "a9fc6815627d5c5ed3b37b5d7934a39587383857",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a74dda0709b4e06265d3cbfdbe81fbebc36bedbc04a23579c0c3467a3352503",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d1b1086-8f97-0619-3c75-e256f4f07db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIsometryEquiv.norm_iteratedFDeriv_comp_left (g : F ≃ₗᵢ[𝕜] G) (f : E → F) (x : E)
    (i : ℕ) : ‖iteratedFDeriv 𝕜 i (g ∘ f) x‖ = ‖iteratedFDeriv 𝕜 i f x‖ := by
  rw [← iteratedFDerivWithin_univ, ← iteratedFDerivWithin_univ]
  apply g.norm_iteratedFDerivWithin_comp_left f uniqueDiffOn_univ (mem_univ x) i

/-- Composition by continuous linear equivs on the left respects higher differentiability at a
point in a domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantb31a6efd24c1add2e913804039b30c28e155dbe56c15b3b6d3ec3d1925826e55.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9fc6815627d5c5ed3b37b5d7934a39587383857` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
