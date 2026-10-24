# tor'SuccOfProjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1736240b91480b1971bec94dd3dfc011233b8f945547e44baa9757b9a2e153a",
  "kind": "def",
  "lexical_name": "tor'SuccOfProjective",
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
  "slug": "tor-succofprojective--df699db9f720920b1b9f065f",
  "source": {
    "blob": "0bf2c3cf85f18341603fe602a28fc4fd079731fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df699db9f720920b1b9f065fd2b0e159e7fd073d328496046797fdd655732b91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1736240b91480b1971bec94dd3dfc011233b8f945547e44baa9757b9a2e153a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tor'SuccOfProjective (X Y : C) [Projective X] (n : ℕ) : ((Tor' C (n + 1)).obj X).obj Y ≅ 0 := by
  -- This unfortunately needs a manual `dsimp`, to avoid a slow unification problem.
  dsimp only [Tor', Functor.flip]
  exact ((tensoringRight C).obj Y).leftDerivedObjProjectiveSucc n X
set_option linter.uppercaseLean3 false in
#align category_theory.Tor'_succ_of_projective CategoryTheory.tor'SuccOfProjective

end CategoryTheory

assert_not_exists Module.abelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantac5696cfaa80bc7afbc53fc33a7a597733a3f97dde6638bd1d11d7c1192a74d1.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf2c3cf85f18341603fe602a28fc4fd079731fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
