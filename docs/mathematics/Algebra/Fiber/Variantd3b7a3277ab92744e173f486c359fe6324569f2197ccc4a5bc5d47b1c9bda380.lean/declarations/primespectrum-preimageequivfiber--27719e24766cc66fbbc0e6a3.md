# PrimeSpectrum.preimageEquivFiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0edb93d1eeefe96425d0a4246aa1ba2e2db9389ce46823fcc2b18fe1eaff5921",
  "kind": "def",
  "lexical_name": "PrimeSpectrum.preimageEquivFiber",
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
  "slug": "primespectrum-preimageequivfiber--27719e24766cc66fbbc0e6a3",
  "source": {
    "blob": "fce9211de87a29bb699ca0e6c93bbae56cbd0e74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 149,
    "path": "GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27719e24766cc66fbbc0e6a3ddd174665e164be034e513d47a5084e32480d9d4",
  "verification": {
    "reference": "docs/verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0edb93d1eeefe96425d0a4246aa1ba2e2db9389ce46823fcc2b18fe1eaff5921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def PrimeSpectrum.preimageEquivFiber (p : PrimeSpectrum R) :
    comap (algebraMap R S) ⁻¹' {p} ≃ PrimeSpectrum (p.asIdeal.Fiber S) where
  toFun q := ⟨RingHom.ker (Algebra.TensorProduct.lift
    (Ideal.ResidueField.mapₐ p.asIdeal q.1.asIdeal (Algebra.ofId _ _) congr($(q.2.symm).asIdeal))
      (IsScalarTower.toAlgHom _ _ _) fun _ _ ↦ .all _ _).toRingHom, RingHom.ker_isPrime _⟩
  invFun q := ⟨q.comap Algebra.TensorProduct.includeRight.toRingHom, by
    simp only [AlgHom.toRingHom_eq_coe, Set.mem_preimage, ← comap_comp_apply,
      AlgHom.comp_algebraMap_of_tower]
    exact (residueField_comap _).le ⟨q.comap (algebraMap _ _), rfl⟩⟩
  left_inv q := by ext x; simp
  right_inv q := by
    ext x
    obtain ⟨r, hr, s, e⟩ := Ideal.Fiber.exists_smul_eq_one_tmul _ x
    have := @PrimeSpectrum.isPrime -- times out if removed
    rw [← Ideal.IsPrime.mul_mem_left_iff (x := algebraMap _ _ r), iff_comm,
      ← Ideal.IsPrime.mul_mem_left_iff (x := algebraMap _ _ r), ← Algebra.smul_def, e]
    · simp
    · rw [← Ideal.mem_comap, ← PrimeSpectrum.comap_asIdeal]
      convert! hr
      exact (residueField_comap _).le ⟨q.comap (algebraMap _ _), rfl⟩
    · simpa [-Algebra.algebraMap_self, -AlgHom.commutes, -AlgHom.map_algebraMap,
        -Ideal.ResidueField.map_algebraMap]

variable (R S) in
/-- The `OrderIso` between the fiber of `PrimeSpectrum S → PrimeSpectrum R` at a prime
ideal `p : PrimeSpectrum R` and the prime spectrum of `κ(p) ⊗[R] S`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Fiber/Variantd3b7a3277ab92744e173f486c359fe6324569f2197ccc4a5bc5d47b1c9bda380.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce9211de87a29bb699ca0e6c93bbae56cbd0e74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
