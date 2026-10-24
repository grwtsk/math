# of_quasiFiniteAt_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1e53ec9-c928-3dac-a4fc-e730a5618dc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d9e87ac-8a93-4146-13d4-917ecdf665ab",
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
  "slug": "of-quasifiniteat-residuefield--869154e64fe8be8f80c6b6ae",
  "source": {
    "blob": "ec2607928279b60b2eacaf26b7ce5b7ca07739cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 230,
    "path": "GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:869154e64fe8be8f80c6b6ae34bed1913f1010e836bb17ffcd60ec4ac4f675c5",
  "verification": {
    "reference": "docs/verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d9e87ac-8a93-4146-13d4-917ecdf665ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–271.

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

[Verification target and public status](../../../../../verification/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Weakly/Variantd4525a67c3ae7fbbc4e1d8350f38b81933f187af2b81e44b4de768e3434fbfb1.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec2607928279b60b2eacaf26b7ce5b7ca07739cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
