# Presieve.FamilyOfElements.Compatible.functorPushforward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "291509199c663c715cca14a415af1a3b9770260e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2ebb6dc-b293-e9b2-305f-ba5bd53abbc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:582b099b-9382-8fbd-6416-f42094be2730",
  "kind": "theorem",
  "lexical_name": "Presieve.FamilyOfElements.Compatible.functorPushforward",
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
  "slug": "presieve-familyofelements-compatible-functorpushforward--27fb1f14193cdee728507941",
  "source": {
    "blob": "291509199c663c715cca14a415af1a3b9770260e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27fb1f14193cdee728507941f30384cfe12a146270d4876f706072d63886b74b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:582b099b-9382-8fbd-6416-f42094be2730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Presieve.FamilyOfElements.Compatible.functorPushforward :
    (x.functorPushforward G).Compatible := by
  rintro Z₁ Z₂ W g₁ g₂ f₁' f₂' H₁ H₂ eq
  unfold FamilyOfElements.functorPushforward
  rcases getFunctorPushforwardStructure H₁ with ⟨X₁, f₁, h₁, hf₁, rfl⟩
  rcases getFunctorPushforwardStructure H₂ with ⟨X₂, f₂, h₂, hf₂, rfl⟩
  suffices ℱ.obj.map (g₁ ≫ h₁).op (x f₁ hf₁) = ℱ.obj.map (g₂ ≫ h₂).op (x f₂ hf₂) by
    simpa using this
  apply hG.compatible ℱ h _ _ hf₁ hf₂
  simpa using eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291509199c663c715cca14a415af1a3b9770260e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
