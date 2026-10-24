# isReduced_of_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2687bc23-a994-14f1-3e0a-7a16a00a1a73",
  "kind": "theorem",
  "lexical_name": "isReduced_of_field",
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
  "slug": "isreduced-of-field--d94b60eab5eab99cd89a1c0d",
  "source": {
    "blob": "31ef4a50a74def4f464062a9072a2cabc5afefd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 135,
    "path": "GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d94b60eab5eab99cd89a1c0d60daffe099578394ddf821ab998177cd5c31cc37",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2687bc23-a994-14f1-3e0a-7a16a00a1a73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isReduced_of_field :
    IsReduced A := by
  constructor
  intro x hx
  let f := (Algebra.TensorProduct.includeRight (R := K) (A := AlgebraicClosure K) (B := A))
  have : Function.Injective f := by
    have : ⇑f = (LinearMap.rTensor A (Algebra.ofId K (AlgebraicClosure K)).toLinearMap).comp
        (Algebra.TensorProduct.lid K A).symm.toLinearMap := by
      ext x; simp [f]
    rw [this]
    suffices Function.Injective
        (LinearMap.rTensor A (Algebra.ofId K (AlgebraicClosure K)).toLinearMap) by
      exact this.comp (Algebra.TensorProduct.lid K A).symm.injective
    apply Module.Flat.rTensor_preserves_injective_linearMap
    exact (algebraMap K _).injective
  apply this
  rw [map_zero]
  apply eq_zero_of_localization
  intro M hM
  have hy := (hx.map f).map (algebraMap _ (Localization.AtPrime M))
  generalize algebraMap _ (Localization.AtPrime M) (f x) = y at *
  have := EssFiniteType.of_isLocalization (Localization.AtPrime M) M.primeCompl
  have := of_isLocalization (Rₘ := Localization.AtPrime M) M.primeCompl
  have := EssFiniteType.comp (AlgebraicClosure K) (AlgebraicClosure K ⊗[K] A)
    (Localization.AtPrime M)
  have := comp (AlgebraicClosure K) (AlgebraicClosure K ⊗[K] A)
    (Localization.AtPrime M)
  letI := (isField_of_isAlgClosed_of_isLocalRing (AlgebraicClosure K)
    (A := Localization.AtPrime M)).toField
  exact hy.eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant4ae4833046ab9b285864b1dffff35b2f47e7698af0e64fdfe4c773b3ebfc1a0e.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31ef4a50a74def4f464062a9072a2cabc5afefd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
