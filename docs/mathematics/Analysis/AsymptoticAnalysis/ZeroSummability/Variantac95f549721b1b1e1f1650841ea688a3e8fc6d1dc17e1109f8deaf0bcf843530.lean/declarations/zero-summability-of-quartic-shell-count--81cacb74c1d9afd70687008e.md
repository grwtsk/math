# zero_summability_of_quartic_shell_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ca2ab989670dfc0edc812156be067078dab679d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e51d346-600e-615d-a91e-4468ec9944cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d18f1456-f0e9-0f84-e0cb-bb30a2a7a5d5",
  "kind": "theorem",
  "lexical_name": "zero_summability_of_quartic_shell_count",
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
  "slug": "zero-summability-of-quartic-shell-count--81cacb74c1d9afd70687008e",
  "source": {
    "blob": "2ca2ab989670dfc0edc812156be067078dab679d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 99,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cacb74c1d9afd70687008e9910d4754fad04b3795ff30b89c4996234745ea5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d18f1456-f0e9-0f84-e0cb-bb30a2a7a5d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_summability_of_quartic_shell_count (h : QuarticShellCountObligation) :
    ZeroSideTargets.ZeroSummabilityObligation := by
  obtain ⟨C, _hC, hbound⟩ := h
  change Summable weight
  have hm : Summable (fun n : ℕ ↦ C * (n + 1 : ℝ) ^ (-2 : ℝ)) := by
    have hh : Summable (fun n : ℕ ↦ (n : ℝ) ^ (-2 : ℝ)) :=
      Real.summable_nat_rpow.mpr (by norm_num)
    simpa only [Nat.cast_add, Nat.cast_one] using
      ((summable_nat_add_iff 1).mpr hh).mul_left C
  have hs : Summable (fun n : ℕ ↦ ∑' o : ZeroShell n, weight o.val) :=
    Summable.of_nonneg_of_le (fun n ↦ tsum_nonneg (fun o ↦ weight_nonneg o.val))
      (shell_sum_bound hbound) hm
  apply (summable_partition (f := weight) (s := fun n ↦ {o | shellIndex o = n})
    weight_nonneg (fun o ↦ ⟨shellIndex o, rfl, fun n hn ↦ hn.symm⟩)).mpr
  refine ⟨?_, hs⟩
  intro n
  change Summable (fun o : ZeroShell n ↦ weight o.val)
  have := zeroShell_finite n
  exact Summable.of_finite

end
end ZeroSummability
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ca2ab989670dfc0edc812156be067078dab679d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
