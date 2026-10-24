# tendsto_integral_density_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f465ce6-d35d-9a8c-1e86-114eef6c6921",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_density_of_antitone",
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
  "slug": "tendsto-integral-density-of-antitone--4b49a43880dd6fac644cd292",
  "source": {
    "blob": "2a49ff4eda35f74082be3ce99933db8f3ab08f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 613,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b49a43880dd6fac644cd29201694c24acacf142ddeaec034a2692be57aaeb89",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f465ce6-d35d-9a8c-1e86-114eef6c6921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_density_of_antitone (hκν : fst κ ≤ ν) [IsFiniteKernel ν] (a : α)
    (seq : ℕ → Set β) (hseq : Antitone seq) (hseq_iInter : ⋂ i, seq i = ∅)
    (hseq_meas : ∀ m, MeasurableSet (seq m)) :
    Tendsto (fun m ↦ ∫ x, density κ ν a x (seq m) ∂(ν a)) atTop (𝓝 0) := by
  have : IsFiniteKernel κ := isFiniteKernel_of_isFiniteKernel_fst (h := isFiniteKernel_of_le hκν)
  simp_rw [integral_density hκν a (hseq_meas _), ← toReal_zero]
  have h_cont := continuousAt_toReal zero_ne_top
  refine h_cont.tendsto.comp ?_
  have h : Tendsto (fun m ↦ κ a (univ ×ˢ seq m)) atTop
      (𝓝 ((κ a) (⋂ n, (fun m ↦ univ ×ˢ seq m) n))) := by
    apply tendsto_measure_iInter_atTop
    · measurability
    · exact antitone_const.set_prod hseq
    · exact ⟨0, measure_ne_top _ _⟩
  simpa [← prod_iInter, hseq_iInter] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a49ff4eda35f74082be3ce99933db8f3ab08f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
