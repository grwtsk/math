# verify_point_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f4ed00f-2652-e26f-cdb5-db604bae2bee",
  "kind": "theorem",
  "lexical_name": "verify_point_upper_bound",
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
  "slug": "verify-point-upper-bound--368c389f04ed3e5710486667",
  "source": {
    "blob": "5ea4189e45a24c7ff8d1c90dd03058a17967d83f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 235,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:368c389f04ed3e57104866674ecd31b43991e6797104b5db7f2a2ba2b13b02a0",
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

Occurrence: `result:2f4ed00f-2652-e26f-cdb5-db604bae2bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_point_upper_bound (e : Expr) (hsupp : ExprSupportedCore e)
    (x c : ℚ) (cfg : EvalConfig)
    (h_cert : checkPointUpperBound e x c cfg = true) :
    Expr.eval (fun _ => (x : ℝ)) e ≤ c := by
  simp only [checkPointUpperBound, Bool.and_eq_true, decide_eq_true_eq] at h_cert
  let Ipt : IntervalRat := ⟨x, x, le_refl x⟩
  have hdom := checkDomainValid1_correct e Ipt cfg h_cert.1
  have hhi := h_cert.2
  have hx_mem : (x : ℝ) ∈ Ipt := ⟨le_refl _, le_refl _⟩
  exact exprCore_le_of_interval_hi e hsupp Ipt c cfg hdom hhi (x : ℝ) hx_mem

/-- **Argmax Verification Theorem**

    Proves `∀ y ∈ I, f(y) ≤ f(x)` (x is a maximizer) by:
    1. Checking that `∀ y ∈ I, f(y) ≤ c` (the max over I is at most c)
    2. Checking that `c ≤ f(x)` (the value at x is at least c)
    This implies `f(y) ≤ c ≤ f(x)` by transitivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea4189e45a24c7ff8d1c90dd03058a17967d83f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
