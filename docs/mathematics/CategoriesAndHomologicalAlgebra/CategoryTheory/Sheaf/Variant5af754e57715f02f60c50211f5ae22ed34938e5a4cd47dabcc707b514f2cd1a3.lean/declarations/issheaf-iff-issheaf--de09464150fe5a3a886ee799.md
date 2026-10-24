# isSheaf_iff_isSheaf'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 666,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f0abbd6-18d1-2f56-2f21-1b168b0b1307",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bad0279f-a9c9-15cd-21ce-9dd76ea23664",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheaf'",
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
  "slug": "issheaf-iff-issheaf--de09464150fe5a3a886ee799",
  "source": {
    "blob": "0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 666,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de09464150fe5a3a886ee799531241f5ce33fbc3abc97e63e8f8f7322dc5cb8e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bad0279f-a9c9-15cd-21ce-9dd76ea23664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 666–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheaf' : IsSheaf J P' ↔ IsSheaf' J P' := by
  constructor
  · intro h U R hR
    refine ⟨?_⟩
    apply coyonedaJointlyReflectsLimits
    intro X
    have q : Presieve.IsSheafFor (P' ⋙ coyoneda.obj X) _ := h X.unop _ hR
    rw [← Presieve.isSheafFor_iff_generate] at q
    rw [Equalizer.Presieve.sheaf_condition] at q
    replace q := Classical.choice q
    apply (isSheafForIsSheafFor' _ _ _ _).symm q
  · intro h U X S hS
    rw [Equalizer.Presieve.sheaf_condition]
    refine ⟨?_⟩
    refine isSheafForIsSheafFor' _ _ _ _ ?_
    letI := preservesSmallestLimits_of_preservesLimits (coyoneda.obj (op U))
    apply isLimitOfPreserves
    apply Classical.choice (h _ S.arrows _)
    simpa

end

section Concrete

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean#L666).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
