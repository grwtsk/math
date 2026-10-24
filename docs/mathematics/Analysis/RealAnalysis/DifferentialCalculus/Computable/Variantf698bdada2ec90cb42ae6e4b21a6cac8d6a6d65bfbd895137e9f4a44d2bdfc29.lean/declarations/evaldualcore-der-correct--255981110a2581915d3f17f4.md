# evalDualCore_der_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:130c33ac-5e65-6006-1376-ef6e139347d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0a0d3c9a-8035-920d-8904-ec924373f042",
  "kind": "theorem",
  "lexical_name": "evalDualCore_der_correct",
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
  "slug": "evaldualcore-der-correct--255981110a2581915d3f17f4",
  "source": {
    "blob": "747babc0407118a18da9ff930c8c65b2fc3ff6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 231,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:255981110a2581915d3f17f4573b52503a2aeb7d2d8b832fb73fcc914c7cbb80",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a0d3c9a-8035-920d-8904-ec924373f042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalDualCore_der_correct (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (x : ℝ) (hx : x ∈ I) (cfg : EvalConfig) :
    deriv (evalFunc1 e) x ∈ (evalDualCore e (fun _ => DualInterval.varActive I) cfg).der := by
  induction hsupp generalizing x with
  | const q =>
    simp only [evalDualCore, DualInterval.const, evalFunc1_const, deriv_const]
    convert IntervalRat.mem_singleton 0 using 1
    norm_cast
  | var _ =>
    simp only [evalDualCore, DualInterval.varActive, evalFunc1_var]
    rw [deriv_id]
    convert IntervalRat.mem_singleton 1 using 1
    norm_cast
  | add h₁ h₂ ih₁ ih₂ =>
    have hd₁ := evalFunc1_differentiable _ h₁
    have hd₂ := evalFunc1_differentiable _ h₂
    simp only [evalDualCore, DualInterval.add, evalFunc1_add_pi, deriv_add (hd₁ x) (hd₂ x)]
    exact IntervalRat.mem_add (ih₁ x hx) (ih₂ x hx)
  | mul h₁ h₂ ih₁ ih₂ =>
    have hd₁ := evalFunc1_differentiable _ h₁
    have hd₂ := evalFunc1_differentiable _ h₂
    simp only [evalDualCore, DualInterval.mul, evalFunc1_mul_pi, deriv_mul (hd₁ x) (hd₂ x)]
    have hdom₁ := evalDomainValidDual_of_ExprSupported _ h₁ (fun _ => DualInterval.varActive I) cfg
    have hdom₂ := evalDomainValidDual_of_ExprSupported _ h₂ (fun _ => DualInterval.varActive I) cfg
    have hval₁ := evalDualCore_val_correct _ h₁.toCore (fun _ => x)
      (fun _ => DualInterval.varActive I) cfg (fun _ => hx) hdom₁
    have hval₂ := evalDualCore_val_correct _ h₂.toCore (fun _ => x)
      (fun _ => DualInterval.varActive I) cfg (fun _ => hx) hdom₂
    exact IntervalRat.mem_add (IntervalRat.mem_mul (ih₁ x hx) hval₂) (IntervalRat.mem_mul hval₁ (ih₂ x hx))
  | neg hs ih =>
    have hd := evalFunc1_differentiable _ hs
    simp only [evalDualCore, DualInterval.neg, evalFunc1_neg_pi, deriv.neg]
    exact IntervalRat.mem_neg (ih x hx)
  | @sin e' hs ih =>
    have hd := evalFunc1_differentiable e' hs
    simp only [evalDualCore, DualInterval.sinCore, evalFunc1_sin]
    rw [deriv_sin (hd.differentiableAt)]
    have hdom := evalDomainValidDual_of_ExprSupported e' hs (fun _ => DualInterval.varActive I) cfg
    have hval := evalDualCore_val_correct e' hs.toCore (fun _ => x)
      (fun _ => DualInterval.varActive I) cfg (fun _ => hx) hdom
    have hcos := IntervalRat.mem_cosComputable hval cfg.taylorDepth
    exact IntervalRat.mem_mul hcos (ih x hx)
  | @cos e' hs ih =>
    have hd := evalFunc1_differentiable e' hs
    simp only [evalDualCore, DualInterval.cosCore, evalFunc1_cos]
    rw [deriv_cos (hd.differentiableAt)]
    have hdom := evalDomainValidDual_of_ExprSupported e' hs (fun _ => DualInterval.varActive I) cfg
    have hval := evalDualCore_val_correct e' hs.toCore (fun _ => x)
      (fun _ => DualInterval.varActive I) cfg (fun _ => hx) hdom
    have hsin := IntervalRat.mem_sinComputable hval cfg.taylorDepth
    have hnegsin := IntervalRat.mem_neg hsin
    exact IntervalRat.mem_mul hnegsin (ih x hx)
  | @exp e' hs ih =>
    have hd := evalFunc1_differentiable e' hs
    simp only [evalDualCore, DualInterval.expCore, evalFunc1_exp]
    rw [deriv_exp (hd.differentiableAt)]
    have hdom := evalDomainValidDual_of_ExprSupported e' hs (fun _ => DualInterval.varActive I) cfg
    have hval := evalDualCore_val_correct e' hs.toCore (fun _ => x)
      (fun _ => DualInterval.varActive I) cfg (fun _ => hx) hdom
    have hexp := IntervalRat.mem_expComputable hval cfg.taylorDepth
    exact IntervalRat.mem_mul hexp (ih x hx)

/-- Convenience theorem: derivIntervalCore correctness -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variantf698bdada2ec90cb42ae6e4b21a6cac8d6a6d65bfbd895137e9f4a44d2bdfc29.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747babc0407118a18da9ff930c8c65b2fc3ff6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
