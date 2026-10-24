# BimonObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:601056afec7b4464731b82aeff89bb7147451cb5297203df484cd8ea167abc8c",
  "kind": "class",
  "lexical_name": "BimonObj",
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
  "slug": "bimonobj--4f03423f5e4271dcc37febbd",
  "source": {
    "blob": "174e038cca72a2e67b32fbbefab2e21915e6f4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Varianta70721fd44280e7cede12f544f29d8ce1b08d85ff1918d8a8137875c9472dddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f03423f5e4271dcc37febbdb170e8236480e675461e87bc32db2b2e068aeb34",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Varianta70721fd44280e7cede12f544f29d8ce1b08d85ff1918d8a8137875c9472dddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:601056afec7b4464731b82aeff89bb7147451cb5297203df484cd8ea167abc8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class BimonObj (M : C) extends MonObj M, ComonObj M where
  mul_comul (M) : μ[M] ≫ Δ[M] = (Δ[M] ⊗ₘ Δ[M]) ≫ tensorμ M M M M ≫ (μ[M] ⊗ₘ μ[M]) := by cat_disch
  one_comul (M) : η[M] ≫ Δ[M] = η[M ⊗ M] := by cat_disch
  mul_counit (M) : μ[M] ≫ ε[M] = ε[M ⊗ M] := by cat_disch
  one_counit (M) : η[M] ≫ ε[M] = 𝟙 (𝟙_ C) := by cat_disch

namespace BimonObj

attribute [reassoc (attr := simp)] mul_comul one_comul mul_counit one_counit

end BimonObj

/-- The property that a morphism between bimonoid objects is a bimonoid morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Varianta70721fd44280e7cede12f544f29d8ce1b08d85ff1918d8a8137875c9472dddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimon/Varianta70721fd44280e7cede12f544f29d8ce1b08d85ff1918d8a8137875c9472dddd.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `174e038cca72a2e67b32fbbefab2e21915e6f4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
