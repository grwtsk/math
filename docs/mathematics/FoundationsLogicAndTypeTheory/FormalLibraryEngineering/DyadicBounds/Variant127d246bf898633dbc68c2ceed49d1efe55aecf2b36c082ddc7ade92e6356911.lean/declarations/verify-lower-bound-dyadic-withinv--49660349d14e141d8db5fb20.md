# verify_lower_bound_dyadic_withInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f586eff-7909-28a3-d763-da749363d2d1",
  "kind": "theorem",
  "lexical_name": "verify_lower_bound_dyadic_withInv",
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
  "slug": "verify-lower-bound-dyadic-withinv--49660349d14e141d8db5fb20",
  "source": {
    "blob": "87ff56dd51f8cbb6731e5802861c2ca3d107018b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 360,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49660349d14e141d8db5fb20c38b0680bab7fe79a3d9fb427b2744ce0d122daa",
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

Occurrence: `result:1f586eff-7909-28a3-d763-da749363d2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_lower_bound_dyadic_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ)
    (prec : Int) (depth : Nat) (h_prec : prec ≤ 0)
    (h_check : checkLowerBoundDyadicWithInv e lo hi hle c prec depth = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) hi, c ≤ Expr.eval (fun _ => x) e := by
  intro x hx
  let I_rat : IntervalRat := ⟨lo, hi, hle⟩
  let ρ_dyad : IntervalDyadicEnv := fun _ => IntervalDyadic.ofIntervalRat I_rat prec
  let cfg : DyadicConfig := { precision := prec, taylorDepth := depth }
  simp only [checkLowerBoundDyadicWithInv, Bool.and_eq_true] at h_check
  obtain ⟨h_dom_bool, h_bound⟩ := h_check
  have hdom := checkDomainValidDyadic_correct e ρ_dyad cfg h_dom_bool
  have h_env : envMemDyadic (fun _ => x) ρ_dyad := by
    intro i
    apply IntervalDyadic.mem_ofIntervalRat _ prec h_prec
    rwa [IntervalRat.mem_iff_mem_Icc]
  have h_eval := evalIntervalDyadic_correct_withInv e hsupp (fun _ => x) ρ_dyad h_env cfg h_prec hdom
  simp only [IntervalDyadic.lowerBoundedBy, decide_eq_true_eq] at h_bound
  calc (c : ℝ)
      ≤ ((evalIntervalDyadic e ρ_dyad cfg).lo.toRat : ℝ) := by exact_mod_cast h_bound
    _ ≤ Expr.eval (fun _ => x) e := h_eval.1

/-- Golden Theorem for strict Dyadic upper bounds with inv/log expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant127d246bf898633dbc68c2ceed49d1efe55aecf2b36c082ddc7ade92e6356911.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87ff56dd51f8cbb6731e5802861c2ca3d107018b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
