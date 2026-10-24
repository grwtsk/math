# measure_mem_forall_ge_image_notMem_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:135d9720-cc9f-cd05-e156-716c8b9a2efc",
  "kind": "theorem",
  "lexical_name": "measure_mem_forall_ge_image_notMem_eq_zero",
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
  "slug": "measure-mem-forall-ge-image-notmem-eq-zero--946b781600ec02cfbb98a9cf",
  "source": {
    "blob": "035f978aa871877a4fe58fdd2966c86426f6e01e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 153,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:946b781600ec02cfbb98a9cfeb97c165fe38613e71a13aecb54892868c0fb9b8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:135d9720-cc9f-cd05-e156-716c8b9a2efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_mem_forall_ge_image_notMem_eq_zero (hf : Conservative f μ)
    (hs : NullMeasurableSet s μ) (n : ℕ) :
    μ ({ x ∈ s | ∀ m ≥ n, f^[m] x ∉ s }) = 0 := by
  by_contra H
  have : NullMeasurableSet (s ∩ { x | ∀ m ≥ n, f^[m] x ∉ s }) μ := by
    simp only [ofPred_forall, ← compl_ofPred]
    exact hs.inter <| .biInter (to_countable _) fun m _ ↦
      (hs.preimage <| hf.toQuasiMeasurePreserving.iterate m).compl
  rcases (hf.exists_gt_measure_inter_ne_zero this H) n with ⟨m, hmn, hm⟩
  rcases nonempty_of_measure_ne_zero hm with ⟨x, ⟨_, hxn⟩, hxm, -⟩
  exact hxn m hmn.lt.le hxm

/-- Poincaré recurrence theorem: given a conservative map `f` and a measurable set `s`,
almost every point `x ∈ s` returns back to `s` infinitely many times. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `035f978aa871877a4fe58fdd2966c86426f6e01e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
