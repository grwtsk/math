# evenOdd_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3558f2b162920cd80d79725aa6d3a8fb5d72bacf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea6cea7a-0cde-bd72-42eb-a9013bb0da6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6acf8062-c81d-9a9c-5b70-10887b7cc468",
  "kind": "theorem",
  "lexical_name": "evenOdd_induction",
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
  "slug": "evenodd-induction--2c0e24601493ac3f998875ba",
  "source": {
    "blob": "3558f2b162920cd80d79725aa6d3a8fb5d72bacf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0e24601493ac3f998875baf400aa0f2be7e70bc852ff5b05a00f9967ac14ad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6acf8062-c81d-9a9c-5b70-10887b7cc468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenOdd_induction (n : ZMod 2) {P : ∀ x, x ∈ evenOdd Q n → Prop}
    (hr :
      ∀ (v) (h : v ∈ LinearMap.range (ι Q) ^ n.val),
        P v (Submodule.mem_iSup_of_mem ⟨n.val, n.nat_cast_zmod_val⟩ h))
    (hadd : ∀ {x y hx hy}, P x hx → P y hy → P (x + y) (Submodule.add_mem _ hx hy))
    (hιι_mul :
      ∀ (m₁ m₂) {x hx},
        P x hx →
          P (ι Q m₁ * ι Q m₂ * x)
            (zero_add n ▸ SetLike.mul_mem_graded (ι_mul_ι_mem_evenOdd_zero Q m₁ m₂) hx))
    (x : CliffordAlgebra Q) (hx : x ∈ evenOdd Q n) : P x hx := by
  apply Submodule.iSup_induction' (C := P) _ (hr 0 (Submodule.zero_mem _)) @hadd
  refine' Subtype.rec _
  -- porting note: was `simp_rw [Subtype.coe_mk, ZMod.nat_coe_zmod_eq_iff, add_comm n.val]`
  -- leanprover/lean4#1926 is to blame.
  dsimp only [Subtype.coe_mk]
  let hlean1926 : ∀ val : ℕ, ↑val = n ↔ ∃ k, val = 2 * k + ZMod.val n := by
    intro val
    simp_rw [ZMod.nat_coe_zmod_eq_iff, add_comm n.val]
  have := fun val : ℕ => forall_prop_congr'
    (q := fun property => ∀ x (hx : x ∈ LinearMap.range (ι Q) ^ val),
      P x (Submodule.mem_iSup_of_mem { val := val, property := property } hx))
    (hq := fun property => Iff.rfl) (hp := hlean1926 val)
  simp_rw [this]; clear this
  -- end porting note
  rintro n' ⟨k, rfl⟩ xv
  -- porting note: was `simp_rw [pow_add, pow_mul]`
  -- leanprover/lean4#1926 is to blame.
  refine (forall_prop_congr' (hq := fun property => Iff.rfl) (
    show xv ∈ LinearMap.range (ι Q) ^ (2 * k + ZMod.val n)
        ↔ xv ∈ (LinearMap.range (ι Q) ^ 2) ^ k * LinearMap.range (ι Q) ^ ZMod.val n by
      simp_rw [pow_add, pow_mul])).mpr ?_
  -- end porting note
  intro hxv
  induction hxv using Submodule.mul_induction_on' with
  | hm a ha b hb =>
    induction ha using Submodule.pow_induction_on_left' with
    | hr r =>
      simp_rw [← Algebra.smul_def]
      exact hr _ (Submodule.smul_mem _ _ hb)
    | hadd x y n hx hy ihx ihy =>
      simp_rw [add_mul]
      apply hadd ihx ihy
    | hmul x hx n'' y hy ihy =>
      revert hx
      -- porting note: was `simp_rw [pow_two]`
      -- leanprover/lean4#1926 is to blame.
      let hlean1926'' : x ∈ LinearMap.range (ι Q) ^ 2
          ↔ x ∈ LinearMap.range (ι Q) * LinearMap.range (ι Q) := by
        rw [pow_two]
      refine (forall_prop_congr' (hq := fun property => Iff.rfl) hlean1926'').mpr ?_
      -- end porting note
      intro hx2
      induction hx2 using Submodule.mul_induction_on' with
      | hm m hm n hn =>
        simp_rw [LinearMap.mem_range] at hm hn
        obtain ⟨m₁, rfl⟩ := hm; obtain ⟨m₂, rfl⟩ := hn
        simp_rw [mul_assoc _ y b]
        refine' hιι_mul _ _ ihy
      | ha x hx y hy ihx ihy =>
        simp_rw [add_mul]
        apply hadd ihx ihy
  | ha x y hx hy ihx ihy =>
    apply hadd ihx ihy
#align clifford_algebra.even_odd_induction CliffordAlgebra.evenOdd_induction

/-- To show a property is true on the even parts, it suffices to show it is true on the
scalars, closed under addition, and under left-multiplication by a pair of vectors. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantd3ed1da07b6ced3ae137020b4a4308a488c5746cc13f96f102ddf6c5ee51fef9.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3558f2b162920cd80d79725aa6d3a8fb5d72bacf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
