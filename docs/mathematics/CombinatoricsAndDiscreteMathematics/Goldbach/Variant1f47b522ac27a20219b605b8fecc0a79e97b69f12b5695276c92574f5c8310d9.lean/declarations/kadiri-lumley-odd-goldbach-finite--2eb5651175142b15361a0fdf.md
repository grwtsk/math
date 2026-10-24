# kadiri_lumley_odd_goldbach_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4703a8ca-412b-60a7-b98a-f21a253d9f35",
  "kind": "theorem",
  "lexical_name": "kadiri_lumley_odd_goldbach_finite",
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
  "slug": "kadiri-lumley-odd-goldbach-finite--2eb5651175142b15361a0fdf",
  "source": {
    "blob": "8bbb036da106cf2916d9064566357bd5b0a27359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb5651175142b15361a0fdf364da867bbdc2eef8a6cb3da115e0ba6461d87d9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4703a8ca-412b-60a7-b98a-f21a253d9f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kadiri_lumley_odd_goldbach_finite : odd_conjecture (1966196911 * 4 * 10 ^ 18) := by
  have h1 (x) (hx : x ≥ Real.exp 59) := KadiriLumley.has_prime_in_interval (Real.exp 59) x
    61 4.589e-9 20499925573 0.93 0.4522 1946282821 hx
  simp only [ge_iff_le, KadiriLumley.Table_2, Real.log_exp, List.mem_cons, Prod.mk.injEq,
    OfNat.ofNat_eq_ofNat, Nat.reduceEqDiff, and_false, and_self, Nat.succ_ne_self, List.not_mem_nil,
    or_self, or_false, or_true, forall_const] at h1
  have h2 := even_to_odd_goldbach (⌈Real.exp 59⌉₊) (4 * 10 ^ 18 + 4) 1946282821
    (fun x hx => h1 x (Nat.le_of_ceil_le hx)) e_silva_herzog_piranian_goldbach_ext
  have h3 : ⌈Real.exp 59⌉₊ + 4 ≤ 11325 * 10 ^ 22 := by
    have : Real.exp 59 + 4 + 1 ≤ 11325 * 10 ^ 22 := by interval_decide
    grw [← Nat.cast_le (α := ℝ), Nat.cast_add, Nat.ceil_lt_add_one (Real.exp_nonneg _)]
    grind
  have h4 := h2 (odd_conjecture_mono _ (⌈Real.exp 59⌉₊ + 4) helfgott_odd_goldbach_finite h3)
  have p1 (x) (hx : x ≥ Real.exp 60) := KadiriLumley.has_prime_in_interval (Real.exp 60) x
    61 4.588e-9 20504393735 0.93 0.4527 1966196911 hx
  simp only [ge_iff_le, KadiriLumley.Table_2, Real.log_exp, List.mem_cons, Prod.mk.injEq,
    OfNat.ofNat_eq_ofNat, Nat.reduceEqDiff, and_false, and_self, Nat.succ_ne_self, List.not_mem_nil,
    or_self, or_false, or_true, forall_const] at p1
  have p2 := even_to_odd_goldbach (⌈Real.exp 60⌉₊) (4 * 10 ^ 18 + 4) 1966196911
    (fun x hx => p1 x (Nat.le_of_ceil_le hx)) e_silva_herzog_piranian_goldbach_ext
  norm_num at *
  have p3 : ⌈Real.exp 60⌉₊ + 4 ≤ 7785131284000000000000000004 := by
    have : Real.exp 60 + 4 + 1 ≤ 7785131284000000000000000004 := by interval_decide
    grw [← Nat.cast_le (α := ℝ), Nat.cast_add, Nat.ceil_lt_add_one (Real.exp_nonneg _)]
    grind
  exact odd_conjecture_mono _ _
    (p2 (odd_conjecture_mono _ (⌈Real.exp 60⌉₊ + 4) h4 p3)) (by grind)

end Goldbach
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbb036da106cf2916d9064566357bd5b0a27359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
