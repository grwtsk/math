# crossingCount_zero_outside_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acc1e05f-366e-d37c-227b-410cd37ead6a",
  "kind": "theorem",
  "lexical_name": "crossingCount_zero_outside_height",
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
  "slug": "crossingcount-zero-outside-height--a04ba028a346b7639a2685cc",
  "source": {
    "blob": "d956bf845a33d3d326d0078ce6792605f9b73613",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a04ba028a346b7639a2685cc02ef65d651a7119654284ae5c9fd3f3fe3a80421",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acc1e05f-366e-d37c-227b-410cd37ead6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crossingCount_zero_outside_height (B : ℕ → ℝ) (K : ℕ) {H y : ℝ}
    (hheight : ∀ j, j ≤ K → positiveStorage B j ≤ H) (hy : y ∉ Ioc (0 : ℝ) H) :
    crossingCount B K y = 0 := by
  apply Finset.sum_eq_zero
  intro j hj
  have hjK : j + 1 ≤ K := by have h := Finset.mem_range.mp hj; omega
  have hnot : y ∉ Ioc (positiveStorage B j) (positiveStorage B (j + 1)) := by
    intro h
    apply hy
    exact ⟨(le_max_right (B j) 0).trans_lt h.1, h.2.trans (hheight _ hjK)⟩
  exact Set.indicator_of_notMem hnot _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteCrossingCoarea/Variant25bd09e08c9b46d5ec2465116a8b90f681d692105595c65d24abc43186299dde.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d956bf845a33d3d326d0078ce6792605f9b73613` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
