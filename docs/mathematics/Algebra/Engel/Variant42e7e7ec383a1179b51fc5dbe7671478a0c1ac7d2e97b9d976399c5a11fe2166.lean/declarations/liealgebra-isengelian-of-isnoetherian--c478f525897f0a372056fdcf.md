# LieAlgebra.isEngelian_of_isNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3272ce9c-46be-07c6-43b3-671e79e90f98",
  "kind": "theorem",
  "lexical_name": "LieAlgebra.isEngelian_of_isNoetherian",
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
  "slug": "liealgebra-isengelian-of-isnoetherian--c478f525897f0a372056fdcf",
  "source": {
    "blob": "ecb6345b6368a15891b73cb41922a92b121870bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 230,
    "path": "GRWTSK/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c478f525897f0a372056fdcf25c427fe542aa26b48169647d0e0b67767833c94",
  "verification": {
    "reference": "docs/verification/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3272ce9c-46be-07c6-43b3-671e79e90f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LieAlgebra.isEngelian_of_isNoetherian [IsNoetherian R L] : LieAlgebra.IsEngelian R L := by
  intro M _i1 _i2 _i3 _i4 h
  rw [← isNilpotent_range_toEnd_iff R]
  let L' := (toEnd R L M).range
  replace h : ∀ y : L', IsNilpotent (y : Module.End R M) := by
    rintro ⟨-, ⟨y, rfl⟩⟩
    simp [h]
  change LieModule.IsNilpotent L' M
  let s := {K : LieSubalgebra R L' | LieAlgebra.IsEngelian R K}
  have hs : s.Nonempty := ⟨⊥, LieAlgebra.isEngelian_of_subsingleton⟩
  suffices ⊤ ∈ s by
    rw [← isNilpotent_of_top_iff (R := R)]
    apply this M
    simp [LieSubalgebra.toEnd_eq, h]
  have : ∀ K ∈ s, K ≠ ⊤ → ∃ K' ∈ s, K < K' := by
    rintro K (hK₁ : LieAlgebra.IsEngelian R K) hK₂
    apply LieAlgebra.exists_engelian_lieSubalgebra_of_lt_normalizer hK₁
    apply lt_of_le_of_ne K.le_normalizer
    rw [Ne, eq_comm, K.normalizer_eq_self_iff, ← Ne, ←
      LieSubmodule.nontrivial_iff_ne_bot R K]
    have : Nontrivial (L' ⧸ K.toLieSubmodule) := Submodule.Quotient.nontrivial_iff.2 <| by simpa
    have : LieModule.IsNilpotent K (L' ⧸ K.toLieSubmodule) := by
      refine hK₁ _ fun x => ?_
      have hx := LieAlgebra.isNilpotent_ad_of_isNilpotent (h x)
      apply Module.End.IsNilpotent.mapQ ?_ hx
      intro X HX
      simp only [LieSubalgebra.coe_toLieSubmodule, LieSubalgebra.mem_toSubmodule] at HX
      simp only [LieSubalgebra.coe_toLieSubmodule, Submodule.mem_comap, ad_apply,
        LieSubalgebra.mem_toSubmodule]
      exact LieSubalgebra.lie_mem K x.prop HX
    exact nontrivial_max_triv_of_isNilpotent R K (L' ⧸ K.toLieSubmodule)
  have _i5 : IsNoetherian R L' := by
    refine isNoetherian_of_surjective (LieHom.rangeRestrict (toEnd R L M)).toLinearMap ?_
    simp only [LinearMap.range_eq_top]
    exact LieHom.surjective_rangeRestrict (toEnd R L M)
  obtain ⟨K, hK₁, hK₂⟩ := (LieSubalgebra.wellFoundedGT_of_noetherian R L').has_min s hs
  obtain rfl : K = ⊤ := by grind
  exact hK₁

/-- Engel's theorem.

See also `LieModule.isNilpotent_iff_forall'` which assumes that `M` is Noetherian instead of `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb6345b6368a15891b73cb41922a92b121870bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
