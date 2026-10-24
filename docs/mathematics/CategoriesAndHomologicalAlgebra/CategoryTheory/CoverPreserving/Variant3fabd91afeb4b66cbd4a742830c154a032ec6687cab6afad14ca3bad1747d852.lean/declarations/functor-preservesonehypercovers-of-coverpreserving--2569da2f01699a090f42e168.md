# Functor.PreservesOneHypercovers.of_coverPreserving

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
      "line": 200,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:299f5ab6-83af-9475-b623-7f0bbe349067",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6b9ff0f-e23b-e664-0a73-aa562c3d5f5c",
  "kind": "lemma",
  "lexical_name": "Functor.PreservesOneHypercovers.of_coverPreserving",
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
  "slug": "functor-preservesonehypercovers-of-coverpreserving--2569da2f01699a090f42e168",
  "source": {
    "blob": "291509199c663c715cca14a415af1a3b9770260e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2569da2f01699a090f42e168a751678ead5f3c65a95d6a41eb0878188c686ce6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b9ff0f-e23b-e664-0a73-aa562c3d5f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.PreservesOneHypercovers.of_coverPreserving [HasPullbacks C]
    [PreservesLimitsOfShape WalkingCospan F] (H : CoverPreserving J K F) :
    Functor.PreservesOneHypercovers.{w} F J K := by
  refine fun {U} E ↦ ⟨?_, fun i₁ i₂ W p₁ p₂ h ↦ ?_⟩
  · simp [PreZeroHypercover.sieve₀_map, H.cover_preserve E.mem₀]
  · let P : C := pullback (E.f i₁) (E.f i₂)
    have : HasPullback ((E.toPreOneHypercover.map F).f i₁) ((E.toPreOneHypercover.map F).f i₂) :=
      hasPullback_of_preservesPullback F (E.f i₁) (E.f i₂)
    have := H.cover_preserve (E.mem₁ i₁ i₂ (pullback.fst (E.f i₁) (E.f i₂)) _ pullback.condition)
    rw [PreOneHypercover.functorPushforward_sieve₁_of_preservesPullbacks _ _ _
      pullback.condition] at this
    refine K.superset_covering ?_
      (K.pullback_stable (IsPullback.lift (.map _ (.of_hasPullback _ _)) p₁ p₂ h) this)
    simp [PreOneHypercover.pullback_sieve₁]

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant3fabd91afeb4b66cbd4a742830c154a032ec6687cab6afad14ca3bad1747d852.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291509199c663c715cca14a415af1a3b9770260e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
