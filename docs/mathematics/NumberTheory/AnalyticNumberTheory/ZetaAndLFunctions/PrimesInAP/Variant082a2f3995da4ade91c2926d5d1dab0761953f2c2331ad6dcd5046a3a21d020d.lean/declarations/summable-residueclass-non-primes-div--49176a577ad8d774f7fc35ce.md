# summable_residueClass_non_primes_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d226379-674c-3790-7d4d-42b60365f9ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95dfcff8-93fd-28a7-f725-70909a65e500",
  "kind": "lemma",
  "lexical_name": "summable_residueClass_non_primes_div",
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
  "slug": "summable-residueclass-non-primes-div--49176a577ad8d774f7fc35ce",
  "source": {
    "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 223,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49176a577ad8d774f7fc35ce94553ce14d1dc818c810c8f343bb4ed0d5fcc633",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95dfcff8-93fd-28a7-f725-70909a65e500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_residueClass_non_primes_div :
    Summable fun n : ℕ ↦ (if n.Prime then 0 else residueClass a n) / n := by
  have h₀ (n : ℕ) : 0 ≤ (if n.Prime then 0 else residueClass a n) / n := by
    have := residueClass_nonneg a n
    positivity
  have hleF₀ (n : ℕ) : (if n.Prime then 0 else residueClass a n) / n ≤ F₀ n := by
    refine div_le_div_of_nonneg_right ?_ n.cast_nonneg
    split_ifs; exacts [le_rfl, residueClass_le a n]
  refine Summable.of_nonneg_of_le h₀ hleF₀ ?_
  have hF₀ (p : Nat.Primes) : F₀ p.val = 0 := by
    simp only [p.prop, ↓reduceIte, zero_div, F₀]
  refine (summable_subtype_iff_indicator (s := {n | IsPrimePow n}).mp ?_).congr
      fun n ↦ Set.indicator_apply_eq_self.mpr fun (hn : ¬ IsPrimePow n) ↦ ?_
  swap
  · simp +contextual only [div_eq_zero_iff, ite_eq_left_iff, vonMangoldt_eq_zero_iff, hn,
      not_false_eq_true, implies_true, Nat.cast_eq_zero, true_or, F₀]
  have hFF' :
      F₀ ∘ Subtype.val (p := fun n ↦ n ∈ {n | IsPrimePow n}) = F' ∘ ⇑prodNatEquiv.symm := by
    refine (Equiv.eq_comp_symm prodNatEquiv (F₀ ∘ Subtype.val) F').mpr ?_
    ext1 n
    simp only [Function.comp_apply, F']
    congr
  rw [hFF']
  refine (Nat.Primes.prodNatEquiv.symm.summable_iff (f := F')).mpr ?_
  have hF'₀ (p : Nat.Primes) : F' (p, 0) = 0 := by simp only [zero_add, pow_one, hF₀, F']
  have hF'₁ : F'' = F' ∘ (Prod.map _root_.id (· + 1)) := by
    ext1
    simp only [Function.comp_apply, Prod.map_fst, id_eq, Prod.map_snd, F'', F']
  refine (Function.Injective.summable_iff ?_ fun u hu ↦ ?_).mp <| hF'₁ ▸ summable_F''
  · exact Function.Injective.prodMap (fun ⦃a₁ a₂⦄ a ↦ a) <| add_left_injective 1
  · simp only [Set.range_prodMap, Set.range_id, Set.mem_prod, Set.mem_univ, Set.mem_range,
      Nat.exists_add_one_eq, true_and, not_lt, nonpos_iff_eq_zero] at hu
    rw [← hF'₀ u.1, ← hu]

variable [NeZero q] {a}

/-- We can express `ArithmeticFunction.vonMangoldt.residueClass` as a linear combination
of twists of the von Mangoldt function by Dirichlet characters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4dc098acc1ae00b08cc00185b830ece502f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
