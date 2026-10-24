# nonempty_orderIso_withZeroMul_int_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6a23ffdc11dbe73f3e709ce6af891d6d0ad7e2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a10d3486-4be0-9a2d-0c2b-062a9aba496a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00b741fb-abdd-7757-44db-7cdb81e5916e",
  "kind": "lemma",
  "lexical_name": "nonempty_orderIso_withZeroMul_int_iff",
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
  "slug": "nonempty-orderiso-withzeromul-int-iff--cd503683474d1d91e2bc39ba",
  "source": {
    "blob": "d6a23ffdc11dbe73f3e709ce6af891d6d0ad7e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd503683474d1d91e2bc39ba25102206ba181ce03b4095bc400d3a80f0b0bff3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b741fb-abdd-7757-44db-7cdb81e5916e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonempty_orderIso_withZeroMul_int_iff [Semiring R] [ValuativeRel R] :
    Nonempty (ValueGroupWithZero R ≃*o ℤᵐ⁰) ↔
      IsDiscrete R ∧ IsNontrivial R ∧ MulArchimedean (ValueGroupWithZero R) := by
  constructor
  · rintro ⟨e⟩
    let x := e.symm (exp (-1))
    have hx0 : x ≠ 0 := by simp [x]
    have hx1 : x < 1 := by simp [x, ← lt_map_inv_iff, ← exp_zero]
    refine ⟨⟨x, hx1, fun y hy ↦ ?_⟩, ⟨x, hx0, hx1.ne⟩, .comap e.toMonoidHom e.strictMono⟩
    rcases eq_or_ne y 0 with rfl | hy0
    · simp
    · rw [← map_one e.symm, ← map_inv_lt_iff, ← log_lt_log (by simp [hy0]) (by simp)] at hy
      rw [← map_inv_le_iff, ← log_le_log (by simp [hy0]) (by simp)]
      simp only [OrderMonoidIso.equivLike_inv_eq_symm, OrderMonoidIso.symm_symm, log_one,
        log_exp] at hy ⊢
      linarith
  · rintro ⟨hD, hN, hM⟩
    rw [isNontrivial_iff_nontrivial_units] at hN
    rw [LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered]
    intro H
    obtain ⟨x, hx, hx'⟩ := hD.has_maximal_element
    obtain ⟨y, hy, hy'⟩ := exists_between hx
    exact hy.not_ge (hx' y hy')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a23ffdc11dbe73f3e709ce6af891d6d0ad7e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
