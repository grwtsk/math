# verify_no_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11918b85-4129-92f0-ad62-5f5bb1479c8f",
  "kind": "theorem",
  "lexical_name": "verify_no_root",
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
  "slug": "verify-no-root--49f3a2c6709de9fd90e453e2",
  "source": {
    "blob": "5ea4189e45a24c7ff8d1c90dd03058a17967d83f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1224,
    "line": 1194,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f3a2c6709de9fd90e453e233c4274a5d9bcb44d54a9b7591ebfec1fc8859c2",
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

Occurrence: `result:11918b85-4129-92f0-ad62-5f5bb1479c8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1194–1224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_no_root (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (cfg : EvalConfig)
    (h_cert : checkNoRoot e I cfg = true) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≠ 0 := by
  simp only [checkNoRoot, Bool.and_eq_true, Bool.or_eq_true, decide_eq_true_eq] at h_cert
  intro x hx hcontra
  have hdom := checkDomainValid1_correct e I cfg h_cert.1
  have heval := evalIntervalCore1_correct e hsupp x I hx cfg hdom
  simp only [IntervalRat.mem_def] at heval
  cases h_cert.2 with
  | inl hhi =>
    -- f's interval hi < 0, so f(x) ≤ hi < 0, contradiction with f(x) = 0
    have hhi_real : ((evalIntervalCore1 e I cfg).hi : ℝ) < 0 := by exact_mod_cast hhi
    have hf_neg : Expr.eval (fun _ => x) e < 0 := lt_of_le_of_lt heval.2 hhi_real
    rw [hcontra] at hf_neg
    exact absurd hf_neg (lt_irrefl 0)
  | inr hlo =>
    -- 0 < f's interval lo, so 0 < lo ≤ f(x), contradiction with f(x) = 0
    have hlo_real : (0 : ℝ) < (evalIntervalCore1 e I cfg).lo := by exact_mod_cast hlo
    have hf_pos : 0 < Expr.eval (fun _ => x) e := lt_of_lt_of_le hlo_real heval.1
    rw [hcontra] at hf_pos
    exact absurd hf_pos (lt_irrefl 0)

/-- **Golden Theorem for Newton Contraction (Unique Root Existence)**

    If `checkNewtonContracts e I cfg = true`, then there exists a unique root in I.

    This theorem requires additional hypotheses that the external checker must verify:
    - The expression is supported
    - The expression uses only variable 0
    - The function is continuous on I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean#L1194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea4189e45a24c7ff8d1c90dd03058a17967d83f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
