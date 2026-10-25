# verify_strict_upper_bound_dyadic_withInv

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
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89a7f3c3-c50b-47b1-c9b5-2bab6021da21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1199f0d-627b-48ac-80fa-d7d35f26981d",
  "kind": "theorem",
  "lexical_name": "verify_strict_upper_bound_dyadic_withInv",
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
  "slug": "verify-strict-upper-bound-dyadic-withinv--6632a58ec286f66722076a38",
  "source": {
    "blob": "56e5d82e14dfbc6936d823a36ffe770f8bb4eabd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 375,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6632a58ec286f66722076a38ff21cc3507abc15590e32094d0cd19990bdefead",
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

Occurrence: `result:e1199f0d-627b-48ac-80fa-d7d35f26981d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_strict_upper_bound_dyadic_withInv (e : Expr) (hsupp : ExprSupportedWithInv e)
    (lo hi : ℚ) (hle : lo ≤ hi) (c : ℚ)
    (prec : Int) (depth : Nat) (h_prec : prec ≤ 0)
    (h_check : checkStrictUpperBoundDyadicWithInv e lo hi hle c prec depth = true) :
    ∀ x ∈ Set.Icc (lo : ℝ) hi, Expr.eval (fun _ => x) e < c := by
  intro x hx
  let I_rat : IntervalRat := ⟨lo, hi, hle⟩
  let ρ_dyad : IntervalDyadicEnv := fun _ => IntervalDyadic.ofIntervalRat I_rat prec
  let cfg : DyadicConfig := { precision := prec, taylorDepth := depth }
  simp only [checkStrictUpperBoundDyadicWithInv, Bool.and_eq_true] at h_check
  obtain ⟨h_dom_bool, h_bound⟩ := h_check
  have hdom := checkDomainValidDyadic_correct e ρ_dyad cfg h_dom_bool
  have h_env : envMemDyadic (fun _ => x) ρ_dyad := by
    intro i
    apply IntervalDyadic.mem_ofIntervalRat _ prec h_prec
    rwa [IntervalRat.mem_iff_mem_Icc]
  have h_eval := evalIntervalDyadic_correct_withInv e hsupp (fun _ => x) ρ_dyad h_env cfg h_prec hdom
  simp only [decide_eq_true_eq] at h_bound
  calc Expr.eval (fun _ => x) e
      ≤ ((evalIntervalDyadic e ρ_dyad cfg).hi.toRat : ℝ) := h_eval.2
    _ < c := by exact_mod_cast h_bound

/-- Golden Theorem for strict Dyadic lower bounds with inv/log expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e5d82e14dfbc6936d823a36ffe770f8bb4eabd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
