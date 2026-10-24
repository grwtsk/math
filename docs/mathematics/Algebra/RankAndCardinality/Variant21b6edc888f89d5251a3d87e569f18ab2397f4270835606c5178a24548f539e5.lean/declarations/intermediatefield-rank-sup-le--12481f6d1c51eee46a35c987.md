# IntermediateField.rank_sup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8697463c-9320-ec0b-587e-e12c25190baf",
  "kind": "theorem",
  "lexical_name": "IntermediateField.rank_sup_le",
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
  "slug": "intermediatefield-rank-sup-le--12481f6d1c51eee46a35c987",
  "source": {
    "blob": "dc43ed725c1a1abd798d3b782f9cd4e9c2110e82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 79,
    "path": "GRWTSK/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12481f6d1c51eee46a35c987428b71ce5e06b999ec6a6ebc55b6c751897c6f27",
  "verification": {
    "reference": "docs/verification/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8697463c-9320-ec0b-587e-e12c25190baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.rank_sup_le
    {F : Type u} {E : Type v} [Field F] [Field E] [Algebra F E] (A B : IntermediateField F E) :
    Module.rank F ↥(A ⊔ B) ≤ Module.rank F A * Module.rank F B := by
  by_cases hA : Algebra.IsAlgebraic F A
  · exact rank_sup_le_of_isAlgebraic A B (Or.inl hA)
  by_cases hB : Algebra.IsAlgebraic F B
  · exact rank_sup_le_of_isAlgebraic A B (Or.inr hB)
  rw [← Algebra.transcendental_iff_not_isAlgebraic] at hA hB
  haveI : Algebra.Transcendental F ↥(A ⊔ B) := .ringHom_of_comp_eq (RingHom.id F)
    (inclusion le_sup_left) Function.surjective_id (inclusion_injective _) rfl
  haveI := Algebra.Transcendental.infinite F A
  haveI := Algebra.Transcendental.infinite F B
  simp_rw [Algebra.Transcendental.rank_eq_cardinalMk]
  rw [sup_def, mul_mk_eq_max, ← Cardinal.lift_le.{u}]
  refine (lift_cardinalMk_adjoin_le _ _).trans ?_
  calc
    _ ≤ Cardinal.lift.{v} #F ⊔ Cardinal.lift.{u} (#A ⊔ #B) ⊔ ℵ₀ := by
      gcongr
      rw [Cardinal.lift_le]
      exact (mk_union_le _ _).trans_eq (by simp)
    _ = _ := by
      simp [lift_mk_le_lift_mk_of_injective (algebraMap F A).injective]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RankAndCardinality/Variant21b6edc888f89d5251a3d87e569f18ab2397f4270835606c5178a24548f539e5.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc43ed725c1a1abd798d3b782f9cd4e9c2110e82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
