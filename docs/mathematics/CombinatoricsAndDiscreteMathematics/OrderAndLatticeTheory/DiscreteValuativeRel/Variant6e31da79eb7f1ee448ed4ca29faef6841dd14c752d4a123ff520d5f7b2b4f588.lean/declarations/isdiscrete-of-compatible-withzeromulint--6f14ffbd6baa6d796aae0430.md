# IsDiscrete.of_compatible_withZeroMulInt

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
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7083d78a-386a-fce0-c18e-32152638c394",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58f4453f-c6f7-ec31-6852-bd23bf5f320e",
  "kind": "lemma",
  "lexical_name": "IsDiscrete.of_compatible_withZeroMulInt",
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
  "slug": "isdiscrete-of-compatible-withzeromulint--6f14ffbd6baa6d796aae0430",
  "source": {
    "blob": "d6a23ffdc11dbe73f3e709ce6af891d6d0ad7e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f14ffbd6baa6d796aae0430a41d33ac208bd4bf54fedc30564f8f7423ce7efa",
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

Occurrence: `result:58f4453f-c6f7-ec31-6852-bd23bf5f320e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDiscrete.of_compatible_withZeroMulInt [Ring R] [ValuativeRel R]
    (v : Valuation R ℤᵐ⁰) [v.Compatible] : IsDiscrete R := by
  have : IsRankLeOne R := .of_compatible_mulArchimedean v
  by_cases h : IsNontrivial R
  · by_cases H : DenselyOrdered (ValueGroupWithZero R)
    · classical
      exfalso
      refine (MonoidWithZeroHom.range_nontrivial
        (ValueGroupWithZero.orderMonoidIso v).toMonoidWithZeroHom).not_subsingleton ?_
      rw [← WithZero.denselyOrdered_set_iff_subsingleton]
      exact (ValueGroupWithZero.embed_strictMono v).denselyOrdered_range
    · rw [isNontrivial_iff_nontrivial_units] at h
      rw [← LinearOrderedCommGroupWithZero.discrete_iff_not_denselyOrdered] at H
      rw [nonempty_orderIso_withZeroMul_int_iff] at H
      exact H.left
  · rw [isNontrivial_iff_nontrivial_units] at h; push Not at h
    refine ⟨⟨0, zero_lt_one, fun y hy ↦ ?_⟩⟩
    contrapose! hy
    have : 1 = Units.mk0 y hy.ne' := Subsingleton.elim _ _
    exact Units.val_le_val.mpr this.le

end ValuativeRel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/DiscreteValuativeRel/Variant6e31da79eb7f1ee448ed4ca29faef6841dd14c752d4a123ff520d5f7b2b4f588.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a23ffdc11dbe73f3e709ce6af891d6d0ad7e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
