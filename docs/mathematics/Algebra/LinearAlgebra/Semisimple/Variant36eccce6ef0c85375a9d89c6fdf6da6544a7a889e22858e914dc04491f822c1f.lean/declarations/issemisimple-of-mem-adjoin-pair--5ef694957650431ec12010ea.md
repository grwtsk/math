# IsSemisimple.of_mem_adjoin_pair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80009e05-f56b-6080-0ca8-3e23b045b5d9",
  "kind": "theorem",
  "lexical_name": "IsSemisimple.of_mem_adjoin_pair",
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
  "slug": "issemisimple-of-mem-adjoin-pair--5ef694957650431ec12010ea",
  "source": {
    "blob": "548a7037c0ca9fa892b20ff0c38edc81b4b5d899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ef694957650431ec12010eae768eb351b69df8ca336510ddbb855a7c58299de",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80009e05-f56b-6080-0ca8-3e23b045b5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSemisimple.of_mem_adjoin_pair {a : End K M} (ha : a ∈ Algebra.adjoin K {f, g}) :
    a.IsSemisimple := by
  let R := K[X] ⧸ Ideal.span {minpoly K f}
  let S := AdjoinRoot ((minpoly K g).map <| algebraMap K R)
  have : Module.Finite K R :=
    (AdjoinRoot.powerBasis' <| minpoly.monic <| Algebra.IsIntegral.isIntegral f).finite
  have : Module.Finite R S :=
    (AdjoinRoot.powerBasis' <| (minpoly.monic <| Algebra.IsIntegral.isIntegral g).map _).finite
  have : IsScalarTower K R S := .of_algebraMap_eq fun _ ↦ rfl
  have : Module.Finite K S := .trans R S
  have : IsArtinianRing R := .of_finite K R
  have : IsReduced R := (Ideal.isRadical_iff_quotient_reduced _).mp <|
    span_minpoly_eq_annihilator K f ▸ hf.annihilator_isRadical
  have : IsReduced S := by
    simp_rw [S, AdjoinRoot, ← Ideal.isRadical_iff_quotient_reduced, ← isRadical_iff_span_singleton]
    exact (PerfectField.separable_iff_squarefree.mpr hg.minpoly_squarefree).map.squarefree.isRadical
  let φ : S →ₐ[K] End K M := Ideal.Quotient.liftₐ _ (eval₂AlgHom' (Ideal.Quotient.liftₐ _ (aeval f)
    fun a ↦ ?_) g ?_) ((Ideal.span_singleton_le_iff_mem _).mpr ?_ : _ ≤ RingHom.ker _)
  rotate_left 1
  · rw [Ideal.span, ← minpoly.ker_aeval_eq_span_minpoly]; exact id
  · rintro ⟨p⟩; exact p.induction_on (fun k ↦ by simp [R, Algebra.commute_algebraMap_left])
      (fun p q hp hq ↦ by simpa [R] using hp.add_left hq)
      fun n k ↦ by simpa [R, pow_succ, ← mul_assoc _ _ X] using (·.mul_left comm)
  · simpa only [RingHom.mem_ker, eval₂AlgHom'_apply, eval₂_map, AlgHom.comp_algebraMap_of_tower]
      using minpoly.aeval K g
  have : Algebra.adjoin K {f, g} ≤ φ.range := Algebra.adjoin_le fun x ↦ by
    rintro (hx | hx) <;> rw [hx]
    · exact ⟨AdjoinRoot.of _ (AdjoinRoot.root _), (eval₂_C _ _).trans (aeval_X f)⟩
    · exact ⟨AdjoinRoot.root _, eval₂_X _ _⟩
  obtain ⟨p, rfl⟩ := (AlgHom.mem_range _).mp (this ha)
  refine isSemisimple_of_squarefree_aeval_eq_zero
    ((minpoly.isRadical K p).squarefree <| minpoly.ne_zero <| .of_finite K p) ?_
  rw [aeval_algHom, φ.comp_apply, minpoly.aeval, map_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `548a7037c0ca9fa892b20ff0c38edc81b4b5d899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
