# abs_iterate_derivative_T_real_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a87c784-9b19-dee8-02ef-ecf7e3c0105e",
  "kind": "theorem",
  "lexical_name": "abs_iterate_derivative_T_real_le",
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
  "slug": "abs-iterate-derivative-t-real-le--0238182a174fbbda41346643",
  "source": {
    "blob": "43664163643071b24f6d0306d899056246a5b894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 340,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0238182a174fbbda413466430fa38f82999d1e9e0793f579ac84034be9277c4e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a87c784-9b19-dee8-02ef-ecf7e3c0105e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_iterate_derivative_T_real_le (n : ℤ) (k : ℕ) {x : ℝ} (hx : |x| ≤ 1) :
    |(derivative^[k] (T ℝ n)).eval x| ≤ (derivative^[k] (T ℝ n)).eval 1 := by
  wlog hn : 0 ≤ n
  · convert! this (-n) k hx (by grind) using 1 <;> rw [T_neg]
  lift n to ℕ using hn
  have := T_iterate_derivative_mem_span_T (R := ℝ) n k
  obtain ⟨f, hfsupp, hfderiv⟩ := Submodule.mem_span_set.mp this
  replace hfderiv : ∑ p ∈ f.support, f p • p = derivative^[k] (T ℝ n) := by rw [← hfderiv]; rfl
  have hf (y : ℝ) :
      ∑ p ∈ f.support, f p • p.eval y = (derivative^[k] (T ℝ n)).eval y := by
    rw [← hfderiv, Polynomial.eval_finsetSum]
    simp_rw [Polynomial.eval_smul]
  rw [← hf x, ← hf 1]
  grw [Finset.abs_sum_le_sum_abs]
  refine Finset.sum_le_sum (fun i hi => ?_)
  obtain ⟨m, hm, hi⟩ := (Set.mem_image ..).mp (hfsupp hi)
  grw [abs_nsmul, ← hi, abs_eval_T_real_le_one m hx]
  simp

end Polynomial.Chebyshev
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RootsExtrema/Variantc07761d28260c7fb86e238dc73639ee347717b6dbc77dd476bcc93839ae31402.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43664163643071b24f6d0306d899056246a5b894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
