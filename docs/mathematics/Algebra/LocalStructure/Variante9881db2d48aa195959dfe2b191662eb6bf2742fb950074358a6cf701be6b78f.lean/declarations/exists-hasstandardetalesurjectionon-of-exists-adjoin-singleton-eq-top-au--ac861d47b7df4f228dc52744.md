# exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79ae1d87-7c36-1fe5-024e-7d0fc6c3bebb",
  "kind": "theorem",
  "lexical_name": "exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top_aux₂",
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
  "slug": "exists-hasstandardetalesurjectionon-of-exists-adjoin-singleton-eq-top-au--ac861d47b7df4f228dc52744",
  "source": {
    "blob": "6d5cd03d1c32346025753bf9e8467e67fe5af07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 109,
    "path": "GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac861d47b7df4f228dc527449872f9fdf2bd22ab05d93b6a58fd50b1a0cf3370",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79ae1d87-7c36-1fe5-024e-7d0fc6c3bebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_hasStandardEtaleSurjectionOn_of_exists_adjoin_singleton_eq_top_aux₂
    {P : Ideal R} [P.IsPrime] {Q : Ideal S} [Q.IsPrime]
    [Q.LiesOver P] [IsUnramifiedAt R Q] (x : S) (p : R[X])
    [Algebra (Localization.AtPrime P) (Localization.AtPrime Q)]
    [IsScalarTower R (Localization.AtPrime P) (Localization.AtPrime Q)]
    (hp₁ : Ideal.span {p.map (algebraMap R P.ResidueField)} =
      RingHom.ker (aeval ((1 : P.ResidueField) ⊗ₜ[R] x)).toRingHom)
    (hp₂ : R[x] = ⊤) :
    ¬ minpoly P.ResidueField (algebraMap S Q.ResidueField x) ^ 2 ∣
      p.map (algebraMap R P.ResidueField) := by
  let Q' : Ideal (P.Fiber S) :=
    (PrimeSpectrum.primesOverOrderIsoFiber R S P ⟨Q, ‹_›, ‹_›⟩).asIdeal
  have : Q'.LiesOver Q := ⟨congr($((PrimeSpectrum.primesOverOrderIsoFiber R S P).symm_apply_apply
    ⟨Q, ‹_›, ‹_›⟩).1).symm⟩
  have : Q'.LiesOver P := .trans _ Q _
  let := Localization.AtPrime.algebraOfLiesOver Q Q'
  let := Localization.AtPrime.algebraOfLiesOver P Q'
  have : IsUnramifiedAt P.ResidueField Q' := .residueField P Q _ (Q'.over_def Q)
  have : Function.Surjective (aeval (R := P.ResidueField) ((1 : P.ResidueField) ⊗ₜ[R] x)) := by
    rw [← AlgHom.range_eq_top, ← adjoin_singleton_eq_range_aeval]
    simpa using TensorProduct.adjoin_one_tmul_image_eq_top (A := P.ResidueField) _ hp₂
  convert! IsUnramifiedAt.not_minpoly_sq_dvd (A := P.Fiber S) Q' (1 ⊗ₜ x) _ hp₁ this
  rw [← minpoly.algHom_eq _
    (IsScalarTower.toAlgHom P.ResidueField Q.ResidueField Q'.ResidueField).injective]
  congr 1
  · apply algebra_ext; intros r; congr 1; ext x; simp [← IsScalarTower.algebraMap_apply]
  · simp [← TensorProduct.right_algebraMap_apply, ← IsScalarTower.algebraMap_apply]

set_option backward.isDefEq.respectTransparency false in
attribute [local simp] aeval_algebraMap_apply in
-- Subsumed by `Algebra.IsUnramifiedAt.exists_hasStandardEtaleSurjectionOn`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5cd03d1c32346025753bf9e8467e67fe5af07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
