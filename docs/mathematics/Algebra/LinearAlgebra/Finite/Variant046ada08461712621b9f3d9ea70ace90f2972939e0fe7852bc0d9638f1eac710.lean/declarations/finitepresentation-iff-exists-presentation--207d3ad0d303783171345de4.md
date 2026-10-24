# finitePresentation_iff_exists_presentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3b727b7-1048-e174-0e7e-932fb19b3a3c",
  "kind": "lemma",
  "lexical_name": "finitePresentation_iff_exists_presentation",
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
  "slug": "finitepresentation-iff-exists-presentation--207d3ad0d303783171345de4",
  "source": {
    "blob": "333e5e979312298fdc66b0aeede4700465e35f4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:207d3ad0d303783171345de4813db487ded0a4918f9863389c69fc92fd4657ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3b727b7-1048-e174-0e7e-932fb19b3a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finitePresentation_iff_exists_presentation :
    Module.FinitePresentation A M ↔
      ∃ (pres : Presentation.{w₀, w₁} A M), Finite pres.G ∧ Finite pres.R := by
  constructor
  · intro
    obtain ⟨G : Type w₀, _, var, hG⟩ :=
      Submodule.fg_iff_exists_finite_generating_family.1
        (finite_def.1 (inferInstanceAs (Module.Finite A M)))
    obtain ⟨R : Type w₁, _, relation, hR⟩ :=
      Submodule.fg_iff_exists_finite_generating_family.1
        (Module.FinitePresentation.fg_ker (Finsupp.linearCombination A var) (by
          rw [← LinearMap.range_eq_top, Finsupp.range_linearCombination, hG]))
    exact
     ⟨{ G := G
        R := R
        relation := relation
        var := var
        linearCombination_var_relation := fun r ↦ by
          rw [Submodule.ext_iff] at hR
          exact (hR _).1 (Submodule.subset_span ⟨_, rfl⟩)
        toIsPresentation := by
          rw [Relations.Solution.isPresentation_iff]
          exact ⟨hG, hR.symm⟩ },
        inferInstance, inferInstance⟩
  · rintro ⟨pres, _, _⟩
    exact pres.finitePresentation

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333e5e979312298fdc66b0aeede4700465e35f4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
