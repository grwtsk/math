# mkOfObjOfMapSucc_exists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ef596acb88da3d5fd9dd5d87abf60906ca15029",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 836,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18cc9514-d98b-8e19-6e34-9b8cc8dfaf8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67a5747b-2172-e677-1a1c-3762b54ad7a2",
  "kind": "lemma",
  "lexical_name": "mkOfObjOfMapSucc_exists",
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
  "slug": "mkofobjofmapsucc-exists--12a3e05ec8cf7e1aac923554",
  "source": {
    "blob": "4ef596acb88da3d5fd9dd5d87abf60906ca15029",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 836,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a3e05ec8cf7e1aac923554e5a9f97f57b667985575062e277da6256d98bf80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a5747b-2172-e677-1a1c-3762b54ad7a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mkOfObjOfMapSucc_exists : ∃ (F : ComposableArrows C n) (e : ∀ i, F.obj i ≅ obj i),
    ∀ (i : ℕ) (hi : i < n), mapSucc ⟨i, hi⟩ =
      (e ⟨i, _⟩).inv ≫ F.map' i (i + 1) ≫ (e ⟨i + 1, _⟩).hom := by
  revert obj mapSucc
  induction' n with n hn
  · intro obj _
    exact ⟨mk₀ (obj 0), fun 0 => Iso.refl _, fun i hi => by simp at hi⟩
  · intro obj mapSucc
    obtain ⟨F, e, h⟩ := hn (fun i => obj i.succ) (fun i => mapSucc i.succ)
    refine ⟨F.precomp (mapSucc 0 ≫ (e 0).inv), fun i => match i with
      | 0 => Iso.refl _
      | ⟨i + 1, hi⟩ => e _, fun i hi => ?_⟩
    obtain _ | i := i
    · simp only [← Fin.mk_zero]
      simp
    · exact h i (by valid)

/-- Given `obj : Fin (n + 1) → C` and `mapSucc i : obj i.castSucc ⟶ obj i.succ`
for all `i : Fin n`, this is `F : ComposableArrows C n` such that `F.obj i` is
definitionally equal to `obj i` and such that `F.map' i (i + 1) = mapSucc ⟨i, hi⟩`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ComposableArrows/Variante3995a8992fcce52a2a42cc51c8a5b72ff966a9793b5292d5e8b6adbfb560db9.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ef596acb88da3d5fd9dd5d87abf60906ca15029` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
