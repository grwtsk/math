# tor'SuccOfProjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dfac7e1d216b67effa5c3a66508a929d948b6a9ddfa4aa86df702aee98c562f",
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
  "slug": "tor-succofprojective--64a29ec8917f48e40d54ebf2",
  "source": {
    "blob": "7de1d3d2762a10010ae6bb99944f3e5a3dd8fc29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 88,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64a29ec8917f48e40d54ebf2d104e20bc89c08de401fdcde6896740cf0173868",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dfac7e1d216b67effa5c3a66508a929d948b6a9ddfa4aa86df702aee98c562f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–97.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variant1939736fb949e6393a5c3b293a560222075a4460a8e3f0e18d3bbf405883c15f.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de1d3d2762a10010ae6bb99944f3e5a3dd8fc29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
