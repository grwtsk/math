# adaptive_upper_bound_strict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7ede094bcb71d9523c71a6ebd3aa759132ae31bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed35a2a7-bdaa-e366-4f41-a277acae5013",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9015e09f-35b2-3684-2187-8ad3d04dc4f8",
  "kind": "theorem",
  "lexical_name": "adaptive_upper_bound_strict",
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
  "slug": "adaptive-upper-bound-strict--23f79308c78d2403bb88f01d",
  "source": {
    "blob": "7ede094bcb71d9523c71a6ebd3aa759132ae31bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23f79308c78d2403bb88f01d4e3ca10b7b261b50f6657cd58cce20b0275dc278",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9015e09f-35b2-3684-2187-8ad3d04dc4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adaptive_upper_bound_strict (e : Expr) (hsupp : ExprSupported e)
    (he : e.usesOnlyVar0 = true)
    (I : IntervalRat) (c : ℚ) (cfg : BoundVerifyConfig)
    (hverify : (globalMaximize e [I] cfg.toGlobalOptConfig).bound.hi < c) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e < c := by
  intro x hx
  let ρ' : Nat → ℝ := fun i => if i = 0 then x else 0
  have hρ'mem : Box.envMem ρ' [I] := by
    intro ⟨i, hi⟩
    simp only [List.length_singleton] at hi
    have : i = 0 := Nat.lt_one_iff.mp hi
    subst this
    simp only [List.getElem_cons_zero, ρ', ↓reduceIte]
    exact hx
  have hρ'zero : ∀ i, i ≥ ([I] : Box).length → ρ' i = 0 := by
    intro i hi
    simp only [List.length_singleton] at hi
    simp only [ρ']
    split_ifs with h; omega; rfl
  -- Use strict bound from verification
  have hmax := globalMinimize_lo_correct (Expr.neg e) (ExprSupported.neg hsupp) [I] cfg.toGlobalOptConfig ρ' hρ'mem hρ'zero
  simp only [Expr.eval_neg] at hmax
  have hhi_eq : (globalMaximize e [I] cfg.toGlobalOptConfig).bound.hi =
      -(globalMinimize (Expr.neg e) [I] cfg.toGlobalOptConfig).bound.lo := by
    simp only [globalMaximize]
  have heq : Expr.eval (fun _ => x) e = Expr.eval ρ' e := by
    apply Expr.eval_usesOnlyVar0 e he
    simp only [ρ', ↓reduceIte]
  rw [heq]
  have hbound : Expr.eval ρ' e ≤ -(globalMinimize (Expr.neg e) [I] cfg.toGlobalOptConfig).bound.lo := by
    linarith [hmax]
  have hhi_lt : (-(globalMinimize (Expr.neg e) [I] cfg.toGlobalOptConfig).bound.lo : ℝ) < c := by
    have : ((globalMaximize e [I] cfg.toGlobalOptConfig).bound.hi : ℝ) < c := by exact_mod_cast hverify
    simp only [globalMaximize, Rat.cast_neg] at this
    exact this
  calc Expr.eval ρ' e
    ≤ -(globalMinimize (Expr.neg e) [I] cfg.toGlobalOptConfig).bound.lo := hbound
    _ < c := hhi_lt

/-- Strict lower bound version -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variant986256db3737790ee65da8855063230ebe1424d062931d65dc6cf200854be012.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ede094bcb71d9523c71a6ebd3aa759132ae31bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
