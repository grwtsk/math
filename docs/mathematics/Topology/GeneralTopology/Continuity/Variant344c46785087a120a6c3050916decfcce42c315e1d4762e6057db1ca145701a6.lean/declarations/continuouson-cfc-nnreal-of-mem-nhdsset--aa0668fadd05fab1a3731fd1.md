# ContinuousOn.cfc_nnreal_of_mem_nhdsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46eb3779-5d5a-72b5-782e-5dbd67b4107f",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.cfc_nnreal_of_mem_nhdsSet",
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
  "slug": "continuouson-cfc-nnreal-of-mem-nhdsset--aa0668fadd05fab1a3731fd1",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 538,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa0668fadd05fab1a3731fd1e2c37c057bcece2eaa2b42aff53b7c6420d6bcf5",
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

Occurrence: `result:46eb3779-5d5a-72b5-782e-5dbd67b4107f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.cfc_nnreal_of_mem_nhdsSet [CompleteSpace A] [TopologicalSpace X] {s : Set ℝ≥0}
    (f : ℝ≥0 → ℝ≥0) {a : X → A} {t : Set X} (hs : s ∈ 𝓝ˢ (⋃ x ∈ t, spectrum ℝ≥0 (a x)))
    (ha_cont : ContinuousOn a t) (ha' : ∀ x ∈ t, 0 ≤ a x := by cfc_tac)
    (hf : ContinuousOn f s := by cfc_cont_tac) :
    ContinuousOn (fun x ↦ cfc f (a x)) t := by
  have hs' := hs
  simp only [nhdsSet_iUnion, mem_iSup] at hs'
  have (x : t) : ∃ S, IsCompact S ∧ (∀ᶠ (x' : A) in 𝓝 (a x), spectrum ℝ≥0 x' ⊆ S) ∧ S ⊆ s := by
    obtain ⟨S, ⟨hS₁, hS₂⟩, hS₃⟩ :=
      spectrum.isCompact_nnreal (a x) |>.nhdsSet_basis_isCompact.mem_iff.mp (hs' x x.2)
    refine ⟨S, hS₂, ?_, hS₃⟩
    exact upperHemicontinuous_spectrum_nnreal A |>.upperHemicontinuousAt (a x) _ hS₁ |>.mono
      fun _ ↦ subset_of_mem_nhdsSet
  choose S hS₁ hS₂ hS₃ using this
  classical
  refine ha_cont.cfc_nnreal (s := fun x : X ↦ if hx : x ∈ t then S ⟨x, hx⟩ else ∅) f
    (by simpa +contextual using hS₁) ?_ ha' ?_
  all_goals simp +contextual only [↓reduceDIte]
  · exact fun x₀ hx₀ ↦ ha_cont.continuousWithinAt hx₀ |>.eventually <| hS₂ ⟨x₀, hx₀⟩
  · exact fun x hx ↦ hf.mono <| hS₃ ⟨x, hx⟩

/-- Suppose `a : X → Set A` is a continuous family of nonnegative elements.
Suppose further that `s : X → Set ℝ≥0` is a family of compact sets such that `s x₀` contains the
spectrum of `a x` for all sufficiently close `x`. If `f : ℝ≥0 → ℝ≥0` is continuous on each `s x`,
then `fun x ↦ cfc f (a x)` is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
