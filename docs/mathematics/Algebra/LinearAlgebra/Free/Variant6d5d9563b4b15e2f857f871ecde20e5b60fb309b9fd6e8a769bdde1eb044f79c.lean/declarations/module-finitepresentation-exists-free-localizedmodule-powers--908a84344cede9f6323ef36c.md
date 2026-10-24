# Module.FinitePresentation.exists_free_localizedModule_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5aaf94d-6876-ca4b-7f92-362e10f3c7b5",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.exists_free_localizedModule_powers",
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
  "slug": "module-finitepresentation-exists-free-localizedmodule-powers--908a84344cede9f6323ef36c",
  "source": {
    "blob": "a7d5420e22ae6367376fdd5867b2f6683022d450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant6d5d9563b4b15e2f857f871ecde20e5b60fb309b9fd6e8a769bdde1eb044f79c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:908a84344cede9f6323ef36c210c6fd3815545580c61a50f5b934d6e27ca8095",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant6d5d9563b4b15e2f857f871ecde20e5b60fb309b9fd6e8a769bdde1eb044f79c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5aaf94d-6876-ca4b-7f92-362e10f3c7b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.exists_free_localizedModule_powers
    (Rₛ) [CommRing Rₛ] [Algebra R Rₛ] [Module Rₛ M'] [IsScalarTower R Rₛ M'] [Nontrivial Rₛ]
    [IsLocalization S Rₛ] [Module.FinitePresentation R M] [Module.Free Rₛ M'] :
    ∃ r, r ∈ S ∧
      Module.Free (Localization (.powers r)) (LocalizedModule (.powers r) M) ∧
      Module.finrank (Localization (.powers r)) (LocalizedModule (.powers r) M) =
        Module.finrank Rₛ M' := by
  let I := Module.Free.ChooseBasisIndex Rₛ M'
  let b : Basis I Rₛ M' := Module.Free.chooseBasis Rₛ M'
  have : Module.Finite Rₛ M' := Module.Finite.of_isLocalizedModule S (Rₚ := Rₛ) f
  obtain ⟨r, hr, b', _⟩ := Module.FinitePresentation.exists_basis_localizedModule_powers S f Rₛ b
  have := (show Localization (.powers r) →+* Rₛ from IsLocalization.map (M := .powers r) (T := S) _
    (RingHom.id _) (Submonoid.powers_le.mpr hr)).domain_nontrivial
  refine ⟨r, hr, .of_basis b', ?_⟩
  rw [Module.finrank_eq_nat_card_basis b, Module.finrank_eq_nat_card_basis b']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant6d5d9563b4b15e2f857f871ecde20e5b60fb309b9fd6e8a769bdde1eb044f79c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant6d5d9563b4b15e2f857f871ecde20e5b60fb309b9fd6e8a769bdde1eb044f79c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d5420e22ae6367376fdd5867b2f6683022d450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
