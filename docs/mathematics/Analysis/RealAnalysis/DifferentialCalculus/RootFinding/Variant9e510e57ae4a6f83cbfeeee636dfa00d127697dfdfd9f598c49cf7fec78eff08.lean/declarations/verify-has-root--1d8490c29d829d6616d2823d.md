# verify_has_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 880,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5986570f-36cb-0a87-ee0d-08ca8a8fe7e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:747b2d01-f9fe-e89c-2a05-319f8b60e46a",
  "kind": "theorem",
  "lexical_name": "verify_has_root",
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
  "slug": "verify-has-root--1d8490c29d829d6616d2823d",
  "source": {
    "blob": "bb77cfffd986ec01707cbbb5deb70cfe0d09f56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 921,
    "line": 880,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d8490c29d829d6616d2823df729695397e5f17137a757d9803a10b0b1b33af2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:747b2d01-f9fe-e89c-2a05-319f8b60e46a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–921.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_has_root (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : RootConfig)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (h_cert : checkHasRoot e I cfg = true) :
    ∃ x ∈ I, Expr.eval (fun _ => x) e = 0 := by
  simp only [checkHasRoot] at h_cert
  -- Extract the interval with hasRoot status
  have htol : (0 : ℚ) < 1 / 2 ^ cfg.maxDepth := by positivity
  set result := bisectRoot e I cfg.maxDepth (1 / 2 ^ cfg.maxDepth) htol with hresult
  -- h_cert says some interval has hasRoot status
  simp only [List.any_eq_true, beq_iff_eq] at h_cert
  obtain ⟨⟨J, s⟩, hmem, hs⟩ := h_cert
  -- Apply bisectRoot_hasRoot_correct
  have hroot := bisectRoot_hasRoot_correct e hsupp I cfg.maxDepth (1 / 2 ^ cfg.maxDepth) htol hCont
  have hroot_J := hroot J s hmem hs
  -- hroot_J : ∃ x ∈ J, f(x) = 0
  -- We need to show x ∈ I
  obtain ⟨x, hxJ, hx_root⟩ := hroot_J
  -- Show J ⊆ I using go_subinterval (implicitly used in bisectRoot_hasRoot_correct)
  -- Actually, bisectRoot_hasRoot_correct proves x ∈ J, and we need x ∈ I
  -- The proof in bisectRoot_hasRoot_correct shows J is a sub-interval of I
  -- and applies signChange_correct with continuity on J
  -- So x ∈ J ⊆ I
  refine ⟨x, ?_, hx_root⟩
  -- Need to show x ∈ I given x ∈ J and J is a sub-interval of I
  -- From go_subinterval in the bisectRoot_hasRoot_correct proof
  have hJsub : I.lo ≤ J.lo ∧ J.hi ≤ I.hi := by
    -- This follows from go_subinterval applied in the bisectRoot_hasRoot_correct proof
    -- We need to extract this lemma
    have hSub := go_subinterval e (1 / 2 ^ cfg.maxDepth) cfg.maxDepth I
      [(I, RootStatus.unknown)] cfg.maxDepth []
      (subinterval_inv_initial I)
      (fun _ _ h => by simp only [List.mem_nil_iff] at h)
    exact hSub J s hmem
  simp only [IntervalRat.mem_def] at hxJ ⊢
  constructor
  · calc (I.lo : ℝ) ≤ J.lo := by exact_mod_cast hJsub.1
      _ ≤ x := hxJ.1
  · calc x ≤ J.hi := hxJ.2
      _ ≤ I.hi := by exact_mod_cast hJsub.2

end LeanCert.Validity.RootFinding
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootFinding/Variant9e510e57ae4a6f83cbfeeee636dfa00d127697dfdfd9f598c49cf7fec78eff08.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb77cfffd986ec01707cbbb5deb70cfe0d09f56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
