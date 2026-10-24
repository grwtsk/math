# innerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76f5264ac317e9f7df98685947acb21c17bad4bdca0558892dafaf51f5566ff2",
  "kind": "instance",
  "lexical_name": "innerProductSpace",
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
  "slug": "innerproductspace--181a0840389c5c4d43ddaa5a",
  "source": {
    "blob": "ba68f2afcf2ef56eb220febdb81ae54ab9e7826b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:181a0840389c5c4d43ddaa5a2bba9bc53346b214d4ca598f55867443861746ab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76f5264ac317e9f7df98685947acb21c17bad4bdca0558892dafaf51f5566ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance innerProductSpace : InnerProductSpace 𝕜 (α →₂[μ] E) where
  norm_sq_eq_re_inner := norm_sq_eq_re_inner
  conj_inner_symm _ _ := by simp_rw [inner_def, ← integral_conj, inner_conj_symm]
  add_left := add_left'
  smul_left := smul_left'

end InnerProductSpace

section IndicatorConstLp

variable (𝕜) {s : Set α}

/-- The inner product in `L2` of the indicator of a set `indicatorConstLp 2 hs hμs c` and `f` is
equal to the integral of the inner product over `s`: `∫ x in s, ⟪c, f x⟫ ∂μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant74080c126cfe350e05b84d5169325cba292df6af9da8ad44ce8ce89ae0d4e4aa.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba68f2afcf2ef56eb220febdb81ae54ab9e7826b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
