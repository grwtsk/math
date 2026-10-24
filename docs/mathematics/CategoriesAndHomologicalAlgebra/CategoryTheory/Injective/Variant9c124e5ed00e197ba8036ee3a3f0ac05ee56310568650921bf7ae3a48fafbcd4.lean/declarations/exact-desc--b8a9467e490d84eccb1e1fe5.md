# Exact.desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da6049db0eaebb42c121680d2673ed66b1a4f6ae4af63b54ed08df050bb2eea4",
  "kind": "def",
  "lexical_name": "Exact.desc",
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
  "slug": "exact-desc--b8a9467e490d84eccb1e1fe5",
  "source": {
    "blob": "7d1cc20d3094214e0a38c6c5c76d5c870b9fd32c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 295,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8a9467e490d84eccb1e1fe5da7a24372eb01fde997940ec4ab5bae72ebc7ddf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da6049db0eaebb42c121680d2673ed66b1a4f6ae4af63b54ed08df050bb2eea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Exact.desc {J Q R S : C} [Injective J] (h : R ⟶ J) (f : Q ⟶ R) (g : R ⟶ S)
    (hgf : Exact g.op f.op) (w : f ≫ h = 0) : S ⟶ J :=
  (Exact.lift h.op g.op f.op hgf (congr_arg Quiver.Hom.op w)).unop
#align category_theory.injective.exact.desc CategoryTheory.Injective.Exact.desc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant9c124e5ed00e197ba8036ee3a3f0ac05ee56310568650921bf7ae3a48fafbcd4.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1cc20d3094214e0a38c6c5c76d5c870b9fd32c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
