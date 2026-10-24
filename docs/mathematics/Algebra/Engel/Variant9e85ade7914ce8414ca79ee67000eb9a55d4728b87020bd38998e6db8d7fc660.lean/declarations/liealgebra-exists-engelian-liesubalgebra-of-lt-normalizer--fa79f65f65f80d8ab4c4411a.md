# LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1cbc46f-7ef7-ba0c-c070-b594832bb087",
  "kind": "theorem",
  "lexical_name": "LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer",
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
  "slug": "liealgebra-exists-engelian-liesubalgebra-of-lt-normalizer--fa79f65f65f80d8ab4c4411a",
  "source": {
    "blob": "41562237b006546b33436bfdbe8c3458a16e8ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 190,
    "path": "GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa79f65f65f80d8ab4c4411a544327adaa90f22e3c12a57df8c71ac6c6516a12",
  "verification": {
    "reference": "docs/verification/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1cbc46f-7ef7-ba0c-c070-b594832bb087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer {K : LieSubalgebra R L}
    (hK₁ : LieAlgebra.IsEngelian.{u₁, u₂, u₄} R K) (hK₂ : K < K.normalizer) :
    ∃ (K' : LieSubalgebra R L), LieAlgebra.IsEngelian.{u₁, u₂, u₄} R K' ∧ K < K' := by
  obtain ⟨x, hx₁, hx₂⟩ := SetLike.exists_of_lt hK₂
  let K' : LieSubalgebra R L :=
    { (R ∙ x) ⊔ (K : Submodule R L) with
      lie_mem' := fun {y z} => LieSubalgebra.lie_mem_sup_of_mem_normalizer hx₁ }
  have hxK' : x ∈ K' := Submodule.mem_sup_left (Submodule.subset_span (Set.mem_singleton _))
  have hKK' : K ≤ K' := (LieSubalgebra.toSubmodule_le_toSubmodule K K').mp le_sup_right
  have hK' : K' ≤ K.normalizer := by
    rw [← LieSubalgebra.toSubmodule_le_toSubmodule]
    exact sup_le ((Submodule.span_singleton_le_iff_mem _ _).mpr hx₁) hK₂.le
  refine ⟨K', ?_, lt_iff_le_and_ne.mpr ⟨hKK', fun contra => hx₂ (contra.symm ▸ hxK')⟩⟩
  intro M _i1 _i2 _i3 _i4 h
  obtain ⟨I, hI₁ : (I : LieSubalgebra R K') = LieSubalgebra.ofLe hKK'⟩ :=
    LieSubalgebra.exists_nested_lieIdeal_ofLe_normalizer hKK' hK'
  have hI₂ : (R ∙ (⟨x, hxK'⟩ : K')) ⊔ (LieSubmodule.toSubmodule I) = ⊤ := by
    rw [← LieIdeal.toLieSubalgebra_toSubmodule R K' I, hI₁]
    apply Submodule.map_injective_of_injective (K' : Submodule R L).injective_subtype
    simp only [LieSubalgebra.coe_ofLe, Submodule.map_sup, Submodule.map_subtype_range_inclusion,
      Submodule.map_top, Submodule.range_subtype]
    rw [Submodule.map_subtype_span_singleton]
  have e : K ≃ₗ⁅R⁆ I :=
    (LieSubalgebra.equivOfLe hKK').trans
      (LieEquiv.ofEq _ _ ((LieSubalgebra.coe_set_eq _ _).mpr hI₁.symm))
  have hI₃ : LieAlgebra.IsEngelian R I := e.isEngelian_iff.mp hK₁
  exact LieSubmodule.isNilpotentOfIsNilpotentSpanSupEqTop hI₂ (h _) (hI₃ _ fun x => h x)

attribute [local instance] LieSubalgebra.subsingleton_bot

/-- *Engel's theorem*.

Note that this implies all traditional forms of Engel's theorem via
`LieModule.nontrivial_max_triv_of_isNilpotent`, `LieModule.isNilpotent_iff_forall`,
`LieAlgebra.isNilpotent_iff_forall`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41562237b006546b33436bfdbe8c3458a16e8ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
