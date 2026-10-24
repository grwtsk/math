# setLIntegral_condKernel_univ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a31ff181c79a08e50fc9489a66a11be45402a6d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0b14b67-99ee-1f88-c088-9b4d80a65704",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43803659-7146-d220-b431-c2c4badb110c",
  "kind": "lemma",
  "lexical_name": "setLIntegral_condKernel_univ_left",
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
  "slug": "setlintegral-condkernel-univ-left--9020ec306ff9d2164a7c2d83",
  "source": {
    "blob": "a31ff181c79a08e50fc9489a66a11be45402a6d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9020ec306ff9d2164a7c2d83257abb3f5ad7727d5e88e84ced5b7982cab317de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43803659-7146-d220-b431-c2c4badb110c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setLIntegral_condKernel_univ_left (hf : Measurable f) {t : Set Ω}
    (ht : MeasurableSet t) :
    ∫⁻ b, ∫⁻ ω in t, f (b, ω) ∂(ρ.condKernel b) ∂ρ.fst
      = ∫⁻ x in Set.univ ×ˢ t, f x ∂ρ := by
  rw [← setLIntegral_condKernel hf MeasurableSet.univ ht]; simp_rw [Measure.restrict_univ]

end Lintegral

section Integral

variable {ρ : Measure (β × Ω)} [IsFiniteMeasure ρ]
  {E : Type*} {f : β × Ω → E} [NormedAddCommGroup E] [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31ff181c79a08e50fc9489a66a11be45402a6d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
