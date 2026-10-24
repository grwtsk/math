# IsBaseChange.of_left_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f4857db127d88b64e08696dd4397f81aca5fd33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9a4037cb0d86a23561aa8ab024e19555b2dab2b5462f82cf6af5de7e1d64fef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a31b81e4-8144-602e-806e-0a3a86e06ddc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba180c13-3d06-e120-3478-e50d3f9daabf",
  "kind": "lemma",
  "lexical_name": "IsBaseChange.of_left_exact",
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
  "slug": "isbasechange-of-left-exact--c51fcf2dde9dfecb6d9661df",
  "source": {
    "blob": "9f4857db127d88b64e08696dd4397f81aca5fd33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsBaseChange/Variantc9a4037cb0d86a23561aa8ab024e19555b2dab2b5462f82cf6af5de7e1d64fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c51fcf2dde9dfecb6d9661df7f3f57daa5f10a6ae5d047d62dcac649525a2bd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsBaseChange/Variantc9a4037cb0d86a23561aa8ab024e19555b2dab2b5462f82cf6af5de7e1d64fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba180c13-3d06-e120-3478-e50d3f9daabf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBaseChange.of_left_exact (comm₁ : h₂.comp f = (f'.restrictScalars R).comp h₁)
    (comm₂ : h₃.comp g = (g'.restrictScalars R).comp h₂) [Module.Flat R S]
    (isb₂ : IsBaseChange S h₂) (isb₃ : IsBaseChange S h₃)
    (exact₁ : Function.Exact f g) (inj₁ : Function.Injective f)
    (exact₂ : Function.Exact f' g') (inj₂ : Function.Injective f') : IsBaseChange S h₁ := by
  simp only [IsBaseChange, IsTensorProduct] at isb₂ isb₃ ⊢
  refine LinearMap.bijective_of_bijective_of_injective_of_left_exact
    ((f.baseChange S).restrictScalars R) ((g.baseChange S).restrictScalars R)
    (f'.restrictScalars R) (g'.restrictScalars R) _ _ _ ?_ ?_ ?_ exact₂ isb₂ isb₃.1 ?_ inj₂
  · ext s m
    simpa using congr(s • ($comm₁ m)).symm
  · ext s m
    simpa using congr(s • ($comm₂ m)).symm
  · exact Module.Flat.lTensor_exact S exact₁
  · exact Module.Flat.lTensor_preserves_injective_linearMap f inj₁
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsBaseChange/Variantc9a4037cb0d86a23561aa8ab024e19555b2dab2b5462f82cf6af5de7e1d64fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsBaseChange/Variantc9a4037cb0d86a23561aa8ab024e19555b2dab2b5462f82cf6af5de7e1d64fef.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4857db127d88b64e08696dd4397f81aca5fd33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
