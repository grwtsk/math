# logDeriv_principal_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4940a418-532f-4448-f1ce-809d50f17310",
  "kind": "theorem",
  "lexical_name": "logDeriv_principal_part",
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
  "slug": "logderiv-principal-part--1948dacd067377e0affef5e7",
  "source": {
    "blob": "3095d3336a3ccaa39846b8448646d86fe692206c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 34,
    "path": "GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1948dacd067377e0affef5e710b27c4f157cc1a8cee562272d023e713e8ea987",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4940a418-532f-4448-f1ce-809d50f17310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_principal_part (f g : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hg : AnalyticAt ℂ g a) (hg0 : g a ≠ 0)
    (hfactor : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * g s) :
    AnalyticAt ℂ (logDeriv g) a ∧
      logDeriv f =ᶠ[𝓝[≠] a] fun s => (k : ℂ) / (s - a) + logDeriv g s := by
  have hregular : AnalyticAt ℂ (logDeriv g) a := hg.deriv.div hg hg0
  refine ⟨hregular, ?_⟩
  have hunit : ∀ᶠ s in 𝓝[≠] a, AnalyticAt ℂ g s := hg.eventually_analyticAt.filter_mono nhdsWithin_le_nhds
  have hnonzero : ∀ᶠ s in 𝓝[≠] a, g s ≠ 0 := (hg.continuousAt.tendsto.eventually_ne hg0).filter_mono
    nhdsWithin_le_nhds
  filter_upwards [logDeriv_congr_nhdsNE hfactor, hunit, hnonzero,
    self_mem_nhdsWithin] with s heq hgs hgs0 hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  have hpower : logDeriv (fun u : ℂ => (u - a) ^ k) s = (k : ℂ) / (s - a) := by
    rw [logDeriv_fun_zpow (by fun_prop : DifferentiableAt ℂ (fun u : ℂ => u - a) s) k]
    simp [logDeriv_apply, div_eq_mul_inv]
  rw [heq, logDeriv_mul (f := fun u : ℂ => (u - a) ^ k) (g := g) s (zpow_ne_zero k hs0) hgs0
    (((hasDerivAt_id s).sub_const a).differentiableAt.zpow (Or.inl hs0)) hgs.differentiableAt, hpower]

/-- A punctured principal-part identity gives the signed coefficient by a
limit. The function's assigned center value is irrelevant to this statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3095d3336a3ccaa39846b8448646d86fe692206c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
