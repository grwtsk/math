# continuous_convexCombPair'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d319d5c5-3b12-c7c7-a5a6-8e9d42a7c1d5",
  "kind": "lemma",
  "lexical_name": "continuous_convexCombPair'",
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
  "slug": "continuous-convexcombpair--67fb79fb1d45f97d5b07aa5d",
  "source": {
    "blob": "765fba550482faddd0c55ca7289277e253e7798c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 257,
    "path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67fb79fb1d45f97d5b07aa5d9f13f2093d49e9c1edc2357199d65664f0459360",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d319d5c5-3b12-c7c7-a5a6-8e9d42a7c1d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_convexCombPair' [BoundedSpace X]
    {T : Type*} [TopologicalSpace T] (f : T → ℝ) (hf : Continuous f)
    (hf0 : ∀ t, 0 ≤ f t) (hf1 : ∀ t, f t ≤ 1) (x y : T → X)
    (hx : ContinuousOn x (f ⁻¹' {0}ᶜ)) (hy : ContinuousOn y (f ⁻¹' {1}ᶜ)) :
    Continuous fun i ↦ convexCombPair (f i) (1 - f i) (hf0 _) (by simpa using hf1 _)
      (add_sub_cancel ..) (x i) (y i) :=
  continuous_convexCombPair_of_isBounded f hf hf0 hf1 x y hx hy (.all _) (.all _)

@[deprecated (since := "2026-05-15")]
alias continuous_convexComboPair' := continuous_convexCombPair'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `765fba550482faddd0c55ca7289277e253e7798c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
