# set_lintegral_condKernel_eq_measure_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 391,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c048cf1-bdeb-4878-c225-8c9b87e04a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20b6371d-11e1-6ab4-3597-87dbb5aec969",
  "kind": "theorem",
  "lexical_name": "set_lintegral_condKernel_eq_measure_prod",
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
  "slug": "set-lintegral-condkernel-eq-measure-prod--4ffa46b858bfd2980eca6de6",
  "source": {
    "blob": "fcf65f53557e43ad0721daecd32d7d5458b505b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 391,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ffa46b858bfd2980eca6de61a54ae2ce6ec74024b7e897514b76f3e0e258236",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20b6371d-11e1-6ab4-3597-87dbb5aec969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_condKernel_eq_measure_prod {s : Set α} (hs : MeasurableSet s) {t : Set Ω}
    (ht : MeasurableSet t) : ∫⁻ a in s, ρ.condKernel a t ∂ρ.fst = ρ (s ×ˢ t) := by
  have : ρ (s ×ˢ t) =
      ((kernel.const Unit ρ.fst ⊗ₖ kernel.prodMkLeft Unit ρ.condKernel) ()) (s ×ˢ t) := by
    congr; exact measure_eq_compProd ρ
  rw [this, kernel.compProd_apply _ _ _ (hs.prod ht)]
  simp only [prod_mk_mem_set_prod_eq, kernel.lintegral_const, kernel.prodMkLeft_apply]
  rw [← lintegral_indicator _ hs]
  congr
  ext1 x
  classical
  rw [indicator_apply]
  split_ifs with hx
  · simp only [hx, if_true, true_and_iff, setOf_mem_eq]
  · simp only [hx, if_false, false_and_iff, setOf_false, measure_empty]
#align probability_theory.set_lintegral_cond_kernel_eq_measure_prod ProbabilityTheory.set_lintegral_condKernel_eq_measure_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Disintegration/Variant00dca2d673b817ab5be1f50a73641cb8574b34e8f5ef4b2e229543a617d5604b.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf65f53557e43ad0721daecd32d7d5458b505b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
