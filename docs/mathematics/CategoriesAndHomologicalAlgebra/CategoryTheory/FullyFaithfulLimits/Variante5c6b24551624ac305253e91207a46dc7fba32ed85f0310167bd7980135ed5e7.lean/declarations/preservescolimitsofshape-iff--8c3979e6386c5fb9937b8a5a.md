# preservesColimitsOfShape_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa1dbd06e3e89a08dcd0bf7a927a7cfcf327c887",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03a9823b-15bb-f862-32de-5f21dbfbf401",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6bac28a-04b1-fc8b-2189-2a9a6bf41af1",
  "kind": "lemma",
  "lexical_name": "preservesColimitsOfShape_iff",
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
  "slug": "preservescolimitsofshape-iff--8c3979e6386c5fb9937b8a5a",
  "source": {
    "blob": "aa1dbd06e3e89a08dcd0bf7a927a7cfcf327c887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithfulLimits/Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c3979e6386c5fb9937b8a5a79567f1ee37b6f63af4478e73017fc21408271b4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithfulLimits/Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6bac28a-04b1-fc8b-2189-2a9a6bf41af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimitsOfShape_iff (J : Type u) [Category.{v} J]
    [HasColimitsOfShape J C] [G.Full] [G.Faithful] :
    PreservesColimitsOfShape J H ↔ PreservesColimitsOfShape J (F ⋙ H) := by
  have := adj.isLeftAdjoint
  refine ⟨fun _ ↦ inferInstance, fun _ ↦ ⟨fun {K} ↦ ?_⟩⟩
  let iso : (K ⋙ G) ⋙ F ≅ K :=
    Functor.associator _ _ _ ≪≫ Functor.isoWhiskerLeft _ (asIso adj.counit) ≪≫ K.rightUnitor
  refine preservesColimit_of_preserves_colimit_cocone
    ((IsColimit.precomposeInvEquiv iso _).symm
      (isColimitOfPreserves F (colimit.isColimit (K ⋙ G)))) ?_
  exact IsColimit.ofIsoColimit
    ((IsColimit.precomposeInvEquiv
      ((Functor.associator _ _ _).symm ≪≫ Functor.isoWhiskerRight iso H) _).symm
        (isColimitOfPreserves (F ⋙ H) (colimit.isColimit (K ⋙ G))))
          (Cocone.ext (Iso.refl _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithfulLimits/Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithfulLimits/Variante5c6b24551624ac305253e91207a46dc7fba32ed85f0310167bd7980135ed5e7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa1dbd06e3e89a08dcd0bf7a927a7cfcf327c887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
