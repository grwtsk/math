# isSheaf_skyscraperPresheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:259fcbb2-3905-7a3f-0c96-90dd67a0c5a3",
  "kind": "lemma",
  "lexical_name": "isSheaf_skyscraperPresheaf",
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
  "slug": "issheaf-skyscraperpresheaf--4f0625c048039a9a4d8099cd",
  "source": {
    "blob": "c99739a74a56f4ccab0656a34b098800a84da55b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f0625c048039a9a4d8099cd11404bbc44d350407e5b8ec224434bee44542256",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:259fcbb2-3905-7a3f-0c96-90dd67a0c5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheaf_skyscraperPresheaf (M : A) :
    Presheaf.IsSheaf J (Φ.skyscraperPresheaf M) := by
  rw [Presheaf.isSheaf_iff_isLimit]
  intro X R hR
  exact ⟨{
    lift s := (isSheaf_skyscraperPresheaf_aux R hR s).choose
    fac s j := by
      dsimp
      ext y
      simpa using! (isSheaf_skyscraperPresheaf_aux R hR s).choose_spec _ y
    uniq s m hm := by
      dsimp at hm ⊢
      ext x
      obtain ⟨Y, g, hg, y, rfl⟩ := Φ.jointly_surjective _ hR x
      simpa [← hm (op (Presieve.categoryMk _ _ hg))] using!
        ((isSheaf_skyscraperPresheaf_aux R hR s).choose_spec (Presieve.categoryMk _ _ hg) y).symm }⟩

/-- Given a point `Φ` of a site `(C, J)`, this is the skyscraper sheaf functor
`A ⥤ Sheaf J A`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skyscraper/Variantba6e98b66a68670b4bfbb509fb1a0f7d5c032c2017a35ab8f2a5f8a51f4b2872.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99739a74a56f4ccab0656a34b098800a84da55b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
