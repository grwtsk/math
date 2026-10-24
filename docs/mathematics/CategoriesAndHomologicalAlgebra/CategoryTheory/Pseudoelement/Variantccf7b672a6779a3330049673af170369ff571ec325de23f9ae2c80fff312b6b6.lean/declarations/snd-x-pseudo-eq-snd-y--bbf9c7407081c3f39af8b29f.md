# snd_x_pseudo_eq_snd_y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4df440f-5aa3-6f8d-fe2b-5ddff97f240a",
  "kind": "theorem",
  "lexical_name": "snd_x_pseudo_eq_snd_y",
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
  "slug": "snd-x-pseudo-eq-snd-y--bbf9c7407081c3f39af8b29f",
  "source": {
    "blob": "1c3b047a6993bc489b296d99d51e1e5df96cfdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbf9c7407081c3f39af8b29f971d231d028a22bcc40cec9fc0d8ed0e58fc6d1b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4df440f-5aa3-6f8d-fe2b-5ddff97f240a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snd_x_pseudo_eq_snd_y : PseudoEqual _ (app biprod.snd x) (app biprod.snd y) := by
  refine ⟨of ℤ ℚ, 𝟙 _, 2 • 𝟙 _, inferInstance, ?_, ?_⟩
  · refine (ModuleCat.epi_iff_surjective _).2 fun a => ⟨(show ℚ from a) / 2, ?_⟩
    simpa only [two_smul] using add_halves (show ℚ from a)
  · dsimp [x, y]
    refine ConcreteCategory.hom_ext _ _ fun a => ?_
    simp_rw [biprod.lift_snd]; rfl

-- Porting note: locally disable instance to avoid inferred/synthesized clash
attribute [-instance] AddCommGroup.toIntModule in
/-- `x` is not pseudoequal to `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3b047a6993bc489b296d99d51e1e5df96cfdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
