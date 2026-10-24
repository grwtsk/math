# ι₁₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fff160aca798001917e4fd7c6a79c9e43811d452abf8e6e871874c4a50ca455b",
  "kind": "abbrev",
  "lexical_name": "ι₁₂",
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
  "slug": "anonymous--8b29ec763fe47bc97e6491c7",
  "source": {
    "blob": "e9acaa429e2253790b6b92d991b07e74ea0d316a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 87,
    "path": "GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b29ec763fe47bc97e6491c7b547385ed59c19d9fb521a39495e3a13e364f13c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fff160aca798001917e4fd7c6a79c9e43811d452abf8e6e871874c4a50ca455b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ι₁₂ : Δ[1] ⟶ Λ[2, 1] := horn.ι.{u} 1 0 (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9acaa429e2253790b6b92d991b07e74ea0d316a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
