# colimit_rep_eq_of_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5601575c8364b834a1c130344f4d446baad85936",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60efb66b-c042-0439-cb31-5fd135f330fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba273542-9d30-02e2-5a25-8574388a32e6",
  "kind": "theorem",
  "lexical_name": "colimit_rep_eq_of_exists",
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
  "slug": "colimit-rep-eq-of-exists--7fdc951d3d1c7323b30ccc3e",
  "source": {
    "blob": "5601575c8364b834a1c130344f4d446baad85936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fdc951d3d1c7323b30ccc3ed7f6993b62cd16030a5be0cd1f6c397e8c742ab2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba273542-9d30-02e2-5a25-8574388a32e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit_rep_eq_of_exists [HasColimit F] {i j : J} (x : ToType (F.obj i))
    (y : ToType (F.obj j))
    (h : ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f x = F.map g y) :
    colimit.ι F i x = colimit.ι F j y :=
  Concrete.isColimit_rep_eq_of_exists F x y h

end

section FilteredColimits

variable {C : Type u} [Category.{v} C] {FC : C → C → Type*} {CC : C → Type (max t w)}
variable [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{max t w} C FC]
variable {J : Type w} [Category.{r} J] (F : J ⥤ C) [PreservesColimit F (forget C)] [IsFiltered J]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5601575c8364b834a1c130344f4d446baad85936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
