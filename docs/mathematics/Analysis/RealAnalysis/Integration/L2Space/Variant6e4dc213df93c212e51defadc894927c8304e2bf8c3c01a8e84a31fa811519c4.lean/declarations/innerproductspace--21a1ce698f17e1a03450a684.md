# innerProductSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3e2e4f4f14ba8480ffa89fe1bc93cb53743c37034d98543be32800c38750c76",
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
  "slug": "innerproductspace--21a1ce698f17e1a03450a684",
  "source": {
    "blob": "f74a7fd4d39c136e90feb59319688cf96b27daf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21a1ce698f17e1a03450a68409b2da3cd749804a04f0ab19e21586a2504225df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3e2e4f4f14ba8480ffa89fe1bc93cb53743c37034d98543be32800c38750c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variant6e4dc213df93c212e51defadc894927c8304e2bf8c3c01a8e84a31fa811519c4.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74a7fd4d39c136e90feb59319688cf96b27daf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
