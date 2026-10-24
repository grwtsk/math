# composed_grouping_retains_fibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78ad24f7-8e0b-2fb6-b774-bdbc551ad4b7",
  "kind": "theorem",
  "lexical_name": "composed_grouping_retains_fibers",
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
  "slug": "composed-grouping-retains-fibers--8fb26dcb36ab1b1da806ce95",
  "source": {
    "blob": "712cbbe49af00741fa1b751ef8eadc31dd13c719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb26dcb36ab1b1da806ce95226479d65aa3047d6bc4acf0e7fb1c0a05c5770f",
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

Occurrence: `result:78ad24f7-8e0b-2fb6-b774-bdbc551ad4b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composed_grouping_retains_fibers {ι γ κ : Type*} [Fintype ι] [Fintype γ]
    [DecidableEq γ] [DecidableEq κ] (fine : ι → γ) (parent : γ → κ) (v : ι → ℝ) (k : κ) :
    fiberTotal (parent ∘ fine) v k = fiberTotal parent (fiberTotal fine v) k := by
  classical
  have he : ∀ g : γ,
      (if parent g = k then ∑ i, if fine i = g then v i else 0 else 0) =
        ∑ i, if parent g = k ∧ fine i = g then v i else 0 := by
    intro g
    by_cases h : parent g = k <;> simp [h]
  simp only [fiberTotal] at *
  simp_rw [he]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro i _
  simp [and_comm, ite_and]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GroupedHodgeEnergy/Variant9f3c3fbf8b2f0cd4057f27a4c42cc067d5e8bf32d1e92b90bf7402f99b071f9a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `712cbbe49af00741fa1b751ef8eadc31dd13c719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
