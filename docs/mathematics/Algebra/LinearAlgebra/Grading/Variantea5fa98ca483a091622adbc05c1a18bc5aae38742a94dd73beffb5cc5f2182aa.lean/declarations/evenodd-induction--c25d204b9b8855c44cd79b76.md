# evenOdd_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb111d4c-e804-6d1e-31ba-c3fe746d6ecc",
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
  "slug": "evenodd-induction--c25d204b9b8855c44cd79b76",
  "source": {
    "blob": "aa9dfb4dc719918975f2dd63419156e81e12135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 148,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c25d204b9b8855c44cd79b76417c157e7e697139b479cc19b5d5d3dd5f83aba7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb111d4c-e804-6d1e-31ba-c3fe746d6ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evenOdd_induction (n : ZMod 2) {motive : ∀ x, x ∈ evenOdd Q n → Prop}
    (range_ι_pow : ∀ (v) (h : v ∈ LinearMap.range (ι Q) ^ n.val),
        motive v (Submodule.mem_iSup_of_mem ⟨n.val, n.natCast_zmod_val⟩ h))
    (add : ∀ x y hx hy, motive x hx → motive y hy → motive (x + y) (Submodule.add_mem _ hx hy))
    (ι_mul_ι_mul :
      ∀ m₁ m₂ x hx,
        motive x hx →
          motive (ι Q m₁ * ι Q m₂ * x)
            (zero_add n ▸ SetLike.mul_mem_graded (ι_mul_ι_mem_evenOdd_zero Q m₁ m₂) hx))
    (x : CliffordAlgebra Q) (hx : x ∈ evenOdd Q n) : motive x hx := by
  apply Submodule.iSup_induction' (motive := motive) _ _ (range_ι_pow 0 (Submodule.zero_mem _)) add
  refine Subtype.rec ?_
  simp_rw [ZMod.natCast_eq_iff, add_comm n.val]
  rintro n' ⟨k, rfl⟩ xv
  simp_rw [pow_add, pow_mul]
  intro hxv
  induction hxv using Submodule.mul_induction_on' with
  | mem_mul_mem a ha b hb =>
    induction ha using Submodule.pow_induction_on_left' with
    | algebraMap r =>
      simp_rw [← Algebra.smul_def]
      exact range_ι_pow _ (Submodule.smul_mem _ _ hb)
    | add x y n hx hy ihx ihy =>
      simp_rw [add_mul]
      apply add _ _ _ _ ihx ihy
    | mem_mul x hx n'' y hy ihy =>
      revert hx
      simp_rw [pow_two]
      intro hx2
      induction hx2 using Submodule.mul_induction_on' with
      | mem_mul_mem m hm n hn =>
        simp_rw [LinearMap.mem_range] at hm hn
        obtain ⟨m₁, rfl⟩ := hm; obtain ⟨m₂, rfl⟩ := hn
        simp_rw [mul_assoc _ y b]
        exact ι_mul_ι_mul _ _ _ _ ihy
      | add x hx y hy ihx ihy =>
        simp_rw [add_mul]
        apply add _ _ _ _ ihx ihy
  | add x y hx hy ihx ihy =>
    apply add _ _ _ _ ihx ihy

/-- To show a property is true on the even parts, it suffices to show it is true on the
scalars, closed under addition, and under left-multiplication by a pair of vectors. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9dfb4dc719918975f2dd63419156e81e12135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
