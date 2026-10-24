# LinearMap.BilinForm.isSkewAdjoint_bracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45df81f4957206bb923db30886e655a133e5f2b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4872c8f-2c93-918a-f861-c96970eae54c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caca0bab-eb01-cb6a-efc8-83b5de09fa9a",
  "kind": "theorem",
  "lexical_name": "LinearMap.BilinForm.isSkewAdjoint_bracket",
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
  "slug": "linearmap-bilinform-isskewadjoint-bracket--e2adf3dbe2697ad4b1830923",
  "source": {
    "blob": "45df81f4957206bb923db30886e655a133e5f2b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2adf3dbe2697ad4b18309238e1ea4fc0f289289337b39dd83f74d08d1e51bdb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caca0bab-eb01-cb6a-efc8-83b5de09fa9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.BilinForm.isSkewAdjoint_bracket {f g : Module.End R M}
    (hf : f ∈ B.skewAdjointSubmodule) (hg : g ∈ B.skewAdjointSubmodule) :
    ⁅f, g⁆ ∈ B.skewAdjointSubmodule := by
  rw [mem_skewAdjointSubmodule] at *
  have hfg : IsAdjointPair B B (f * g) (g * f) := by rw [← neg_mul_neg g f]; exact hg.comp hf
  have hgf : IsAdjointPair B B (g * f) (f * g) := by rw [← neg_mul_neg f g]; exact hf.comp hg
  change IsAdjointPair B B (f * g - g * f) (-(f * g - g * f)); rw [neg_sub]
  exact hfg.sub hgf

/-- Given an `R`-module `M`, equipped with a bilinear form, the skew-adjoint endomorphisms form a
Lie subalgebra of the Lie algebra of endomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SkewAdjoint/Variant815e3ccdb1f94dec0ff23d5ab3091d4c3f6527af2f26f149f92e78555643be98.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45df81f4957206bb923db30886e655a133e5f2b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
