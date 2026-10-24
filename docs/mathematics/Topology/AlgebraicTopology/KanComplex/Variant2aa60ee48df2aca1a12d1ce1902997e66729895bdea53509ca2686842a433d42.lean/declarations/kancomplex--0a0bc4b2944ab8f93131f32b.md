# KanComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:137bb91bd098e578dbd17d4b43d1c1d84b176be1918dc5e3290a216884505f03",
  "kind": "abbrev",
  "lexical_name": "KanComplex",
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
  "slug": "kancomplex--0a0bc4b2944ab8f93131f32b",
  "source": {
    "blob": "89a10b3b309149d0cdf98b104022c5caf706a4a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant2aa60ee48df2aca1a12d1ce1902997e66729895bdea53509ca2686842a433d42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a0bc4b2944ab8f93131f32b62d5d494eea68bce86aeef9cbad2d651291fbd6f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/KanComplex/Variant2aa60ee48df2aca1a12d1ce1902997e66729895bdea53509ca2686842a433d42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:137bb91bd098e578dbd17d4b43d1c1d84b176be1918dc5e3290a216884505f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev KanComplex (S : SSet.{u}) : Prop := HomotopicalAlgebra.IsFibrant S

/-- A Kan complex `S` satisfies the following horn-filling condition:
for every nonzero `n : ℕ` and `0 ≤ i ≤ n`,
every map of simplicial sets `σ₀ : Λ[n, i] → S` can be extended to a map `σ : Δ[n] → S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/KanComplex/Variant2aa60ee48df2aca1a12d1ce1902997e66729895bdea53509ca2686842a433d42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/KanComplex/Variant2aa60ee48df2aca1a12d1ce1902997e66729895bdea53509ca2686842a433d42.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a10b3b309149d0cdf98b104022c5caf706a4a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
