# isColimitEvalMapCoconeCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:373ee7e75e718b48d86b34faee99c7d201636f46f40461f32a70279461a6f762",
  "kind": "def",
  "lexical_name": "isColimitEvalMapCoconeCofan",
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
  "slug": "iscolimitevalmapcoconecofan--4cb96af6d7de214712c460ab",
  "source": {
    "blob": "008c9060f2ab72704ddf82dc74ba65f60000900d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 391,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4cb96af6d7de214712c460ab9fc74d6caf7e881cb5e991d209efe6cf4c95de48",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:373ee7e75e718b48d86b34faee99c7d201636f46f40461f32a70279461a6f762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitEvalMapCoconeCofan : IsColimit (((eval.{w} C A).obj F).mapCocone (cofan.{w} J f)) where
  desc s := Sigma.desc fun i ↦ Sigma.ι (F.obj ∘ (f i.1).obj) i.2 ≫ s.ι.app ⟨i.1⟩
  fac s i := Sigma.hom_ext _ _ fun i ↦ by simp [cofan, Function.comp_def]
  uniq s m h := Sigma.hom_ext _ _ fun ⟨i₁, i₂⟩ ↦ by simp [← h, cofan, Function.comp_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7ff339dcf88d28511382ed5f4a2bf66ecfca667bb45e4feae32d2dc55bab002c.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008c9060f2ab72704ddf82dc74ba65f60000900d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
