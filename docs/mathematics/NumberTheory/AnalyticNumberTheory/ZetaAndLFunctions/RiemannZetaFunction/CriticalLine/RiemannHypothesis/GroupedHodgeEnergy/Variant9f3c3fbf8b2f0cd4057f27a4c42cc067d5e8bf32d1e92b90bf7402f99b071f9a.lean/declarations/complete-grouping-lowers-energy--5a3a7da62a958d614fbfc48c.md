# complete_grouping_lowers_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f82ec4b6-e95b-76b6-a3c3-6a44b3f475d6",
  "kind": "theorem",
  "lexical_name": "complete_grouping_lowers_energy",
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
  "slug": "complete-grouping-lowers-energy--5a3a7da62a958d614fbfc48c",
  "source": {
    "blob": "712cbbe49af00741fa1b751ef8eadc31dd13c719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a3a7da62a958d614fbfc48c9e544075b7b42492ed048596265f6adae5d26838",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82ec4b6-e95b-76b6-a3c3-6a44b3f475d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_grouping_lowers_energy {ι κ : Type*} [Fintype ι] [Fintype κ]
    [DecidableEq κ] (label : ι → κ) (w v : ι → ℝ) (hw : ∀ i, 0 < w i) :
    groupedEnergy label w v ≤ ∑ i, v i ^ 2 / w i := by
  unfold groupedEnergy
  calc
    _ ≤ ∑ k, fiberTotal label (fun i ↦ v i ^ 2 / w i) k :=
      Finset.sum_le_sum (fun k _ ↦ fiber_energy_le label w v hw k)
    _ = _ := complete_grouping_retains_total label _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712cbbe49af00741fa1b751ef8eadc31dd13c719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
