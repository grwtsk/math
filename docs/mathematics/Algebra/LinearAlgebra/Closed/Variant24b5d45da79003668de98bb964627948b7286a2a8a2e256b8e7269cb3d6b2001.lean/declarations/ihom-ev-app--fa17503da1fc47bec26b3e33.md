# ihom_ev_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddcce4f281924e087eefb98ab89d0d7b6e680278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e7f85df-3aec-47c8-e739-03d1aca519f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54f9f099-3a54-d976-5f26-d9fb00e839fd",
  "kind": "theorem",
  "lexical_name": "ihom_ev_app",
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
  "slug": "ihom-ev-app--fa17503da1fc47bec26b3e33",
  "source": {
    "blob": "ddcce4f281924e087eefb98ab89d0d7b6e680278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa17503da1fc47bec26b3e3347dcab252f71c2f4b3365e159001385bdd8628b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54f9f099-3a54-d976-5f26-d9fb00e839fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ihom_ev_app (M N : ModuleCat.{u} R) :
    (ihom.ev M).app N = ModuleCat.ofHom (TensorProduct.uncurry R M ((ihom M).obj N) N
      (LinearMap.lcomp _ _ homLinearEquiv.toLinearMap ∘ₗ LinearMap.id.flip)) := by
  rw [← MonoidalClosed.uncurry_id_eq_ev]
  ext : 1
  apply TensorProduct.ext'
  apply monoidalClosed_uncurry

/-- Describes the unit of the adjunction `M ⊗ - ⊣ Hom(M, -)`. Given an `R`-module `N` this should
define a map `N ⟶ Hom(M, M ⊗ N)`, which is given by flipping the arguments in the natural
`R`-bilinear map `M ⟶ N ⟶ M ⊗ N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Closed/Variant24b5d45da79003668de98bb964627948b7286a2a8a2e256b8e7269cb3d6b2001.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcce4f281924e087eefb98ab89d0d7b6e680278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
