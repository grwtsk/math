# locallySmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba3825a5a625d325cb43b789f79a0330ae5fae32978fd51dbf2b30bd0b838395",
  "kind": "instance",
  "lexical_name": "locallySmall",
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
  "slug": "locallysmall--eacc31ba4bef93bc2b371b0c",
  "source": {
    "blob": "f7253a96167993fdf90b22bd9ec35a1f46857b30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eacc31ba4bef93bc2b371b0c1e99ff11c09970f42d7aefe1307a8264e9c96de4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba3825a5a625d325cb43b789f79a0330ae5fae32978fd51dbf2b30bd0b838395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance locallySmall [LocallySmall.{w} C] [Small.{w} ι] :
    LocallySmall.{w} (HomologicalComplex C c) where
  hom_small K L := by
    let emb (f : K ⟶ L) (i : Shrink.{w} ι) := (equivShrink.{w} _) (f.f ((equivShrink _).symm i))
    have hemb : Function.Injective emb := fun f g h ↦ by
      ext i
      obtain ⟨i, rfl⟩ := (equivShrink.{w} _).symm.surjective i
      simpa [emb] using congr_fun h i
    apply small_of_injective hemb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GrothendieckAbelian/Variant8cbc8592d3334929b569e990da824d1ed4b4bbf74814ae41880638008301d30a.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7253a96167993fdf90b22bd9ec35a1f46857b30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
