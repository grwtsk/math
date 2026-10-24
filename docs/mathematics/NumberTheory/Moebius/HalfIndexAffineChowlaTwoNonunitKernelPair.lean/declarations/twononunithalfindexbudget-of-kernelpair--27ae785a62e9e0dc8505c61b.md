# twoNonunitHalfIndexBudget_of_kernelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fec40dc-5bdf-dabd-febf-0b178d593a1b",
  "kind": "theorem",
  "lexical_name": "twoNonunitHalfIndexBudget_of_kernelPair",
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
  "slug": "twononunithalfindexbudget-of-kernelpair--27ae785a62e9e0dc8505c61b",
  "source": {
    "blob": "a887099c7d7598b5ec0a64aa555b7651faf0eaae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 373,
    "path": "GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ae785a62e9e0dc8505c61be674473743dadf9065ea70a362396c69b6e3a1c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fec40dc-5bdf-dabd-febf-0b178d593a1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoNonunitHalfIndexBudget_of_kernelPair
    (hPair : DyadicNaturalScaleTwoNonunitKernelPairBudget) :
    DyadicNaturalScaleTwoNonunitHalfIndexBudget := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hPair δ hδ
  refine ⟨C, hC, ?_⟩
  intro j b hb
  exact
    (twoNonunitHalfIndexEndpointMajorant_le_kernelPair b).trans
      (hscale j b hb)

/-- Downstream composition with the independent pointwise-Mertens zero mode
and the two-unit branch. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitKernelPair.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a887099c7d7598b5ec0a64aa555b7651faf0eaae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
