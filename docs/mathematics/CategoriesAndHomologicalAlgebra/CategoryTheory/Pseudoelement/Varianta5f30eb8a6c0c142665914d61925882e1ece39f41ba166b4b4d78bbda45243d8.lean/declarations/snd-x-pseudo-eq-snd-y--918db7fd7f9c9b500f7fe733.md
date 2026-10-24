# snd_x_pseudo_eq_snd_y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36bdcc1e23625e5f73aed1f68455aaaca2d3e8f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c155e3da-bef1-feba-4683-44549cd2abbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:748b3a79-c4a7-be40-8c28-71f9d02d7327",
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
  "slug": "snd-x-pseudo-eq-snd-y--918db7fd7f9c9b500f7fe733",
  "source": {
    "blob": "36bdcc1e23625e5f73aed1f68455aaaca2d3e8f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918db7fd7f9c9b500f7fe733024167369adcde1c71f3778de78ebccd072a3d87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:748b3a79-c4a7-be40-8c28-71f9d02d7327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Varianta5f30eb8a6c0c142665914d61925882e1ece39f41ba166b4b4d78bbda45243d8.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36bdcc1e23625e5f73aed1f68455aaaca2d3e8f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
