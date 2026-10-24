# nonempty_orderIso_withZeroMul_int_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd6cda08-f593-43f5-6df7-633222a35c41",
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
  "slug": "nonempty-orderiso-withzeromul-int-iff--e630388ec821850991842d51",
  "source": {
    "blob": "704d2629b57cbe40aea707674d285f7de6a7820a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant9a51981d74fc20d834c419924547ac2b70cb27229ea58e1da3aea2287f790ff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e630388ec821850991842d51205b108a8780545914e05a582c93296f57af251c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant9a51981d74fc20d834c419924547ac2b70cb27229ea58e1da3aea2287f790ff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6cda08-f593-43f5-6df7-633222a35c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant9a51981d74fc20d834c419924547ac2b70cb27229ea58e1da3aea2287f790ff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant9a51981d74fc20d834c419924547ac2b70cb27229ea58e1da3aea2287f790ff8.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `704d2629b57cbe40aea707674d285f7de6a7820a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
