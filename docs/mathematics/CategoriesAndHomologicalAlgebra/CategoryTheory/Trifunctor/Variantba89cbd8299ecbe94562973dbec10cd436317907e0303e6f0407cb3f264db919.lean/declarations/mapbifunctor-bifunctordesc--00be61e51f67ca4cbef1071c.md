# ι_mapBifunctor₁₂BifunctorDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93418a23-e764-24f7-ad09-adcc95ae214c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bb637862-830f-2eff-f324-ad6ed49cf619",
  "kind": "lemma",
  "lexical_name": "ι_mapBifunctor₁₂BifunctorDesc",
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
  "slug": "mapbifunctor-bifunctordesc--00be61e51f67ca4cbef1071c",
  "source": {
    "blob": "0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 416,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00be61e51f67ca4cbef1071cb98d6e41eede83d5decaf9170ed558b46fd2f482",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb637862-830f-2eff-f324-ad6ed49cf619`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_mapBifunctor₁₂BifunctorDesc
    (i₁ : I₁) (i₂ : I₂) (i₃ : I₃) (h : r ⟨i₁, i₂, i₃⟩ = j) :
    ιMapBifunctor₁₂BifunctorMapObj F₁₂ G ρ₁₂ X₁ X₂ X₃ i₁ i₂ i₃ j h ≫
      mapBifunctor₁₂BifunctorDesc f = f i₁ i₂ i₃ h :=
  Cofan.IsColimit.fac
    (isColimitCofan₃MapBifunctor₁₂BifunctorMapObj F₁₂ G ρ₁₂ X₁ X₂ X₃ j) _ ⟨_, h⟩

end

end

section

variable (F : C₁ ⥤ C₂₃ ⥤ C₄) (G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃)
  {I₁ I₂ I₃ J : Type*} (r : I₁ × I₂ × I₃ → J)

/-- Given a map `r : I₁ × I₂ × I₃ → J`, a `BifunctorComp₂₃IndexData r` consists of the data
of a type `I₂₃`, maps `p : I₂ × I₃ → I₂₃` and `q : I₁ × I₂₃ → J`, such that `r` is obtained
by composition of `p` and `q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantba89cbd8299ecbe94562973dbec10cd436317907e0303e6f0407cb3f264db919.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0504a1fb1fcf1a3508e54bde8e5b5d6ba04628ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
