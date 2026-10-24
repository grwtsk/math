# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54f2e1df408ff23f541396ad1d8f5d31dfbabd69e598237b6d6f58c77cc5a7c0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--1cfecd024116759f4bd02f0b",
  "source": {
    "blob": "63115add87900e6942226c45ceb4c2f7e924f47b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cfecd024116759f4bd02f0bd8fe631596133e44c62f63005cb99aebc33da30f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54f2e1df408ff23f541396ad1d8f5d31dfbabd69e598237b6d6f58c77cc5a7c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : J ⥤ Cat.{v, v}) : Category (limit (F ⋙ Cat.objects)) where
  Hom X Y := limit (homDiagram X Y)
  id X := Types.Limit.mk.{v, v} (homDiagram X X) (fun _ => 𝟙 _) fun j j' f => by simp
  comp {X Y Z} f g :=
    Types.Limit.mk.{v, v} (homDiagram X Z)
      (fun j => limit.π (homDiagram X Y) j f ≫ limit.π (homDiagram Y Z) j g) fun j j' h => by
      simp [← congr_fun (limit.w (homDiagram X Y) h) f,
        ← congr_fun (limit.w (homDiagram Y Z) h) g]
  id_comp _ := by
    apply Types.limit_ext.{v, v}
    simp
  comp_id _ := by
    apply Types.limit_ext.{v, v}
    simp

/-- Auxiliary definition: the limit category. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limit/Variant73b171773bcc51166a253685e17682f93fa576625e3ffcfd64d200cbb890b512.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63115add87900e6942226c45ceb4c2f7e924f47b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
