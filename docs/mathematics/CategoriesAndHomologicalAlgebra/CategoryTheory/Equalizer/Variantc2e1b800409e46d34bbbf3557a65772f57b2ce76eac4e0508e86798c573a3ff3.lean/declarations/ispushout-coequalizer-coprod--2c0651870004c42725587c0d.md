# isPushout_coequalizer_coprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e51c89581bfb967b866754f5e87b8b996f7f228d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a60e0aca-e712-5991-cb60-2cf72ea8a208",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b70cbf76-3864-f768-30f2-506a40f3c73c",
  "kind": "lemma",
  "lexical_name": "isPushout_coequalizer_coprod",
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
  "slug": "ispushout-coequalizer-coprod--2c0651870004c42725587c0d",
  "source": {
    "blob": "e51c89581bfb967b866754f5e87b8b996f7f228d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 40,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0651870004c42725587c0d6c918c7c390a99d893362c2b3e6807352d0b835f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70cbf76-3864-f768-30f2-506a40f3c73c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPushout_coequalizer_coprod [HasCoequalizer f g] [HasBinaryCoproduct X X] :
    IsPushout (coprod.desc f g) (coprod.desc (𝟙 _) (𝟙 _))
      (coequalizer.π f g) (f ≫ coequalizer.π f g) := by
  refine ⟨⟨by ext <;> simp [coequalizer.condition f g]⟩, ⟨PushoutCocone.IsColimit.mk _ ?_ ?_ ?_ ?_⟩⟩
  · refine fun s ↦ coequalizer.desc s.inl ?_
    have H₁ : f ≫ s.inl = s.inr := by simpa using congr(coprod.inl ≫ $s.condition)
    have H₂ : g ≫ s.inl = s.inr := by simpa using congr(coprod.inr ≫ $s.condition)
    exact H₁.trans H₂.symm
  · exact fun s ↦ by simp
  · exact fun s ↦ by simpa using congr(coprod.inl ≫ $s.condition)
  · exact fun s m hm _ ↦ by ext; simp [*]

section

variable [HasEqualizers C] [HasPullbacks C] {X Y S T : C}

set_option backward.isDefEq.respectTransparency false in
/-- The natural isomorphism `eq(f ×[S] T, g ×[S] T) ≅ eq(f, g) ×[S] T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantc2e1b800409e46d34bbbf3557a65772f57b2ce76eac4e0508e86798c573a3ff3.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51c89581bfb967b866754f5e87b8b996f7f228d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
