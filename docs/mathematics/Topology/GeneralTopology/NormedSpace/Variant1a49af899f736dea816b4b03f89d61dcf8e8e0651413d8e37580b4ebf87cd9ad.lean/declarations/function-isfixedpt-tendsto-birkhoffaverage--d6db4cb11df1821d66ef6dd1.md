# Function.IsFixedPt.tendsto_birkhoffAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29bce128-f668-7058-ea33-ddf43c2e65d7",
  "kind": "theorem",
  "lexical_name": "Function.IsFixedPt.tendsto_birkhoffAverage",
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
  "slug": "function-isfixedpt-tendsto-birkhoffaverage--d6db4cb11df1821d66ef6dd1",
  "source": {
    "blob": "5776f39296405f9b750ec40e2000aa91a5e19450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6db4cb11df1821d66ef6dd15f8750f5523dc938171a2a2132ca210e02013690",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29bce128-f668-7058-ea33-ddf43c2e65d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.IsFixedPt.tendsto_birkhoffAverage
    (R : Type*) [DivisionSemiring R] [CharZero R]
    [AddCommMonoid E] [TopologicalSpace E] [Module R E]
    {f : α → α} {x : α} (h : f.IsFixedPt x) (g : α → E) :
    Tendsto (birkhoffAverage R f g · x) atTop (𝓝 (g x)) :=
  tendsto_const_nhds.congr' <| (eventually_ne_atTop 0).mono fun _n hn ↦
    (h.birkhoffAverage_eq R g hn).symm

variable [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NormedSpace/Variant1a49af899f736dea816b4b03f89d61dcf8e8e0651413d8e37580b4ebf87cd9ad.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5776f39296405f9b750ec40e2000aa91a5e19450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
