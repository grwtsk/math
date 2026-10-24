# RepresentationEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e65e167f963316e1c4e647cc4538c2536ec7c4780359a5f6cbe270bb830366c",
  "kind": "structure",
  "lexical_name": "RepresentationEquiv",
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
  "slug": "representationequiv--90d3e54c9cbb8e79856c0e47",
  "source": {
    "blob": "b5ea8ba82d422a3206e9ea218f9f2ef60aa29c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Construction/Variantbb793232fd3dedbd8977e91221dd01b55268651c23eb632be2fb0dd440b5c765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90d3e54c9cbb8e79856c0e4719c00982a192554a6979bc1a2346978a979e2f02",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Construction/Variantbb793232fd3dedbd8977e91221dd01b55268651c23eb632be2fb0dd440b5c765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e65e167f963316e1c4e647cc4538c2536ec7c4780359a5f6cbe270bb830366c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RepresentationEquiv
    {Representation : Type u}
    (ρ₀ ρ₁ : Representation) where
  eq : ρ₀ = ρ₁

/-- Every representation selects an ordinary, still-indexed comparison. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Construction/Variantbb793232fd3dedbd8977e91221dd01b55268651c23eb632be2fb0dd440b5c765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Construction/Variantbb793232fd3dedbd8977e91221dd01b55268651c23eb632be2fb0dd440b5c765.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5ea8ba82d422a3206e9ea218f9f2ef60aa29c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
