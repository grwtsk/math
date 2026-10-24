# fintypeOfAdmissibleOfFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9924e003f937904bfb82f7bce8892b8ccabd16d35fe729dd0c45ac53bfb200bd",
  "kind": "def",
  "lexical_name": "fintypeOfAdmissibleOfFinite",
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
  "slug": "fintypeofadmissibleoffinite--d4a2db17a6a440bbd9ddefac",
  "source": {
    "blob": "9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 402,
    "path": "GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4a2db17a6a440bbd9ddefac520d4256009bafdaff42f24cb8ce1b2337649f50",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9924e003f937904bfb82f7bce8892b8ccabd16d35fe729dd0c45ac53bfb200bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fintypeOfAdmissibleOfFinite : Fintype (ClassGroup S) := by
  letI := Classical.decEq L
  letI := IsIntegralClosure.isFractionRing_of_finite_extension R K L S
  letI := IsIntegralClosure.isDedekindDomain R K L S
  choose s b hb_int using FiniteDimensional.exists_is_basis_integral R K L
-- Porting note: `this` and `f` below where solved at the end rather than being defined at first.
  have : LinearIndependent R ((Algebra.traceForm K L).dualBasis
      (traceForm_nondegenerate K L) b) := by
    refine' (Basis.linearIndependent _).restrict_scalars _
    simp only [Algebra.smul_def, mul_one]
    apply IsFractionRing.injective
  obtain ⟨n, b⟩ :=
    Submodule.basisOfPidOfLESpan this (IsIntegralClosure.range_le_span_dualBasis S b hb_int)
  let f : (S ⧸ LinearMap.ker (LinearMap.restrictScalars R (Algebra.linearMap S L))) ≃ₗ[R] S := by
    rw [LinearMap.ker_eq_bot.mpr]
    · exact Submodule.quotEquivOfEqBot _ rfl
    · exact IsIntegralClosure.algebraMap_injective _ R _
  let bS := b.map ((LinearMap.quotKerEquivRange _).symm ≪≫ₗ f)
  exact fintypeOfAdmissibleOfAlgebraic L bS adm (fun x =>
    (IsFractionRing.isAlgebraic_iff R K L).mpr (Algebra.isAlgebraic_of_finite K _ x))
#align class_group.fintype_of_admissible_of_finite ClassGroup.fintypeOfAdmissibleOfFinite

end IsAdmissible

end EuclideanDomain

end ClassGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
