# lift₂NatTrans_app_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bbbc41c363eb971130c2cd7b6f899c3b95bb57d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f85a253e381884f28095d2ff38f4a8f86d912573e523e84c64a19ccb2b09476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b16dc22-19b9-e933-b081-46d941bc640e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a62f8a2a-b270-a246-6e07-341f4cdd4e0b",
  "kind": "theorem",
  "lexical_name": "lift₂NatTrans_app_app",
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
  "slug": "lift-nattrans-app-app--6046ba2f214386722d02018d",
  "source": {
    "blob": "7bbbc41c363eb971130c2cd7b6f899c3b95bb57d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant1f85a253e381884f28095d2ff38f4a8f86d912573e523e84c64a19ccb2b09476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6046ba2f214386722d02018dd7e4758acb7592072bb0382e0aaaf1e3d3c5d35c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant1f85a253e381884f28095d2ff38f4a8f86d912573e523e84c64a19ccb2b09476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62f8a2a-b270-a246-6e07-341f4cdd4e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift₂NatTrans_app_app (τ : F₁ ⟶ F₂) (X₁ : C₁) (X₂ : C₂) :
    ((lift₂NatTrans L₁ L₂ W₁ W₂ F₁ F₂ F₁' F₂' τ).app (L₁.obj X₁)).app (L₂.obj X₂) =
      ((Lifting₂.iso L₁ L₂ W₁ W₂ F₁ F₁').hom.app X₁).app X₂ ≫ (τ.app X₁).app X₂ ≫
        ((Lifting₂.iso L₁ L₂ W₁ W₂ F₂ F₂').inv.app X₁).app X₂ := by
  dsimp [lift₂NatTrans, fullyFaithfulUncurry, Equivalence.fullyFaithfulFunctor]
  simp only [comp_id, id_comp]
  exact liftNatTrans_app _ _ _ _ (uncurry.obj F₁') (uncurry.obj F₂') (uncurry.map τ) ⟨X₁, X₂⟩

variable {F₁' F₂'} in
include W₁ W₂ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant1f85a253e381884f28095d2ff38f4a8f86d912573e523e84c64a19ccb2b09476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant1f85a253e381884f28095d2ff38f4a8f86d912573e523e84c64a19ccb2b09476.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bbbc41c363eb971130c2cd7b6f899c3b95bb57d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
