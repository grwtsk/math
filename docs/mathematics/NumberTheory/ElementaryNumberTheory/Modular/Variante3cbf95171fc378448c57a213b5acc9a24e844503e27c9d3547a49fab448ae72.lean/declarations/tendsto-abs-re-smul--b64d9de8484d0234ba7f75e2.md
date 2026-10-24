# tendsto_abs_re_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5ebc4ea-9b07-23d7-f7bc-42631ee19ed0",
  "kind": "theorem",
  "lexical_name": "tendsto_abs_re_smul",
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
  "slug": "tendsto-abs-re-smul--b64d9de8484d0234ba7f75e2",
  "source": {
    "blob": "be9a75cc088185b7bfaba3fdc237ec3c32cf3469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 265,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64d9de8484d0234ba7f75e2be730d37a239705f4807145ca741fbe5b4ebf23e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5ebc4ea-9b07-23d7-f7bc-42631ee19ed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_abs_re_smul {p : Fin 2 → ℤ} (hp : IsCoprime (p 0) (p 1)) :
    Tendsto
      (fun g : { g : SL(2, ℤ) // (↑ₘg) 1 = p } => |((g : SL(2, ℤ)) • z).re|) cofinite atTop := by
  suffices
    Tendsto (fun g : (fun g : SL(2, ℤ) => (↑ₘg) 1) ⁻¹' {p} => ((g : SL(2, ℤ)) • z).re) cofinite
      (cocompact ℝ)
    by exact tendsto_norm_cocompact_atTop.comp this
  have : ((p 0 : ℝ) ^ 2 + (p 1 : ℝ) ^ 2)⁻¹ ≠ 0 := by
    apply inv_ne_zero
    exact_mod_cast hp.sq_add_sq_ne_zero
  let f := Homeomorph.mulRight₀ _ this
  let ff := Homeomorph.addRight
    (((p 1 : ℂ) * z - p 0) / (((p 0 : ℂ) ^ 2 + (p 1 : ℂ) ^ 2) * (p 0 * z + p 1))).re
  convert (f.trans ff).closedEmbedding.tendsto_cocompact.comp (tendsto_lcRow0 hp) with _ _ g
  change
    ((g : SL(2, ℤ)) • z).re =
      lcRow0 p ↑(↑g : SL(2, ℝ)) / ((p 0 : ℝ) ^ 2 + (p 1 : ℝ) ^ 2) +
        Complex.re (((p 1 : ℂ) * z - p 0) / (((p 0 : ℂ) ^ 2 + (p 1 : ℂ) ^ 2) * (p 0 * z + p 1)))
  exact_mod_cast congr_arg Complex.re (smul_eq_lcRow0_add z hp g.2)
#align modular_group.tendsto_abs_re_smul ModularGroup.tendsto_abs_re_smul

end TendstoLemmas

section FundamentalDomain

set_option linter.uppercaseLean3 false

attribute [local simp] UpperHalfPlane.coe_smul re_smul

/-- For `z : ℍ`, there is a `g : SL(2,ℤ)` maximizing `(g•z).im` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variante3cbf95171fc378448c57a213b5acc9a24e844503e27c9d3547a49fab448ae72.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be9a75cc088185b7bfaba3fdc237ec3c32cf3469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
