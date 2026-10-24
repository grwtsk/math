# sinc_evalSet_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc75ae6e-db77-7d00-89d7-94e8ae6e20f0",
  "kind": "theorem",
  "lexical_name": "sinc_evalSet_correct",
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
  "slug": "sinc-evalset-correct--c680eef219e5de93d1ffc653",
  "source": {
    "blob": "bf961c73085cd288d6c5efc32e854e4510fee259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 711,
    "path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c680eef219e5de93d1ffc653ed77a033cac209ffc93efa06e5a54737e1ba46fa",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc75ae6e-db77-7d00-89d7-94e8ae6e20f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sinc_evalSet_correct
    (f : ℝ → ℝ) (tm : TaylorModel) (degree : ℕ)
    (hf : ∀ x ∈ tm.domain, f x ∈ tm.evalSet x) :
    ∀ x ∈ tm.domain, Real.sinc (f x) ∈ (TaylorModel.sinc tm degree).evalSet x := by
  intro x hx
  simp only [sinc, evalSet, Set.mem_setOf_eq]
  refine ⟨Real.sinc (f x), ?_, ?_⟩
  · have hfbound : f x ∈ tm.bound := taylorModel_correct tm f hf x hx
    have hdomain : (tmSinc tm.bound degree).domain = tm.bound := rfl
    have hfx_in_dom : f x ∈ (tmSinc tm.bound degree).domain := hdomain ▸ hfbound
    have hsinc_bound : Real.sinc (f x) ∈ (tmSinc tm.bound degree).bound := by
      apply taylorModel_correct (tmSinc tm.bound degree) Real.sinc
        (fun z hz => tmSinc_correct tm.bound degree z hz) (f x) hfx_in_dom
    exact hsinc_bound
  · simp only [Polynomial.aeval_zero]; ring

/-- Global bound for tanh: tanh(x) ∈ [-1, 1] for all x. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Expr/Variant60318a0bba2a1193138f79971863470f16c755c3207652c36cb4f4aa4da8a850.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf961c73085cd288d6c5efc32e854e4510fee259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
