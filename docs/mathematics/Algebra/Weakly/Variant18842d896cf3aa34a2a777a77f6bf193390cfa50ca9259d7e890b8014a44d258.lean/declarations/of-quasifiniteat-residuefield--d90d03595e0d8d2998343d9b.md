# of_quasiFiniteAt_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a60fbcc-e6b9-f6c8-ea80-252b0ba72036",
  "kind": "lemma",
  "lexical_name": "of_quasiFiniteAt_residueField",
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
  "slug": "of-quasifiniteat-residuefield--d90d03595e0d8d2998343d9b",
  "source": {
    "blob": "94f914666f91dcb8574ec13add3fd8b912babef0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 238,
    "path": "GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d90d03595e0d8d2998343d9bf4f049a181c607c5b2338cee8a435d13f983beb8",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a60fbcc-e6b9-f6c8-ea80-252b0ba72036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_quasiFiniteAt_residueField [p.IsPrime] [q.LiesOver p]
    (Q : Ideal (p.Fiber S)) [Q.IsPrime]
    (hQ : Q.comap Algebra.TensorProduct.includeRight.toRingHom = q)
    [Algebra.QuasiFiniteAt p.ResidueField Q] :
    Algebra.WeaklyQuasiFiniteAt R q := by
  rw [Algebra.weaklyQuasiFiniteAt_iff]
  let Sq := Localization.AtPrime q
  let := Localization.AtPrime.algebraOfLiesOver p q
  let φ₁ : p.ResidueField →ₐ[R] Sq ⧸ p.map (algebraMap R Sq) :=
    Ideal.quotientMapₐ _ (IsScalarTower.toAlgHom _ _ _) (by
    rw [← IsLocalization.AtPrime.map_eq_maximalIdeal p, Ideal.map_le_iff_le_comap,
      ← Ideal.comap_coe (F := AlgHom _ _ _), Ideal.comap_comap]
    simpa [← IsScalarTower.algebraMap_eq] using Ideal.le_comap_map)
  let φ₂ : p.Fiber S →ₐ[R] Sq ⧸ p.map (algebraMap R Sq) :=
    Algebra.TensorProduct.lift φ₁ (IsScalarTower.toAlgHom _ _ _) fun _ _ ↦ .all _ _
  let φ₃ : Localization.AtPrime Q →ₐ[R] Sq ⧸ p.map (algebraMap R Sq) :=
    IsLocalization.liftAlgHom (M := Q.primeCompl) (f := φ₂) <| by
      rintro ⟨y, hy⟩
      obtain ⟨r, hrp, s, H⟩ := Ideal.Fiber.exists_smul_eq_one_tmul _ y
      suffices IsUnit (φ₂ (1 ⊗ₜ s)) by
        rw [← H, map_smul, Algebra.smul_def, IsUnit.mul_iff] at this
        exact this.2
      suffices s ∉ q by
        have := (IsLocalization.map_units (M := q.primeCompl) Sq ⟨_, this⟩).map
          (algebraMap _ (Sq ⧸ p.map (algebraMap R Sq)))
        simpa [φ₂, ← IsScalarTower.algebraMap_apply] using this
      suffices algebraMap _ _ r * y ∉ Q by simpa [← hQ, ← H, Algebra.smul_def]
      refine Q.primeCompl.mul_mem ?_ hy
      simpa only [Ideal.mem_primeCompl_iff, ← Ideal.mem_comap, ← Q.over_def p]
  have : Function.Surjective φ₃ := by
    intro x
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨x, ⟨s, hs⟩, rfl⟩ := IsLocalization.exists_mk'_eq q.primeCompl x
    refine ⟨IsLocalization.mk' (M := Q.primeCompl) _ (1 ⊗ₜ x) ⟨1 ⊗ₜ s, ?_⟩, ?_⟩
    · simpa [← hQ] using hs
    · simp [φ₃, IsLocalization.lift_mk'_spec, φ₂, IsScalarTower.algebraMap_apply S Sq (Sq ⧸ _),
        -Ideal.Quotient.mk_algebraMap, ← map_mul]
  have inst : QuasiFiniteAt R Q := .trans _ p.ResidueField _
  obtain rfl := q.over_def p
  exact .of_surjective_algHom φ₃ this

end Algebra.WeaklyQuasiFiniteAt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variant18842d896cf3aa34a2a777a77f6bf193390cfa50ca9259d7e890b8014a44d258.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94f914666f91dcb8574ec13add3fd8b912babef0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
