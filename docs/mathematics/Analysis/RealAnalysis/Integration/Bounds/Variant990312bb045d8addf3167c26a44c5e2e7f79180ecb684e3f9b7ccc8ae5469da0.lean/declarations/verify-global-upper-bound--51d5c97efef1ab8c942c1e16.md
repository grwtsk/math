# verify_global_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9188241a-439f-ef36-774c-dbcf23902c53",
  "kind": "theorem",
  "lexical_name": "verify_global_upper_bound",
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
  "slug": "verify-global-upper-bound--51d5c97efef1ab8c942c1e16",
  "source": {
    "blob": "5ea4189e45a24c7ff8d1c90dd03058a17967d83f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1046,
    "line": 1019,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51d5c97efef1ab8c942c1e16c59659ba2b39f7ca31c60343c94dce0d8d359df8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9188241a-439f-ef36-774c-dbcf23902c53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1019–1046.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_global_upper_bound (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (c : ℚ) (cfg : GlobalOptConfig)
    (h_cert : checkGlobalUpperBound e B c cfg = true) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) →
      Expr.eval ρ e ≤ c := by
  simp only [checkGlobalUpperBound, Bool.and_eq_true, decide_eq_true_eq] at h_cert
  intro ρ hρ hzero
  -- Domain validity is automatic for ExprSupported expressions
  have hneg_supp : ExprSupportedCore (Expr.neg e) := ExprSupportedCore.neg hsupp.toCore
  have hneg_dom : ∀ (B' : Box), B'.length = B.length → evalDomainValid (Expr.neg e) B'.toEnv { taylorDepth := cfg.taylorDepth } := by
    intro B' _
    simp only [evalDomainValid]
    exact ExprSupported.domainValid hsupp B'.toEnv { taylorDepth := cfg.taylorDepth }
  have hlo_neg := globalMinimizeCore_lo_correct (Expr.neg e) hneg_supp B cfg hneg_dom ρ hρ hzero
  simp only [Expr.eval_neg] at hlo_neg
  have heval_bound : Expr.eval ρ e ≤ -((globalMinimizeCore (Expr.neg e) B cfg).bound.lo : ℝ) := by
    linarith
  have hhi_eq : ((globalMaximizeCore e B cfg).bound.hi : ℝ) =
                -((globalMinimizeCore (Expr.neg e) B cfg).bound.lo : ℝ) := by
    simp only [globalMaximizeCore]
    push_cast
    ring
  calc Expr.eval ρ e
      ≤ -((globalMinimizeCore (Expr.neg e) B cfg).bound.lo : ℝ) := heval_bound
    _ = ((globalMaximizeCore e B cfg).bound.hi : ℝ) := hhi_eq.symm
    _ ≤ c := by exact_mod_cast h_cert.2

/-- Two-sided global bound verification -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean#L1019).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea4189e45a24c7ff8d1c90dd03058a17967d83f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
