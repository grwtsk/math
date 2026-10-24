# ContMDiff.sumElim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f8270fe-bdf7-4945-bcd6-be47bd692178",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ce4ceb2-f557-bab3-85c8-3a6408be24eb",
  "kind": "lemma",
  "lexical_name": "ContMDiff.sumElim",
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
  "slug": "contmdiff-sumelim--05f16f100c4915e9c426a797",
  "source": {
    "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 442,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05f16f100c4915e9c426a797bbab2f6077aacff10d4c2049b1f62c90edd56f4d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ce4ceb2-f557-bab3-85c8-3a6408be24eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.sumElim {f : M → N} {g : M' → N}
    (hf : ContMDiff I J n f) (hg : ContMDiff I J n g) : ContMDiff I J n (Sum.elim f g) := by
  intro p
  rw [contMDiffAt_iff]
  refine ⟨(Continuous.sumElim hf.continuous hg.continuous).continuousAt, ?_⟩
  cases p with
  | inl x =>
    -- In charts around x : M, the map f ⊔ g looks like f.
    -- This is how they both look like in extended charts.
    have : ContDiffWithinAt 𝕜 n ((extChartAt J (f x)) ∘ f ∘ (extChartAt I x).symm)
        (range I) ((extChartAt I (.inl x : M ⊕ M')) (Sum.inl x)) := by
      let hf' := hf x
      rw [contMDiffAt_iff] at hf'
      simpa using hf'.2
    apply this.congr_of_eventuallyEq
    · simp only [extChartAt, Sum.elim_inl, ChartedSpace.sum_chartAt_inl,
        Sum.inl_injective.extend_apply]
      filter_upwards with a
      congr
    · -- They agree at the image of x.
      simp only [extChartAt, ChartedSpace.sum_chartAt_inl, Sum.elim_inl]
      congr
  | inr x =>
    -- In charts around x : M, the map f ⊔ g looks like g.
    -- This is how they both look like in extended charts.
    have : ContDiffWithinAt 𝕜 n ((extChartAt J (g x)) ∘ g ∘ (extChartAt I x).symm)
        (range I) ((extChartAt I (.inr x : M ⊕ M')) (Sum.inr x)) := by
      let hg' := hg x
      rw [contMDiffAt_iff] at hg'
      simpa using hg'.2
    apply this.congr_of_eventuallyEq
    · simp only [extChartAt, Sum.elim_inr, ChartedSpace.sum_chartAt_inr,
        Sum.inl_injective.extend_apply]
      filter_upwards with a
      congr
    · -- They agree at the image of x.
      simp only [extChartAt, ChartedSpace.sum_chartAt_inr, Sum.elim_inr]
      congr

@[deprecated (since := "2025-02-20")] alias ContMDiff.sum_elim := ContMDiff.sumElim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ed0ed2f2a61121aba5eef7f8b5cd7d025026416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
