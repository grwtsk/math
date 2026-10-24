# verify_no_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89132187-3fa4-cbf5-f4f4-aefc54387c10",
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
  "slug": "verify-no-root--bdc0d4d6e8bbaf7d4339b113",
  "source": {
    "blob": "315d17660f460f5b4b197971d55addc12669fe53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdc0d4d6e8bbaf7d4339b113bff29296e2b586109336eedbd6db70bc4852150e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89132187-3fa4-cbf5-f4f4-aefc54387c10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–203.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9a29e0a3aba72ef6e8e22d636f4b273d0c88b1eef9a2159797b4aef2add59a7c.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `315d17660f460f5b4b197971d55addc12669fe53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
