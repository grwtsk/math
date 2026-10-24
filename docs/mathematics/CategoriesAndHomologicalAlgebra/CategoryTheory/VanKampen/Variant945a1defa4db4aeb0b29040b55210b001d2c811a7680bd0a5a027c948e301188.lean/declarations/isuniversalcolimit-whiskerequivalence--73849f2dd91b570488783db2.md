# IsUniversalColimit.whiskerEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6b418f3-bc89-bbd5-0f81-8e3fa748d29d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc1a82ff-6b87-c5d5-61cf-61e789c450a1",
  "kind": "theorem",
  "lexical_name": "IsUniversalColimit.whiskerEquivalence",
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
  "slug": "isuniversalcolimit-whiskerequivalence--73849f2dd91b570488783db2",
  "source": {
    "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73849f2dd91b570488783db21a2319516b8c4b934720f4b6f4d98e0426b134df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc1a82ff-6b87-c5d5-61cf-61e789c450a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUniversalColimit.whiskerEquivalence {K : Type*} [Category K] (e : J ≌ K)
    {F : K ⥤ C} {c : Cocone F} (hc : IsUniversalColimit c) :
    IsUniversalColimit (c.whisker e.functor) := by
  intro F' c' α f e' hα H
  convert hc (c'.whisker e.inverse) (whiskerLeft e.inverse α ≫ (e.invFunIdAssoc F).hom) f ?_
    ((hα.whiskerLeft _).comp (NatTrans.equifibered_of_isIso _)) ?_ using 1
  · exact (IsColimit.whiskerEquivalenceEquiv e.symm).nonempty_congr
  · convert congr_arg (whiskerLeft e.inverse) e'
    ext
    simp
  · intro k
    rw [← Category.comp_id f]
    refine (H (e.inverse.obj k)).paste_vert ?_
    have : IsIso (𝟙 (Cocone.whisker e.functor c).pt) := inferInstance
    exact IsPullback.of_vert_isIso ⟨by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
