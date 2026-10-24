# Continuous.cfc_nnreal_of_mem_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33a64613-2866-272a-54d7-3ac58a004e9f",
  "kind": "theorem",
  "lexical_name": "Continuous.cfc_nnreal_of_mem_nhdsSet",
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
  "slug": "continuous-cfc-nnreal-of-mem-nhdsset--9daf3e5b771a72b344bf6343",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 590,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9daf3e5b771a72b344bf6343a0365b1318136d4b20aa2d512faaae06a9384c0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33a64613-2866-272a-54d7-3ac58a004e9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.cfc_nnreal_of_mem_nhdsSet [CompleteSpace A] [TopologicalSpace X] {s : Set ℝ≥0}
    (f : ℝ≥0 → ℝ≥0) {a : X → A} (hs : s ∈ 𝓝ˢ (⋃ x, spectrum ℝ≥0 (a x))) (ha_cont : Continuous a)
    (ha' : ∀ x, 0 ≤ a x := by cfc_tac) (hf : ContinuousOn f s := by cfc_cont_tac) :
    Continuous (fun x ↦ cfc f (a x)) := by
  rw [← continuousOn_univ] at ha_cont ⊢
  exact ha_cont.cfc_nnreal_of_mem_nhdsSet f (by simpa) (by simpa)

end NNReal

end Right

end Unital

section NonUnital

section Left

section Generic

variable {X R A : Type*} {p : A → Prop} [CommSemiring R] [StarRing R] [MetricSpace R] [Nontrivial R]
    [IsTopologicalSemiring R] [ContinuousStar R] [NonUnitalRing A] [StarRing A]
    [TopologicalSpace A] [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]
    [NonUnitalContinuousFunctionalCalculus R A p]

/-- If `F : X → R → R` tends to `f : R → R` uniformly on the spectrum of `a`, and all
these functions are continuous on the spectrum and map zero to itself, then
`fun x ↦ cfcₙ (F x) a` tends to `cfcₙ f a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
