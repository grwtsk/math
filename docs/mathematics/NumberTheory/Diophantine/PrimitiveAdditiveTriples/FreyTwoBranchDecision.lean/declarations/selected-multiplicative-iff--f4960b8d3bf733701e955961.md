# selected_multiplicative_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40d46bc3-da67-fc8c-5604-f2c60971bf15",
  "kind": "theorem",
  "lexical_name": "selected_multiplicative_iff",
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
  "slug": "selected-multiplicative-iff--f4960b8d3bf733701e955961",
  "source": {
    "blob": "99857f53e9a4104f4462ad5e2f0c21048b94df5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 371,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4960b8d3bf733701e9559612eba67eb275a041335e593e91beeb554df07d0be",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d46bc3-da67-fc8c-5604-f2c60971bf15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_multiplicative_iff (t : PrimitiveAdditiveTriple) :
    HasMultiplicativeReduction (LocalRing 2) (selectedCurve t) ↔
      Descends t ∧ 4<(t.a*t.b*t.c).factorization 2 := by
  have hΔ := changed_delta_ne_zero (LocalRing 2) t.freyCurve
    t.freyCurve_Δ_ne_zero (selectedChange t)
  have hd := selected_exponent t
  rw [minimum_formula] at hd
  constructor
  · intro hm
    have hdesc : Descends t := by
      by_contra hn
      exact hm.not_hasAdditiveReduction ((selected_additive_iff t).mpr hn)
    have hv := hm.badReduction
    change localVal (LocalRing 2) (selectedCurve t).Δ<1 at hv
    rw [delta_value_eq_exp (LocalRing 2) (selectedCurve t) hΔ,
      ← WithZero.exp_zero,WithZero.exp_lt_exp] at hv
    rw [if_pos hdesc] at hd
    exact ⟨hdesc,by omega⟩
  · rintro ⟨hdesc,he⟩
    refine ⟨selected_minimal t,?_,?_⟩
    · change localVal (LocalRing 2) (selectedCurve t).Δ<1
      rw [delta_value_eq_exp (LocalRing 2) (selectedCurve t) hΔ,
        ← WithZero.exp_zero,WithZero.exp_lt_exp,hd,if_pos hdesc]
      omega
    · change localVal (LocalRing 2) (selectedCurve t).c₄=1
      rw [selected_c4_value,if_pos hdesc]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoBranchDecision
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99857f53e9a4104f4462ad5e2f0c21048b94df5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
