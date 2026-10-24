# seq_next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22d22f9f-285d-bf06-4393-879314aa1a4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75cddd2c-14c9-541b-3f91-da6c4bfa74a2",
  "kind": "theorem",
  "lexical_name": "seq_next",
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
  "slug": "seq-next--b444090ef1349ebecbee2255",
  "source": {
    "blob": "66e59771eb655041fc341a01186f6754b23ff81e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 207,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b444090ef1349ebecbee22557ff356165097f762a9eb3000bc891857db977dad",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75cddd2c-14c9-541b-3f91-da6c4bfa74a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seq_next {x : 𝓞 K} (hx : x ≠ 0) :
    ∃ y : 𝓞 K, y ≠ 0 ∧
      (∀ w, w ≠ w₁ → w y < w x) ∧
      |Algebra.norm ℚ (y : K)| ≤ B := by
  have hx' := RingOfIntegers.coe_ne_zero_iff.mpr hx
  let f : InfinitePlace K → ℝ≥0 :=
    fun w ↦ ⟨(w x) / 2, div_nonneg (AbsoluteValue.nonneg _ _) (by norm_num)⟩
  suffices ∀ w, w ≠ w₁ → f w ≠ 0 by
    obtain ⟨g, h_geqf, h_gprod⟩ := adjust_f K B this
    obtain ⟨y, h_ynz, h_yle⟩ := exists_ne_zero_mem_ringOfIntegers_lt K (f := g)
      (by rw [convexBodyLT_volume]; convert hB; exact congr_arg ((↑) : NNReal → ENNReal) h_gprod)
    refine ⟨y, h_ynz, fun w hw ↦ (h_geqf w hw ▸ h_yle w).trans ?_, ?_⟩
    · rw [← Rat.cast_le (K := ℝ), Rat.cast_natCast]
      calc
        _ = ∏ w : InfinitePlace K, w (algebraMap _ K y) ^ mult w :=
          (prod_eq_abs_norm (algebraMap _ K y)).symm
        _ ≤ ∏ w : InfinitePlace K, (g w : ℝ) ^ mult w := by gcongr with w; exact (h_yle w).le
        _ ≤ (B : ℝ) := by
          simp_rw [← NNReal.coe_pow, ← NNReal.coe_prod]
          exact le_of_eq (congr_arg toReal h_gprod)
    · refine div_lt_self ?_ (by norm_num)
      exact pos_iff.mpr hx'
  intro _ _
  rw [ne_eq, Nonneg.mk_eq_zero, div_eq_zero_iff, map_eq_zero, not_or]
  exact ⟨hx', by norm_num⟩

/-- An infinite sequence of nonzero algebraic integers of `K` satisfying the following properties:
• `seq n` is nonzero;
• for `w : InfinitePlace K`, `w ≠ w₁ → w (seq n+1) < w (seq n)`;
• `∣norm (seq n)∣ ≤ B`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/DirichletTheorem/Variantdcb30d20b295c0d243614924d637b730231232ec1c63cbc9fdb4e6f8c6a4bf99.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e59771eb655041fc341a01186f6754b23ff81e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
