# uniqueDifferentialAlgebraFiniteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f796f95b67b541e98c02963f6ee4c0bd5142ca92ca8dfb4422eaafa23d57872",
  "kind": "def",
  "lexical_name": "uniqueDifferentialAlgebraFiniteDimensional",
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
  "slug": "uniquedifferentialalgebrafinitedimensional--7b3a169c9eaf10596ea8b18f",
  "source": {
    "blob": "c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 159,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b3a169c9eaf10596ea8b18fb8ae93baff10a46fd22a9ee72458fce178d11db9",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f796f95b67b541e98c02963f6ee4c0bd5142ca92ca8dfb4422eaafa23d57872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def uniqueDifferentialAlgebraFiniteDimensional [FiniteDimensional F K] :
    Unique {_a : Differential K // DifferentialAlgebra F K} := by
  let default : {_a : Differential K // DifferentialAlgebra F K} :=
      ⟨differentialFiniteDimensional F K, differentialAlgebraFiniteDimensional⟩
  refine ⟨⟨default⟩, fun ⟨a, ha⟩ ↦ ?_⟩
  ext x
  apply_fun (aeval x (mapCoeffs (minpoly F x)) + aeval x (derivative (minpoly F x)) * ·)
  · conv_lhs => apply (deriv_aeval_eq ..).symm
    conv_rhs => apply (@deriv_aeval_eq _ _ _ _ _ default.1 _ default.2 _ _).symm
    simp
  · apply (add_right_injective _).comp
    apply mul_right_injective₀
    rw [ne_eq, ← minpoly.dvd_iff]
    have : 0 < (minpoly F x).natDegree := Irreducible.natDegree_pos
      (minpoly.irreducible (Algebra.IsIntegral.isIntegral _))
    apply not_dvd_of_natDegree_lt
    · intro nh
      simp [natDegree_eq_zero_of_derivative_eq_zero nh] at this
    apply natDegree_derivative_lt
    exact Nat.ne_zero_of_lt this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant8181fee3c239fe5605955a4c1fdfadff1e6ce4890645f04ab390d3f54fcd83ed.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c986a3b8a28245a0cae2016b82d2b84a4ef6e9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
