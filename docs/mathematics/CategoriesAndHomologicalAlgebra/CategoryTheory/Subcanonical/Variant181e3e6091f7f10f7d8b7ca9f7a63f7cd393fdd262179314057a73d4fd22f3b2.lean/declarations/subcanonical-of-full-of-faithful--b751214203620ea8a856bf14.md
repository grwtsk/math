# subcanonical_of_full_of_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8f0e5d2-6ce2-68aa-91df-9ae3e7e0ebe0",
  "kind": "lemma",
  "lexical_name": "subcanonical_of_full_of_faithful",
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
  "slug": "subcanonical-of-full-of-faithful--b751214203620ea8a856bf14",
  "source": {
    "blob": "b269751f4749067faf6e4f7f2d429f95fac7514a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 325,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b751214203620ea8a856bf14fddb89354ece05a1d265415e57c22265b8380112",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8f0e5d2-6ce2-68aa-91df-9ae3e7e0ebe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma subcanonical_of_full_of_faithful [F.Full] [F.Faithful]
    [Functor.IsContinuous F J K] [K.Subcanonical] :
    J.Subcanonical := by
  refine .of_isSheaf_yoneda_obj _ fun Y ↦ ?_
  suffices h : Presieve.IsSheaf J (CategoryTheory.uliftYoneda.{v'}.obj Y) by
    rwa [Presieve.isSheaf_iff_of_nat_equiv]
    · intro
      exact Equiv.ulift.symm
    · intros
      rfl
  rw [← isSheaf_iff_isSheaf_of_type, Presheaf.isSheaf_of_iso_iff
    ((Functor.FullyFaithful.ofFullyFaithful F).compUliftYonedaCompWhiskeringLeft.app Y).symm]
  refine F.op_comp_isSheaf_of_isSheaf J K _ ?_
  rw [isSheaf_iff_isSheaf_of_type]
  apply GrothendieckTopology.Subcanonical.isSheaf_of_isRepresentable

end CategoryTheory.GrothendieckTopology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variant181e3e6091f7f10f7d8b7ca9f7a63f7cd393fdd262179314057a73d4fd22f3b2.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b269751f4749067faf6e4f7f2d429f95fac7514a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
