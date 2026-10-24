# hComp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5952c6eef4317560d9ca4d61a7610463abb18c63c4e4d5001dfda3088ff0a99",
  "kind": "abbrev",
  "lexical_name": "hComp'",
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
  "slug": "hcomp--5fec341e96ec9902dab0f3dc",
  "source": {
    "blob": "90836e967a824d66086d227c8b30f2811bd4cdca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant53c7674339d7b9d4b69ff78f4c67951f449a4cbf8cd409a736e4123cae072bf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fec341e96ec9902dab0f3dc41e2ecf1d1e931051e263883cfbfdd520ccff35b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant53c7674339d7b9d4b69ff78f4c67951f449a4cbf8cd409a736e4123cae072bf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5952c6eef4317560d9ca4d61a7610463abb18c63c4e4d5001dfda3088ff0a99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev hComp' {T₁ : C₁ ⥤ C₂} {T₂ : C₂ ⥤ C₃} {V₁ : C₁ ⥤ C₄} {V₂ : C₂ ⥤ C₅} {V₃ : C₃ ⥤ C₆}
    {B₁ : C₄ ⥤ C₅} {B₂ : C₅ ⥤ C₆} (S₁ : CatCommSq T₁ V₁ V₂ B₁) (S₂ : CatCommSq T₂ V₂ V₃ B₂) :
    CatCommSq (T₁ ⋙ T₂) V₁ V₃ (B₁ ⋙ B₂) :=
  letI := S₁
  letI := S₂
  hComp _ _ _ V₂ _ _ _

/-- Vertical composition of 2-commutative squares -/
@[simps!, instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant53c7674339d7b9d4b69ff78f4c67951f449a4cbf8cd409a736e4123cae072bf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variant53c7674339d7b9d4b69ff78f4c67951f449a4cbf8cd409a736e4123cae072bf2.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90836e967a824d66086d227c8b30f2811bd4cdca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
