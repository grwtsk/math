# fintypeOfAdmissibleOfFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0960f82830016f908630ecc263b3ef4b49dafa771faa04887e34357c320216b",
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
  "slug": "fintypeofadmissibleoffinite--99b07f6d420be002853b05ba",
  "source": {
    "blob": "28adee7e5db9dcd300c45eae7b65133c0dd3b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 346,
    "path": "GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99b07f6d420be002853b05badb382ac1a864f0ccec04780b8245cb16344dd602",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0960f82830016f908630ecc263b3ef4b49dafa771faa04887e34357c320216b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def fintypeOfAdmissibleOfFinite [IsIntegralClosure S R L] :
    Fintype (ClassGroup S) := by
  letI := Classical.decEq L
  letI := IsIntegralClosure.isFractionRing_of_finite_extension R K L S
  letI := IsIntegralClosure.isDedekindDomain R K L S
  choose s b hb_int using FiniteDimensional.exists_is_basis_integral R K L
  have : LinearIndependent R ((Algebra.traceForm K L).dualBasis
      (traceForm_nondegenerate K L) b) := by
    apply (Basis.linearIndependent _).restrict_scalars
    simp only [Algebra.smul_def, mul_one]
    apply IsFractionRing.injective
  obtain ⟨n, b⟩ :=
    Submodule.basisOfPidOfLESpan this (IsIntegralClosure.range_le_span_dualBasis S b hb_int)
  let f : (S ⧸ LinearMap.ker (LinearMap.restrictScalars R (Algebra.linearMap S L))) ≃ₗ[R] S := by
    rw [LinearMap.ker_eq_bot.mpr]
    · exact Submodule.quotEquivOfEqBot _ rfl
    · exact IsIntegralClosure.algebraMap_injective _ R _
  let bS := b.map ((LinearMap.quotKerEquivRange _).symm ≪≫ₗ f)
  have : Algebra.IsIntegral R S := IsIntegralClosure.isIntegral_algebra R L
  exact fintypeOfAdmissibleOfAlgebraic bS adm

end IsAdmissible

end EuclideanDomain

end ClassGroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28adee7e5db9dcd300c45eae7b65133c0dd3b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
