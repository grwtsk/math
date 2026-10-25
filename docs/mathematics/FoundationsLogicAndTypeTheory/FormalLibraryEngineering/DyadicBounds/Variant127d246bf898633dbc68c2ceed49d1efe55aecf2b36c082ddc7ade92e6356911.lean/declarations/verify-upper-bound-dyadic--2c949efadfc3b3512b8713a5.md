# verify_upper_bound_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddfb0fe3-bd4c-f969-cefe-0176017c2ae6",
  "kind": "theorem",
  "lexical_name": "verify_upper_bound_dyadic",
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
  "slug": "verify-upper-bound-dyadic--2c949efadfc3b3512b8713a5",
  "source": {
    "blob": "87ff56dd51f8cbb6731e5802861c2ca3d107018b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c949efadfc3b3512b8713a5f94b95fa3aac654d51295a4bed4aa3fdccc777c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddfb0fe3-bd4c-f969-cefe-0176017c2ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_upper_bound_dyadic (e : Expr) (hsupp : ExprSupportedCore e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ)
    (prec : Int) (depth : Nat) (h_prec : prec ≤ 0)
    (hdom : evalDomainValidDyadic e (fun _ => IntervalDyadic.ofIntervalRat ⟨lo, hi, hle⟩ prec)
        { precision := prec, taylorDepth := depth })
    (h_check : checkUpperBoundDyadic e lo hi hle c prec depth = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) hi, Expr.eval (fun _ => x) e ≤ c := by
  intro x hx
  -- Setup environments
  let I_rat : IntervalRat := ⟨lo, hi, hle⟩
  let ρ_dyad : IntervalDyadicEnv := fun _ => IntervalDyadic.ofIntervalRat I_rat prec
  let ρ_real : Nat → ℝ := fun _ => x
  -- Show x is in the Dyadic environment
  have h_env : envMemDyadic ρ_real ρ_dyad := by
    intro i
    apply IntervalDyadic.mem_ofIntervalRat _ prec h_prec
    rwa [IntervalRat.mem_iff_mem_Icc]
  -- Apply correctness of evaluator
  have h_eval := evalIntervalDyadic_correct e hsupp ρ_real ρ_dyad h_env
    { precision := prec, taylorDepth := depth } h_prec hdom
  -- Extract upper bound from boolean check
  simp only [checkUpperBoundDyadic, IntervalDyadic.upperBoundedBy, decide_eq_true_eq] at h_check
  -- Conclude: eval ≤ hi.toRat ≤ c
  calc Expr.eval (fun _ => x) e
      ≤ ((evalIntervalDyadic e ρ_dyad { precision := prec, taylorDepth := depth }).hi.toRat : ℝ) := h_eval.2
    _ ≤ c := by exact_mod_cast h_check

/-- **Golden Theorem for Dyadic Lower Bounds**

    If the bound check passes and domain validity holds, then
    `∀ x ∈ [lo, hi], c ≤ Expr.eval (fun _ => x) e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ff56dd51f8cbb6731e5802861c2ca3d107018b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
