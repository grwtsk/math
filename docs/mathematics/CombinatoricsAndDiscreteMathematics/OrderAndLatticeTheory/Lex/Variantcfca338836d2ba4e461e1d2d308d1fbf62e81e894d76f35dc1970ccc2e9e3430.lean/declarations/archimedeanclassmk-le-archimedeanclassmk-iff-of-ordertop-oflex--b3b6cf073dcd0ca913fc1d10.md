# archimedeanClassMk_le_archimedeanClassMk_iff_of_orderTop_ofLex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0aa85c00-2f39-e010-a1b7-fa64fc57f87f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f84a9d15-f9fb-8824-2d75-d5b7375cd07e",
  "kind": "theorem",
  "lexical_name": "archimedeanClassMk_le_archimedeanClassMk_iff_of_orderTop_ofLex",
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
  "slug": "archimedeanclassmk-le-archimedeanclassmk-iff-of-ordertop-oflex--b3b6cf073dcd0ca913fc1d10",
  "source": {
    "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3b6cf073dcd0ca913fc1d105154c94ee9aaa5af99694a889e740defd73a80bb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f84a9d15-f9fb-8824-2d75-d5b7375cd07e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedeanClassMk_le_archimedeanClassMk_iff_of_orderTop_ofLex {x y : Lex R⟦Γ⟧}
    (h : (ofLex x).orderTop = (ofLex y).orderTop) :
    ArchimedeanClass.mk x ≤ .mk y ↔
      ArchimedeanClass.mk (ofLex x).leadingCoeff ≤ .mk (ofLex y).leadingCoeff := by
  simp_rw [ArchimedeanClass.mk_le_mk]
  obtain rfl | hy := eq_or_ne y 0
  · -- special case: both `x` and `y` are zero
    simp_all
  -- general case: `x` and `y` are not zero
  have hx : x ≠ 0 := by simpa using orderTop_ne_top.1 <| h ▸ orderTop_ne_top.2 (by simpa using hy)
  have h' : (ofLex |x|).orderTop = (ofLex |y|).orderTop := by simpa using h
  constructor
  · -- `mk x ≤ mk y → mk x.leadingCoeff ≤ mk y.leadingCoeff`
    intro ⟨n, hn⟩
    refine ⟨n + 1, ?_⟩
    have hn' : |y| < (n + 1) • |x| :=
      lt_of_le_of_lt hn <| nsmul_lt_nsmul_left (by simpa using hx) (by simp)
    obtain ⟨j, hj, hi⟩ := (lt_iff _ _).mp hn'
    simp_rw [ofLex_smul, coeff_smul] at hj hi
    simp_rw [← leadingCoeff_abs]
    rw [leadingCoeff_of_ne_zero (by simpa using hy), leadingCoeff_of_ne_zero (by simpa using hx)]
    simp_rw [← h']
    obtain hjlt | hjeq | hjgt := lt_trichotomy (WithTop.some j) (ofLex |x|).orderTop
    · -- impossible case: `x` and `y` differ before their leading coefficients
      have hjlt' : j < (ofLex |y|).orderTop := h'.symm ▸ hjlt
      simp [coeff_eq_zero_of_lt_orderTop hjlt, coeff_eq_zero_of_lt_orderTop hjlt'] at hi
    · convert! hi.le <;> exact (WithTop.untop_eq_iff _).mpr hjeq.symm
    · exact (hj _ ((WithTop.untop_lt_iff _).mpr hjgt)).le
  · -- `mk x.leadingCoeff ≤ mk y.leadingCoeff → mk x ≤ mk y`
    intro ⟨n, hn⟩
    refine ⟨n + 1, ((lt_iff _ _).mpr ?_).le⟩
    refine ⟨(ofLex x).orderTop.untop (by simpa using hx), ?_, ?_⟩
    · -- all coefficients before the leading coefficient are zero
      intro j hj
      trans 0
      · apply coeff_eq_zero_of_lt_orderTop
        simpa [← h] using hj
      · suffices (ofLex |x|).coeff j = 0 by simp [this]
        apply coeff_eq_zero_of_lt_orderTop
        simpa using hj
    -- the leading coefficient determines the relation
    rw [ofLex_smul, coeff_smul]
    suffices |(ofLex y).leadingCoeff| < (n + 1) • |(ofLex x).leadingCoeff| by
      simp_rw [← leadingCoeff_abs] at this
      rw [leadingCoeff_of_ne_zero (by simpa using hy), leadingCoeff_of_ne_zero (by simpa using hx)]
        at this
      convert! this using 3 <;> simp [h]
    refine lt_of_le_of_lt hn <| nsmul_lt_nsmul_left ?_ (by simp)
    rwa [abs_pos, leadingCoeff_ne_zero]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29497fcfe9ef246a578469ce198fd554552f1947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
