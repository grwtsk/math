# Functor.reflects_precoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb16cf91-f04a-e217-0c27-261fa85901f5",
  "kind": "lemma",
  "lexical_name": "Functor.reflects_precoherent",
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
  "slug": "functor-reflects-precoherent--89555412203a76deb6cd7f0d",
  "source": {
    "blob": "a186e7160e6db4827a1756a3a007062bf93bf908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsPrecoherent/Variant6179a85dd19c56a9775b6a80a9af118e129c5574fd642057568f9deae4804f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89555412203a76deb6cd7f0d6477716e3cb3001468065c9b91d00b682264f6b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsPrecoherent/Variant6179a85dd19c56a9775b6a80a9af118e129c5574fd642057568f9deae4804f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb16cf91-f04a-e217-0c27-261fa85901f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.reflects_precoherent : Precoherent C where
  pullback {B₁ B₂} f α _ X₁ π₁ _ := by
    obtain ⟨β, _, Y₂, τ₂, H, i, ι, hh⟩ := Precoherent.pullback (F.map f) _ _
      (fun a ↦ F.map (π₁ a)) inferInstance
    refine ⟨β, inferInstance, _, fun b ↦ F.preimage (F.effectiveEpiOver (Y₂ b) ≫ τ₂ b),
      F.finite_effectiveEpiFamily_of_map _ _ ?_,
        ⟨i, fun b ↦ F.preimage (F.effectiveEpiOver (Y₂ b) ≫ ι b), ?_⟩⟩
    · simp only [Functor.map_preimage]
      infer_instance
    · intro b
      apply F.map_injective
      simp [hh b]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsPrecoherent/Variant6179a85dd19c56a9775b6a80a9af118e129c5574fd642057568f9deae4804f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsPrecoherent/Variant6179a85dd19c56a9775b6a80a9af118e129c5574fd642057568f9deae4804f84.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a186e7160e6db4827a1756a3a007062bf93bf908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
