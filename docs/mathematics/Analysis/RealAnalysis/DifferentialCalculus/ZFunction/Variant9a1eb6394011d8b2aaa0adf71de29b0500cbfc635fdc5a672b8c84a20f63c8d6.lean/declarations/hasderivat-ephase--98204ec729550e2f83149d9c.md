# hasDerivAt_ephase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31421054-3e51-60c0-9ea3-60086f8c00c3",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_ephase",
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
  "slug": "hasderivat-ephase--98204ec729550e2f83149d9c",
  "source": {
    "blob": "7d4fb99b259b95ad9dd35d18a3572d23786ddc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 179,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98204ec729550e2f83149d9c20e4eeb0a8d8e5a5996d2574ff7ef155405c46f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31421054-3e51-60c0-9ea3-60086f8c00c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_ephase (t : ℝ) : HasDerivAt ephase (I * ((gG t).re : ℂ) * ephase t) t := by
  have hG := Gfun_ne_zero t
  have hn : ((‖Gfun t‖ : ℂ)) ≠ 0 := by exact_mod_cast (normG_pos t).ne'
  have h1 := hasDerivAt_Gfun t
  have h2 : HasDerivAt (fun t => ((‖Gfun t‖ : ℝ) : ℂ)) (((-(gG t).im * ‖Gfun t‖ : ℝ)) : ℂ) t :=
    (hasDerivAt_normG t).ofReal_comp
  have h3 := h1.div h2 hn
  have e : (Gfun / fun t => ((‖Gfun t‖ : ℝ) : ℂ)) = ephase := rfl
  rw [e] at h3
  refine h3.congr_deriv ?_
  -- algebra: (Γℝ′ i ‖G‖ − G·(−Im g ‖G‖))/‖G‖² = i Re(g) G/‖G‖, using Γℝ′ = g·G and i g + Im g = i Re g
  have hG' : Gammaℝ (sline t) ≠ 0 := Gfun_ne_zero t
  have hd : deriv Gammaℝ (sline t) = gG t * Gfun t := by
    rw [gG, logDeriv_apply, Gfun]; field_simp
  have key : I * gG t + (((gG t).im : ℝ) : ℂ) = I * (((gG t).re : ℝ) : ℂ) := by
    apply Complex.ext <;> simp
  rw [hd, ephase]
  push_cast
  field_simp
  linear_combination key

/-- L₂(½+it) = Re (Γℝ′/Γℝ)(½+it) ∈ ℝ  [XF′ (Z3)], t ≠ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4fb99b259b95ad9dd35d18a3572d23786ddc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
