# whiskerLeft_mapComp'_inv_comp_mapComp'₀₁₃_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9121af1a-8a34-75c5-c1fc-5df30ae45e90",
  "kind": "lemma",
  "lexical_name": "whiskerLeft_mapComp'_inv_comp_mapComp'₀₁₃_inv",
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
  "slug": "whiskerleft-mapcomp-inv-comp-mapcomp-inv--547045f5cddd85449844ea67",
  "source": {
    "blob": "8cf1b7142c83fe90f026d14c4d7c93f33ebe580d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:547045f5cddd85449844ea67b37048ceae35eb5bb2e1a4b1e6e5b98cdf0d187e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9121af1a-8a34-75c5-c1fc-5df30ae45e90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerLeft_mapComp'_inv_comp_mapComp'₀₁₃_inv (hf : f₀₁ ≫ f₁₃ = f) :
    F.map f₀₁ ◁ (F.mapComp' f₁₂ f₂₃ f₁₃ h₁₃).inv ≫ (F.mapComp' f₀₁ f₁₃ f hf).inv =
    (α_ _ _ _).inv ≫ (F.mapComp' f₀₁ f₁₂ f₀₂ h₀₂).inv ▷ F.map f₂₃ ≫
      (F.mapComp' f₀₂ f₂₃ f).inv := by
  simp [← cancel_mono (F.mapComp' f₀₂ f₂₃ f).hom,
    F.mapComp'₀₁₃_inv_comp_mapComp'₀₂₃_hom _ _ _ _ _ _ h₀₂ h₁₃ hf]

@[to_app (attr := reassoc)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf1b7142c83fe90f026d14c4d7c93f33ebe580d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
