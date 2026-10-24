# isCoseparating_iff_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 267,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a92ebebd-bcf3-0acb-0417-09e88a30123d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a64012af-7e0d-9a0e-31b3-77d9789ea0d9",
  "kind": "theorem",
  "lexical_name": "isCoseparating_iff_mono",
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
  "slug": "iscoseparating-iff-mono--b9a8216b8ab40f01b79e3284",
  "source": {
    "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9a8216b8ab40f01b79e3284847136cf8d4a4d5eda25880b3fbed10566f86543",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a64012af-7e0d-9a0e-31b3-77d9789ea0d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCoseparating_iff_mono (𝒢 : Set C)
    [∀ A : C, HasProduct fun f : ΣG : 𝒢, A ⟶ (G : C) => (f.1 : C)] :
    IsCoseparating 𝒢 ↔ ∀ A : C, Mono (Pi.lift (@Sigma.snd 𝒢 fun G => A ⟶ (G : C))) := by
  refine' ⟨fun h A => ⟨fun u v huv => h _ _ fun G hG f => _⟩, fun h X Y f g hh => _⟩
  · simpa using huv =≫ Pi.π (fun f : ΣG : 𝒢, A ⟶ (G : C) => (f.1 : C)) ⟨⟨G, hG⟩, f⟩
  · haveI := h Y
    refine' (cancel_mono (Pi.lift (@Sigma.snd 𝒢 fun G => Y ⟶ (G : C)))).1 (limit.hom_ext fun j => _)
    simpa using hh j.as.1.1 j.as.1.2 j.as.2
#align category_theory.is_coseparating_iff_mono CategoryTheory.isCoseparating_iff_mono

/-- An ingredient of the proof of the Special Adjoint Functor Theorem: a complete well-powered
    category with a small coseparating set has an initial object.

    In fact, it follows from the Special Adjoint Functor Theorem that `C` is already cocomplete,
    see `hasColimits_of_hasLimits_of_isCoseparating`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cc9d0c11c5f75f12a5e615098d2941aae08780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
