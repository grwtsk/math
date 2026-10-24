# equalizerCondition_precomp_of_preservesPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "599e7f956e2fd53c62f9090241f48c83fdbea07f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1ed87ce-7962-d752-7e43-e48f3be94e48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ead966a-588f-7732-ca72-1690f681daf5",
  "kind": "theorem",
  "lexical_name": "equalizerCondition_precomp_of_preservesPullback",
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
  "slug": "equalizercondition-precomp-of-preservespullback--b3e34befa8c1b6d4de7dd0da",
  "source": {
    "blob": "599e7f956e2fd53c62f9090241f48c83fdbea07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3e34befa8c1b6d4de7dd0da21f1b748d8b706df2be2b6832f671343ae9d6e46",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ead966a-588f-7732-ca72-1690f681daf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equalizerCondition_precomp_of_preservesPullback (P : Cᵒᵖ ⥤ D) (F : E ⥤ C)
    [∀ {X B} (π : X ⟶ B) [EffectiveEpi π], PreservesLimit (cospan π π) F]
    [F.PreservesEffectiveEpis] (hP : EqualizerCondition P) : EqualizerCondition (F.op ⋙ P) := by
  intro X B π _ c hc
  have h : P.map (F.map π).op = (F.op ⋙ P).map π.op := by simp
  refine ⟨(IsLimit.equivIsoLimit (ForkOfι.ext ?_ _ h)) ?_⟩
  · simp only [Functor.comp_map, op_map, Quiver.Hom.unop_op, ← map_comp, ← op_comp, c.condition]
  · refine (hP (F.map π) (PullbackCone.mk (F.map c.fst) (F.map c.snd) ?_) ?_).some
    · simp only [← map_comp, c.condition]
    · exact (isLimitMapConePullbackConeEquiv F c.condition)
        (isLimitOfPreserves F (hc.ofIsoLimit (PullbackCone.ext (Iso.refl _) (by simp) (by simp))))

/-- The canonical map to the explicit equalizer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599e7f956e2fd53c62f9090241f48c83fdbea07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
