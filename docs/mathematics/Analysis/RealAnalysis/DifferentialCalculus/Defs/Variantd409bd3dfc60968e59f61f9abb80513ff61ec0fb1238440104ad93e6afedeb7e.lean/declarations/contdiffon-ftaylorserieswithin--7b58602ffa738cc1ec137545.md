# ContDiffOn.ftaylorSeriesWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0727b456665e9979d92cea6b8c838d7d8403f214",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 636,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b058d2d7-ebdd-87fa-24fe-56517b8b6046",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:673d1419-21d7-af87-66f5-196fed6fd0e1",
  "kind": "theorem",
  "lexical_name": "ContDiffOn.ftaylorSeriesWithin",
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
  "slug": "contdiffon-ftaylorserieswithin--7b58602ffa738cc1ec137545",
  "source": {
    "blob": "0727b456665e9979d92cea6b8c838d7d8403f214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 636,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b58602ffa738cc1ec137545e3bb6d22bc1bced506d78fc077a9a215ca66ef18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:673d1419-21d7-af87-66f5-196fed6fd0e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ContDiffOn.ftaylorSeriesWithin
    (h : ContDiffOn 𝕜 n f s) (hs : UniqueDiffOn 𝕜 s) :
    HasFTaylorSeriesUpToOn n f (ftaylorSeriesWithin 𝕜 f s) s := by
  constructor
  · intro x _
    simp only [ftaylorSeriesWithin, ContinuousMultilinearMap.curry0_apply,
      iteratedFDerivWithin_zero_apply]
  · intro m hm x hx
    have : (m + 1 : ℕ) ≤ n := ENat.add_one_natCast_le_withTop_of_lt hm
    rcases (h x hx).of_le this _ le_rfl with ⟨u, hu, p, Hp⟩
    rw [insert_eq_of_mem hx] at hu
    rcases mem_nhdsWithin.1 hu with ⟨o, o_open, xo, ho⟩
    rw [inter_comm] at ho
    have : p x m.succ = ftaylorSeriesWithin 𝕜 f s x m.succ := by
      change p x m.succ = iteratedFDerivWithin 𝕜 m.succ f s x
      rw [← iteratedFDerivWithin_inter_open o_open xo]
      exact (Hp.mono ho).eq_iteratedFDerivWithin_of_uniqueDiffOn le_rfl (hs.inter o_open) ⟨hx, xo⟩
    rw [← this, ← hasFDerivWithinAt_inter (IsOpen.mem_nhds o_open xo)]
    have A : ∀ y ∈ s ∩ o, p y m = ftaylorSeriesWithin 𝕜 f s y m := by
      rintro y ⟨hy, yo⟩
      change p y m = iteratedFDerivWithin 𝕜 m f s y
      rw [← iteratedFDerivWithin_inter_open o_open yo]
      exact
        (Hp.mono ho).eq_iteratedFDerivWithin_of_uniqueDiffOn (mod_cast Nat.le_succ m)
          (hs.inter o_open) ⟨hy, yo⟩
    exact
      ((Hp.mono ho).fderivWithin m (mod_cast lt_add_one m) x ⟨hx, xo⟩).congr
        (fun y hy => (A y hy).symm) (A x ⟨hx, xo⟩).symm
  · intro m hm
    apply continuousOn_of_locally_continuousOn
    intro x hx
    rcases (h x hx).of_le hm _ le_rfl with ⟨u, hu, p, Hp⟩
    rcases mem_nhdsWithin.1 hu with ⟨o, o_open, xo, ho⟩
    rw [insert_eq_of_mem hx] at ho
    rw [inter_comm] at ho
    refine ⟨o, o_open, xo, ?_⟩
    have A : ∀ y ∈ s ∩ o, p y m = ftaylorSeriesWithin 𝕜 f s y m := by
      rintro y ⟨hy, yo⟩
      change p y m = iteratedFDerivWithin 𝕜 m f s y
      rw [← iteratedFDerivWithin_inter_open o_open yo]
      exact (Hp.mono ho).eq_iteratedFDerivWithin_of_uniqueDiffOn le_rfl (hs.inter o_open) ⟨hy, yo⟩
    exact ((Hp.mono ho).cont m le_rfl).congr fun y hy => (A y hy).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0727b456665e9979d92cea6b8c838d7d8403f214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
