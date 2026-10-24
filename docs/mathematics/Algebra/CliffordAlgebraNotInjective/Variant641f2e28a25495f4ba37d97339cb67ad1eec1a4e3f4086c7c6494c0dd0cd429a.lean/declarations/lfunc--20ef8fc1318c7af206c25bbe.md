# lFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fd7448c41aa8323a807c2f330ac7994e8ee71a3d6aa17d771d443ac16a1e377",
  "kind": "def",
  "lexical_name": "lFunc",
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
  "slug": "lfunc--20ef8fc1318c7af206c25bbe",
  "source": {
    "blob": "4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 149,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20ef8fc1318c7af206c25bbeb2d45b4680d4700fd6b1c72deca93815457a7b01",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fd7448c41aa8323a807c2f330ac7994e8ee71a3d6aa17d771d443ac16a1e377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lFunc : (Fin 3 → K) →ₗ[K] K :=
  letI proj : Fin 3 → (Fin 3 → K) →ₗ[K] K := LinearMap.proj
  α • proj 0 + β • proj 1 + γ • proj 2

/-- The quotient of `K^3` by the specified relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant641f2e28a25495f4ba37d97339cb67ad1eec1a4e3f4086c7c6494c0dd0cd429a.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4869e97aa7dc4c2c7c9a9d2f169e1166cfd281e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
