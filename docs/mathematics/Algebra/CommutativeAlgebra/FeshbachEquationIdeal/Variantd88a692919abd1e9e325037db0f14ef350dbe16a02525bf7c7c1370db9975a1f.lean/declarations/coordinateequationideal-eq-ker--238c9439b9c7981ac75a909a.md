# coordinateEquationIdeal_eq_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17e5d21b-b2e4-2133-6b02-bc22ee9b347c",
  "kind": "theorem",
  "lexical_name": "coordinateEquationIdeal_eq_ker",
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
  "slug": "coordinateequationideal-eq-ker--238c9439b9c7981ac75a909a",
  "source": {
    "blob": "8da69080fedd6d000ebc4f809dccd682d71819c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 327,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238c9439b9c7981ac75a909a53b5bc50e7a18ce5922fc6db8c38803a2346fa4d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e5d21b-b2e4-2133-6b02-bc22ee9b347c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinateEquationIdeal_eq_ker {σ : Type*} :
    Ideal.span (Set.range (MvPolynomial.X : σ → MvPolynomial σ R)) =
      RingHom.ker (MvPolynomial.constantCoeff : MvPolynomial σ R →+* R) := by
  apply le_antisymm
  · apply Ideal.span_le.mpr
    rintro _ ⟨i, rfl⟩
    exact RingHom.mem_ker.mpr (MvPolynomial.constantCoeff_X R i)
  · intro p hp
    have h : p - MvPolynomial.C (MvPolynomial.constantCoeff p) ∈
        Ideal.span (Set.range (MvPolynomial.X : σ → MvPolynomial σ R)) := by
      clear hp
      induction p using MvPolynomial.induction_on with
      | C a => simp
      | add p q hp hq =>
          simp only [map_add]
          rw [show p + q - (MvPolynomial.C (MvPolynomial.constantCoeff p) +
              MvPolynomial.C (MvPolynomial.constantCoeff q)) =
              (p - MvPolynomial.C (MvPolynomial.constantCoeff p)) +
                (q - MvPolynomial.C (MvPolynomial.constantCoeff q)) by abel]
          exact (Ideal.span (Set.range (MvPolynomial.X : σ → MvPolynomial σ R))).add_mem hp hq
      | mul_X p i _ =>
          simpa only [map_mul, MvPolynomial.constantCoeff_X, mul_zero, map_zero, sub_zero]
            using (Ideal.span (Set.range (MvPolynomial.X : σ → MvPolynomial σ R))).mul_mem_left
              p (Ideal.subset_span ⟨i, rfl⟩)
    have hz : MvPolynomial.constantCoeff p = 0 := RingHom.mem_ker.mp hp
    simpa only [hz, map_zero, sub_zero] using h

omit [Fintype κ] in
/-- Splitting the variables into two coordinate blocks generates the same
coordinate ideal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FeshbachEquationIdeal/Variantd88a692919abd1e9e325037db0f14ef350dbe16a02525bf7c7c1370db9975a1f.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8da69080fedd6d000ebc4f809dccd682d71819c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
