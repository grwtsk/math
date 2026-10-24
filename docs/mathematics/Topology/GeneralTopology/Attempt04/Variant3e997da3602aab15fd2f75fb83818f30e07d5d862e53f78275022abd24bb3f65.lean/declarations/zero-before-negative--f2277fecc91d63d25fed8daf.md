# zero_before_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e28f0314-eb98-71b3-325b-b4ed767bcae7",
  "kind": "theorem",
  "lexical_name": "zero_before_negative",
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
  "slug": "zero-before-negative--f2277fecc91d63d25fed8daf",
  "source": {
    "blob": "9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2277fecc91d63d25fed8daf12ff2e965ddf56a09eb22d02ed1325423c1918bd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e28f0314-eb98-71b3-325b-b4ed767bcae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_before_negative {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f)
    {b : ℝ} (hb : 0 < b) (hnegative : f b < 0) :
    ∃ c : ℝ, 0 < c ∧ c < b ∧ f c = 0 := by
  obtain ⟨a₀, ha₀, hpos⟩ := hsmall
  let a : ℝ := min a₀ b / 2
  have hm : 0 < min a₀ b := lt_min ha₀ hb
  have ha : 0 < a := div_pos hm (by norm_num)
  have ham : a < min a₀ b := by dsimp [a]; linarith
  have haa₀ : a < a₀ := ham.trans_le (min_le_left _ _)
  have hab : a < b := ham.trans_le (min_le_right _ _)
  have hfa : 0 < f a := hpos a ha haa₀
  have hinterval : ContinuousOn f (Icc a b) := hcont.mono (by
    intro x hx
    exact ha.trans_le hx.1)
  obtain ⟨c, hc, hfc⟩ :=
    intermediate_value_Icc' hab.le hinterval ⟨hnegative.le, hfa.le⟩
  refine ⟨c, ha.trans_le hc.1, ?_, hfc⟩
  apply lt_of_le_of_ne hc.2
  intro hcb
  have : f b = 0 := hcb ▸ hfc
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
