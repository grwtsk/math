# IsNegInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34db45c57a4e66c7026d1ab9c6530ca507a33a2e2f104eb38b2b07c5348653f7",
  "kind": "class",
  "lexical_name": "IsNegInvariant",
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
  "slug": "isneginvariant--e8a1e617ec162a24ba1b7f2c",
  "source": {
    "blob": "6b47bb8ce072504dfaf9080749c99b525d35c91b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 309,
    "path": "GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8a1e617ec162a24ba1b7f2cec13e7a0b8286ab3f8e881e5e813e285e9a43475",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34db45c57a4e66c7026d1ab9c6530ca507a33a2e2f104eb38b2b07c5348653f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsNegInvariant [Neg G] (μ : Measure G) : Prop where
  neg_eq_self : μ.neg = μ

/-- A measure is invariant under inversion if `μ⁻¹ = μ`. Equivalently, this means that for all
measurable `A` we have `μ (A⁻¹) = μ A`, where `A⁻¹` is the pointwise inverse of `A`. -/
@[to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Measure/Variantcba62e69e14aafd9e79c41c3209cc75828e5bd7e3bcf46e5af7d8281e43696bd.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b47bb8ce072504dfaf9080749c99b525d35c91b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
