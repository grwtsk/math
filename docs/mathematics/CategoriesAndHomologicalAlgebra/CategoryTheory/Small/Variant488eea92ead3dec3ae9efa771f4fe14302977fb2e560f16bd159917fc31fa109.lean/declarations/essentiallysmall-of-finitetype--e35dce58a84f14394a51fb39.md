# essentiallySmall_of_finiteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e01a2e7bba8418f616714ff02360cf8ad5a53a8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d484b932-8d5a-3bb3-1480-6a2b78983d7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bc12110-4c04-04b1-8765-468bbb3e61dc",
  "kind": "lemma",
  "lexical_name": "essentiallySmall_of_finiteType",
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
  "slug": "essentiallysmall-of-finitetype--e35dce58a84f14394a51fb39",
  "source": {
    "blob": "e01a2e7bba8418f616714ff02360cf8ad5a53a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e35dce58a84f14394a51fb39c6658fac6b230d88ebc8bdb39900352b41647922",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc12110-4c04-04b1-8765-468bbb3e61dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essentiallySmall_of_finiteType [ObjectProperty.EssentiallySmall.{u} Q]
    (hPQ : ∀ S, P S → ∃ R, Q R ∧ ∃ (f : R ⟶ S), f.hom.FiniteType) :
    ObjectProperty.EssentiallySmall.{u} P := by
  obtain ⟨Q', _, hQ'Q, hQQ'⟩ := ObjectProperty.EssentiallySmall.exists_small_le Q
  let f (S : Σ R : Subtype Q', FGAlgCatSkeleton R) : CommRingCat := ↧S.2.eval.obj
  refine ⟨.ofObj f, inferInstance, fun S hS ↦ ?_⟩
  obtain ⟨R, hR, φ, hφ⟩ := hPQ S hS
  wlog hR' : Q' R generalizing R
  · obtain ⟨R', hR', ⟨e⟩⟩ := hQQ' _ hR
    exact this R' (hQ'Q _ hR') (e.inv ≫ φ)
      (hφ.comp e.symm.commRingCatIsoToRingEquiv.finite.finiteType) hR'
  obtain ⟨T, e, he⟩ := hφ.exists_smallRepr
  exact ⟨_, ⟨⟨_, hR'⟩, T⟩, ⟨RingEquiv.toCommRingCatIso e.symm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Small/Variant488eea92ead3dec3ae9efa771f4fe14302977fb2e560f16bd159917fc31fa109.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01a2e7bba8418f616714ff02360cf8ad5a53a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
