# isCompact_of_bounded_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e7d935-760e-fde7-6bbb-a5846863c15b",
  "kind": "theorem",
  "lexical_name": "isCompact_of_bounded_of_closed",
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
  "slug": "iscompact-of-bounded-of-closed--fd4084f0a9b43b751c29ab05",
  "source": {
    "blob": "f9ec0f82265b578948182d0f3c97e192fd484d8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd4084f0a9b43b751c29ab052408a6721d1da84182ad4a04ba1cb6fd0f97b1a8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e7d935-760e-fde7-6bbb-a5846863c15b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_of_bounded_of_closed [ProperSpace 𝕜] {s : Set (WeakDual 𝕜 E)}
    (hb : IsBounded s) (hc : IsClosed s) : IsCompact s :=
  DFunLike.coe_injective.isEmbedding_induced.isCompact_iff.mpr <|
    ContinuousLinearMap.isCompact_image_coe_of_bounded_of_closed_image hb <|
      isClosed_image_coe_of_bounded_of_closed hb hc

/-!
### Closed balls
-/

/-- Closed balls in `StrongDual 𝕜 E` pull back to closed sets in `WeakDual 𝕜 E`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8fb5d44d79c852f05e6d7a353f7558a4ea03ecc3a31313a34975299ce49ab17d.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9ec0f82265b578948182d0f3c97e192fd484d8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
