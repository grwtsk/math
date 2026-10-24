# continuousOn_Icc_attains_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d01693a9-9d79-fe93-0747-51e8eca8bc80",
  "kind": "theorem",
  "lexical_name": "continuousOn_Icc_attains_max",
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
  "slug": "continuouson-icc-attains-max--02023d393b2cfff58fa4fd26",
  "source": {
    "blob": "0f233bdac66ec5679d02b5aad6e589e1ff00c2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Compactness/RealIntervals/Variant225c3280/ContinuousIntervalExtrema.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02023d393b2cfff58fa4fd26fe8718b01620284e9c5c707276dc6bd837a6c9ec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactness/RealIntervals/Variant225c3280/ContinuousIntervalExtrema.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d01693a9-9d79-fe93-0747-51e8eca8bc80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousOn_Icc_attains_max
    {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b)
    (hf : ContinuousOn f (Set.Icc a b)) :
    ∃ x ∈ Set.Icc a b,
      ∀ y ∈ Set.Icc a b, f y ≤ f x := by
  obtain ⟨x, hx, hmax⟩ :=
    (real_Icc_isCompact a b).exists_isMaxOn (Set.nonempty_Icc.mpr hab) hf
  exact ⟨x, hx, isMaxOn_iff.mp hmax⟩

/-- A continuous function on a nonempty closed interval attains its minimum.
Mathlib proof via compactness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Topology/GeneralTopology/Compactness/RealIntervals/Variant225c3280/ContinuousIntervalExtrema.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactness/RealIntervals/Variant225c3280/ContinuousIntervalExtrema.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f233bdac66ec5679d02b5aad6e589e1ff00c2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
