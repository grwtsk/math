# toPresheafFiber_jointly_surjective₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11fb156c8413fa9532ac688020455afc19ae162d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c30724aa-a987-ff9b-c23b-450c6da699ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bb20012-3173-e164-adbd-61979a78c847",
  "kind": "lemma",
  "lexical_name": "toPresheafFiber_jointly_surjective₂",
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
  "slug": "topresheaffiber-jointly-surjective--6640fd2d2f9bbaf9337e4855",
  "source": {
    "blob": "11fb156c8413fa9532ac688020455afc19ae162d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6640fd2d2f9bbaf9337e4855d83aabb789e829336322a5ccbac36f05f1f28ef1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bb20012-3173-e164-adbd-61979a78c847`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPresheafFiber_jointly_surjective₂ (p₁ p₂ : ToType (Φ.presheafFiber.obj P)) :
    ∃ (X : C) (x : Φ.fiber.obj X) (z₁ z₂ : ToType (P.obj (op X))),
      Φ.toPresheafFiber X x P z₁ = p₁ ∧ Φ.toPresheafFiber X x P z₂ = p₂ := by
  obtain ⟨_, z₁, z₂, rfl, rfl⟩ := Types.FilteredColimit.jointly_surjective_of_isColimit₂
    (isColimitOfPreserves (forget A)
      (colimit.isColimit ((Functor.Elements.π Φ.fiber).op ⋙ P))) p₁ p₂
  exact ⟨_, _, z₁, z₂, rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11fb156c8413fa9532ac688020455afc19ae162d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
