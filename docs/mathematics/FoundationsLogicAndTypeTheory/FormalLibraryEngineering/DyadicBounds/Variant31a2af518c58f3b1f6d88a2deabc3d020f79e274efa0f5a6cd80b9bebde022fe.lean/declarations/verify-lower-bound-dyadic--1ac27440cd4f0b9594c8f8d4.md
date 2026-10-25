# verify_lower_bound_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56e5d82e14dfbc6936d823a36ffe770f8bb4eabd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b07eec2c-245d-9549-5e8f-85b2a84c6a27",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:944b9a26-5f52-0d25-455a-b0f8935fd7f3",
  "kind": "theorem",
  "lexical_name": "verify_lower_bound_dyadic",
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
  "slug": "verify-lower-bound-dyadic--1ac27440cd4f0b9594c8f8d4",
  "source": {
    "blob": "56e5d82e14dfbc6936d823a36ffe770f8bb4eabd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ac27440cd4f0b9594c8f8d4a49f3e6e7887c10e0efe1529e7406810d64189e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:944b9a26-5f52-0d25-455a-b0f8935fd7f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_lower_bound_dyadic (e : Expr) (hsupp : ExprSupportedCore e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ)
    (prec : Int) (depth : Nat) (h_prec : prec ≤ 0)
    (hdom : evalDomainValidDyadic e (fun _ => IntervalDyadic.ofIntervalRat ⟨lo, hi, hle⟩ prec)
        { precision := prec, taylorDepth := depth })
    (h_check : checkLowerBoundDyadic e lo hi hle c prec depth = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) hi, c ≤ Expr.eval (fun _ => x) e := by
  intro x hx
  let I_rat : IntervalRat := ⟨lo, hi, hle⟩
  let ρ_dyad : IntervalDyadicEnv := fun _ => IntervalDyadic.ofIntervalRat I_rat prec
  let ρ_real : Nat → ℝ := fun _ => x
  have h_env : envMemDyadic ρ_real ρ_dyad := by
    intro i
    apply IntervalDyadic.mem_ofIntervalRat _ prec h_prec
    rwa [IntervalRat.mem_iff_mem_Icc]
  have h_eval := evalIntervalDyadic_correct e hsupp ρ_real ρ_dyad h_env
    { precision := prec, taylorDepth := depth } h_prec hdom
  simp only [checkLowerBoundDyadic, IntervalDyadic.lowerBoundedBy, decide_eq_true_eq] at h_check
  calc (c : ℝ)
      ≤ ((evalIntervalDyadic e ρ_dyad { precision := prec, taylorDepth := depth }).lo.toRat : ℝ) := by exact_mod_cast h_check
    _ ≤ Expr.eval (fun _ => x) e := h_eval.1

/-! ### Convenience Theorems for ExprSupported

For expressions that don't use `log`, domain validity is automatic.
These versions don't require the `hdom` hypothesis. -/

/-- Convenience theorem for ExprSupported expressions (no log).
    Domain validity is automatic, so only the bound check is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e5d82e14dfbc6936d823a36ffe770f8bb4eabd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
