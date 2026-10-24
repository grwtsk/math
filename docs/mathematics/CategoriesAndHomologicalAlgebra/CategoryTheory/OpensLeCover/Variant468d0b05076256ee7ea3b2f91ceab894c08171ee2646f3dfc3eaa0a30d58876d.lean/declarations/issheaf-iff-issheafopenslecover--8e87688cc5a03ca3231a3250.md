# isSheaf_iff_isSheafOpensLeCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "459205ec8eae56c93f84743db0f6fa6bb4ede1af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e2684a7-3bb3-0f88-a976-80b7c2d83502",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a0c8f9d-5c1c-e1ba-0c6e-d0710a68293d",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheafOpensLeCover",
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
  "slug": "issheaf-iff-issheafopenslecover--8e87688cc5a03ca3231a3250",
  "source": {
    "blob": "459205ec8eae56c93f84743db0f6fa6bb4ede1af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e87688cc5a03ca3231a32502c3333613605589f99a5cfa7256c165c6845c58a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a0c8f9d-5c1c-e1ba-0c6e-d0710a68293d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheafOpensLeCover : F.IsSheaf ↔ F.IsSheafOpensLeCover := by
  refine ⟨fun h _ ↦ h.isSheafOpensLeCover,
    fun h ↦ (Presheaf.isSheaf_iff_isLimit _ _).mpr fun Y S ↦ ?_⟩
  rw [← Sieve.generate_sieve S]
  intro hS
  rw [← (isLimitOpensLeEquivGenerate₂ F S.1 hS).nonempty_congr]
  apply h

end

end Presheaf

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpensLeCover/Variant468d0b05076256ee7ea3b2f91ceab894c08171ee2646f3dfc3eaa0a30d58876d.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459205ec8eae56c93f84743db0f6fa6bb4ede1af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
