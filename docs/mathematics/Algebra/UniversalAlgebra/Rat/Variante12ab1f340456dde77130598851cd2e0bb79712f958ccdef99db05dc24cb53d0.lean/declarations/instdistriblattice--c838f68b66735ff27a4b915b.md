# instDistribLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32e6abf30ba876136839c81765694e7243a24587938f586b7bc8759873f428a0",
  "kind": "instance",
  "lexical_name": "instDistribLattice",
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
  "slug": "instdistriblattice--c838f68b66735ff27a4b915b",
  "source": {
    "blob": "c647672047ede92ef0df4df00fb808688d2d0ce4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 167,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c838f68b66735ff27a4b915b2615f7cd81decaa6f1ad1cc6cc46d284eaf2bf3b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32e6abf30ba876136839c81765694e7243a24587938f586b7bc8759873f428a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDistribLattice : DistribLattice ℚ := inferInstance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Rat/Variante12ab1f340456dde77130598851cd2e0bb79712f958ccdef99db05dc24cb53d0.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c647672047ede92ef0df4df00fb808688d2d0ce4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
