# differentiableAt_Λ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49820aa2-56c9-67e6-4b40-be3d4f402f5f",
  "kind": "theorem",
  "lexical_name": "differentiableAt_Λ",
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
  "slug": "differentiableat--0b9d6326f4d1c3b33c0f5924",
  "source": {
    "blob": "feeb380c12bced03b1cdee46bf4c28c7329c7338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 414,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b9d6326f4d1c3b33c0f5924d629c4280787b160584bbb22632c74118ec0d718",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49820aa2-56c9-67e6-4b40-be3d4f402f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_Λ {s : ℂ} (hs : s ≠ 0 ∨ P.f₀ = 0) (hs' : s ≠ P.k ∨ P.g₀ = 0) :
    DifferentiableAt ℂ P.Λ s := by
  refine ((P.differentiable_Λ₀ s).sub ?_).sub ?_
  · rcases hs with hs | hs
    · simpa using (differentiableAt_inv hs).smul_const _
    · simp [hs]
  · rcases hs' with hs' | hs'
    · apply DifferentiableAt.smul_const
      apply (differentiableAt_const _).div ((differentiableAt_const _).sub (differentiable_id _))
      simpa [sub_eq_zero, eq_comm]
    · simp [hs']

/-- Relation between `Λ s` and the Mellin transform of `f - f₀`, where the latter is defined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variante9cb3bb143976b1e4e7a71b4e89b371acc79cd847ae3b614c973c7b82ccb731a.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `feeb380c12bced03b1cdee46bf4c28c7329c7338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
