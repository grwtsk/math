# fst_x_pseudo_eq_fst_y

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9595fb7-29cc-bb85-914c-ffb3d05cfd2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3876cc40-5731-bf19-7e22-41f33f9723f4",
  "kind": "theorem",
  "lexical_name": "fst_x_pseudo_eq_fst_y",
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
  "slug": "fst-x-pseudo-eq-fst-y--6ed0a869ff13d69cdf3bb494",
  "source": {
    "blob": "89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ed0a869ff13d69cdf3bb4942c43f29afadf87d43021c23f16b6ade4d4d120a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3876cc40-5731-bf19-7e22-41f33f9723f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fst_x_pseudo_eq_fst_y : PseudoEqual _ (app biprod.fst x) (app biprod.fst y) := by
  refine' ⟨of ℤ ℚ, 𝟙 _, 𝟙 _, inferInstance, _, _⟩
  · exact (ModuleCat.epi_iff_surjective _).2 fun a => ⟨(a : ℚ), rfl⟩
  · dsimp [x, y]
    simp
#align counterexample.fst_x_pseudo_eq_fst_y Counterexample.fst_x_pseudo_eq_fst_y

/-- `biprod.snd ≫ x` is pseudoequal to `biprod.snd y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variant4624483dd2554830c6e3103a24b838fecb3e8e98141b35780bb516ff13058785.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d30969fc7f55f1af6e03e17eb4fd9fdde5d4fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
