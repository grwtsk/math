# resultant_integralNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e774f98-bac9-fe95-dc66-228a1b0e99c0",
  "kind": "lemma",
  "lexical_name": "resultant_integralNormalization",
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
  "slug": "resultant-integralnormalization--b0da5d7ca7018c814ea87750",
  "source": {
    "blob": "3ed264ee72c569807fee84ec7696bcf5a010dfb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 770,
    "line": 741,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0da5d7ca7018c814ea87750dbb79b2a8a17ff46d0ff8d40d061f46d687d050e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e774f98-bac9-fe95-dc66-228a1b0e99c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resultant_integralNormalization (f g : R[X]) (hg : g.natDegree ≠ 0) :
    resultant (f.scaleRoots g.leadingCoeff) g.integralNormalization =
      g.leadingCoeff ^ (f.natDegree * (g.natDegree - 1)) * resultant f g := by
  rw [natDegree_scaleRoots, natDegree_integralNormalization]
  wlog hR : IsDomain R
  · by_cases hf0 : f = 0; · simp [hf0]
    by_cases hg0 : g = 0; · simp [hg0]
    let S := MvPolynomial R ℤ
    let φ : S →+* R := MvPolynomial.eval₂Hom (algebraMap _ _) id
    have hφ : Function.Surjective φ := fun x ↦ ⟨.X x, by simp [φ, MvPolynomial.eval₂Hom]⟩
    obtain ⟨f', hf', ef⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ f)
    obtain ⟨g', hg', eg⟩ := exists_degree_eq_of_mem_lifts (Polynomial.map_surjective φ hφ g)
    have hfl : f.leadingCoeff = φ f'.leadingCoeff := by
      simp_rw [← coeff_natDegree, ← natDegree_eq_natDegree ef, ← hf', coeff_map]
    have hgl : g.leadingCoeff = φ g'.leadingCoeff := by
      simp_rw [← coeff_natDegree, ← natDegree_eq_natDegree eg, ← hg', coeff_map]
    rw [← natDegree_eq_natDegree ef, ← natDegree_eq_natDegree eg,
      ← hf', hgl, ← map_scaleRoots _ _ _ (by simpa [← hfl]), ← hg', integralNormalization_map _ _
      (by simpa [← hgl]), resultant_map_map,
      this f' g' (by simpa [natDegree_eq_natDegree eg]) inferInstance]
    simp [resultant_map_map]
  by_cases hg0 : g = 0; · simp [hg0]
  apply mul_right_injective₀ (a := g.leadingCoeff ^ f.natDegree) (by simp [hg0])
  dsimp
  have := resultant_scaleRoots f g g.leadingCoeff
  rw [natDegree_scaleRoots, natDegree_scaleRoots,
    ← integralNormalization_mul_C_leadingCoeff, mul_comm, resultant_C_mul_right] at this
  rw [this, ← mul_assoc, ← pow_add, add_comm, ← Nat.mul_add_one, Nat.sub_add_cancel (by lia)]

/-- `Res(f(x + r), g(x + r)) = Res(f, g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant42303290c795f2a4ff7686e3dde4616f130a8558c291be94c4ea91677c0e5428.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed264ee72c569807fee84ec7696bcf5a010dfb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
