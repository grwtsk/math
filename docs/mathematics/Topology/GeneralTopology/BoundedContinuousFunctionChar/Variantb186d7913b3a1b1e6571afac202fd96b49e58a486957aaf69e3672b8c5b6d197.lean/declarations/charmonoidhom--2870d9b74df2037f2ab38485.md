# charMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07773a5724b13c6718bb48df99c6fabd5827f2c2d3788ce82e00ede3e63d830e",
  "kind": "def",
  "lexical_name": "charMonoidHom",
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
  "slug": "charmonoidhom--2870d9b74df2037f2ab38485",
  "source": {
    "blob": "a256b08941600c9d1c71e3f6467b34cbd7d9b49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2870d9b74df2037f2ab38485c9f04665a50dfeffd4ff00aa9419d628baba4b0a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07773a5724b13c6718bb48df99c6fabd5827f2c2d3788ce82e00ede3e63d830e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def charMonoidHom (he : Continuous e) (hL : Continuous fun p : V × W ↦ L p.1 p.2) :
    Multiplicative W →* (V →ᵇ ℂ) where
  toFun w := char he hL w.toAdd
  map_one' := char_zero_eq_one
  map_mul' := char_add_eq_mul (he := he) (hL := hL)

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a256b08941600c9d1c71e3f6467b34cbd7d9b49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
