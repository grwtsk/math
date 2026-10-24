# surjective_grouping_positive_width

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9d3a6f1-9938-75a5-e5e0-31aeb18e23c3",
  "kind": "theorem",
  "lexical_name": "surjective_grouping_positive_width",
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
  "slug": "surjective-grouping-positive-width--e8b3098388f30219252ef003",
  "source": {
    "blob": "4748fca5144df3132a877ecc72f4ec51d6701596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 87,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8b3098388f30219252ef0031cfcca31e3f411e8c2d2b26d5a54035e7dd7bcb6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9d3a6f1-9938-75a5-e5e0-31aeb18e23c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_grouping_positive_width {ι κ : Type*} [Fintype ι] [DecidableEq κ]
    (label : ι → κ) (hs : Function.Surjective label) (w : ι → ℝ) (hw : ∀ i, 0 < w i)
    (k : κ) : 0 < fiberTotal label w k := by
  classical
  obtain ⟨i, hi⟩ := hs k
  have hn : (Finset.univ.filter (fun i ↦ label i = k)).Nonempty := ⟨i, by simp [hi]⟩
  have h := Finset.sum_pos (s := Finset.univ.filter (fun i ↦ label i = k))
    (fun i _ ↦ hw i) hn
  simpa [fiberTotal, Finset.sum_filter] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant2053024f25d09781bfca2c1dc87d49c496b0a76893fa49232a9651246824ecd0.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4748fca5144df3132a877ecc72f4ec51d6701596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
