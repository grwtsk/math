# ContinuousOn.cfcₙ_nnreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:412a72d9-c369-280b-86cb-8170dada0db6",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.cfcₙ_nnreal",
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
  "slug": "continuouson-cfc-nnreal--d571f40a18497ae1598adad1",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1071,
    "line": 1059,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d571f40a18497ae1598adad19c8c253680b582a2734d9440a4e313bb9e030204",
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

Occurrence: `result:412a72d9-c369-280b-86cb-8170dada0db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1059–1071.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.cfcₙ_nnreal [TopologicalSpace X] {s : X → Set ℝ≥0} (f : ℝ≥0 → ℝ≥0) {a : X → A}
    {t : Set X} (hs : ∀ x ∈ t, IsCompact (s x)) (ha_cont : ContinuousOn a t)
    (ha : ∀ x₀ ∈ t, ∀ᶠ x in 𝓝[t] x₀, quasispectrum ℝ≥0 (a x) ⊆ s x₀) (ha' : ∀ x ∈ t, 0 ≤ a x)
    (hf : ∀ x ∈ t, ContinuousOn f (s x) := by cfc_cont_tac) (hf0 : f 0 = 0 := by cfc_zero_tac) :
    ContinuousOn (fun x ↦ cfcₙ f (a x)) t := by
  rw [ContinuousOn] at ha_cont ⊢
  refine fun x hx ↦ (ha_cont x hx).cfcₙ_nnreal (hs x hx) f hx ?_ ?_ (hf x hx)
  all_goals filter_upwards [ha x hx, self_mem_nhdsWithin] with x hx hxt
  exacts [hx, ha' x hxt]

/-- If `f : ℝ≥0 → ℝ≥0` is continuous on a compact set `s` and `f 0 = 0` and `a : X → A` is
continuous on `t : Set X`, and `0 ≤ a x` and has quasispectrum contained in `s` for all `x ∈ t`,
then `fun x ↦ cfcₙ f (a x)` is continuous on `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L1059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
