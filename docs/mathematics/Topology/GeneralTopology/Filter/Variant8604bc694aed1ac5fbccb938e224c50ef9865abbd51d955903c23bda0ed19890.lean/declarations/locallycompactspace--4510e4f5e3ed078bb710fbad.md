# LocallyCompactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76292b94e6f1e48d472d40df255b2ac66ab7571a08d64dd7e0a051401f86a35a",
  "kind": "class",
  "lexical_name": "LocallyCompactSpace",
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
  "slug": "locallycompactspace--4510e4f5e3ed078bb710fbad",
  "source": {
    "blob": "494651cd73b7acc937993f980bfcdeb3bedaaab7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4510e4f5e3ed078bb710fbad5dfc44e753cb058d0f0b73d2576afebae5c1d2fa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76292b94e6f1e48d472d40df255b2ac66ab7571a08d64dd7e0a051401f86a35a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LocallyCompactSpace (X : Type*) [TopologicalSpace X] : Prop where
  /-- In a locally compact space,
    every neighbourhood of every point contains a compact neighbourhood of that same point. -/
  local_compact_nhds : ∀ (x : X), ∀ n ∈ 𝓝 x, ∃ s ∈ 𝓝 x, s ⊆ n ∧ IsCompact s

/-- We say that `X` and `Y` are a locally compact pair of topological spaces,
if for any continuous map `f : X → Y`, a point `x : X`, and a neighbourhood `s ∈ 𝓝 (f x)`,
there exists a compact neighbourhood `K ∈ 𝓝 x` such that `f` maps `K` to `s`.

This is a technical assumption that appears in several theorems,
most notably in `ContinuousMap.continuous_comp'` and `ContinuousMap.continuous_eval`.
It is satisfied in two cases:

- if `X` is a locally compact topological space, for obvious reasons;
- if `X` is a weakly locally compact topological space and `Y` is an R₁ space;
  this fact is a simple generalization of the theorem
  saying that a weakly locally compact R₁ topological space is locally compact.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant8604bc694aed1ac5fbccb938e224c50ef9865abbd51d955903c23bda0ed19890.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494651cd73b7acc937993f980bfcdeb3bedaaab7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
