# has_unit_speed_naturalParameterization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44d0ce04-9779-70b5-6533-ae129f8cf5ae",
  "kind": "theorem",
  "lexical_name": "has_unit_speed_naturalParameterization",
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
  "slug": "has-unit-speed-naturalparameterization--d54610206c217bb5be8ca77c",
  "source": {
    "blob": "5c7bd9d5b890fcb6194d5a18fb98c17a41ec115e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 268,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d54610206c217bb5be8ca77c50b8c5d1ad9e4afe1c9c148bb2e0c7e601a70303",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44d0ce04-9779-70b5-6533-ae129f8cf5ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_unit_speed_naturalParameterization (f : α → E) {s : Set α}
    (hf : LocallyBoundedVariationOn f s) {a : α} (as : a ∈ s) :
    HasUnitSpeedOn (naturalParameterization f s a) (variationOnFromTo f s a '' s) := by
  dsimp only [HasUnitSpeedOn]
  rw [hasConstantSpeedOnWith_iff_ordered]
  rintro _ ⟨b, bs, rfl⟩ _ ⟨c, cs, rfl⟩ h
  rcases le_total c b with (cb | bc)
  · rw [NNReal.coe_one, one_mul, le_antisymm h (variationOnFromTo.monotoneOn hf as cs bs cb),
      sub_self, ENNReal.ofReal_zero, Icc_self, eVariationOn.subsingleton]
    exact fun x hx y hy => hx.2.trans hy.2.symm
  · rw [NNReal.coe_one, one_mul, sub_eq_add_neg, variationOnFromTo.eq_neg_swap, neg_neg, add_comm,
      variationOnFromTo.add hf bs as cs, ← variationOnFromTo.eq_neg_swap f]
    rw [←
      eVariationOn.comp_inter_Icc_eq_of_monotoneOn (naturalParameterization f s a) _
        (variationOnFromTo.monotoneOn hf as) bs cs]
    rw [@eVariationOn.eq_of_edist_zero_on _ _ _ _ _ f]
    · rw [variationOnFromTo.eq_of_le _ _ bc, ENNReal.ofReal_toReal (hf b c bs cs)]
    · rintro x ⟨xs, _, _⟩
      exact edist_naturalParameterization_eq_zero hf as xs
#align has_unit_speed_natural_parameterization has_unit_speed_naturalParameterization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7bd9d5b890fcb6194d5a18fb98c17a41ec115e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
