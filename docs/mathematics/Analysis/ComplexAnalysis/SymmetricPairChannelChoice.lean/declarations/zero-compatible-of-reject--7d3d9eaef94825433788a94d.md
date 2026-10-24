# zero_compatible_of_reject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab60b459-9957-4639-2a52-ff44b2e741cb",
  "kind": "theorem",
  "lexical_name": "zero_compatible_of_reject",
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
  "slug": "zero-compatible-of-reject--7d3d9eaef94825433788a94d",
  "source": {
    "blob": "1c40a38ede8c169a01b4cff9700b8586c3140646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 156,
    "path": "GRWTSK/Analysis/Complex/SymmetricPairChannelChoice.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d3d9eaef94825433788a94d794d617c988ecc44b1751d788a5f0f6219a2976b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab60b459-9957-4639-2a52-ff44b2e741cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_compatible_of_reject {W : Data} (he : 0 ≤ W.evenRadius)
    (ho : 0 ≤ W.oddRadius) (hf : W.channelCheck=false) (c d : ℂ) :
    W.ChannelValid (fun _ => 0) c d := by
  have hnot : ¬ W.ChannelPass := by
    intro hp
    have hh := W.channelCheck_iff.mpr hp
    rw [hf] at hh
    cases hh
  have he' : W.evenCenter.normSq ≤ W.evenRadius^2 := by
    by_contra h
    exact hnot ⟨he,ho,Or.inl (lt_of_not_ge h)⟩
  have ho' : W.oddCenter.normSq ≤ W.oddRadius^2 := by
    by_contra h
    exact hnot ⟨he,ho,Or.inr (lt_of_not_ge h)⟩
  have heR : (0 : ℝ) ≤ (W.evenRadius : ℝ) := by exact_mod_cast he
  have hoR : (0 : ℝ) ≤ (W.oddRadius : ℝ) := by exact_mod_cast ho
  have hesq : ‖W.evenCenter.value‖^2 ≤ (W.evenRadius : ℝ)^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast he'
  have hosq : ‖W.oddCenter.value‖^2 ≤ (W.oddRadius : ℝ)^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast ho'
  constructor
  · change ‖even (fun _ => 0) c d-W.evenCenter.value‖ ≤ (W.evenRadius : ℝ)
    simp only [even,add_zero,zero_div,zero_sub,norm_neg]
    nlinarith [norm_nonneg W.evenCenter.value]
  · change ‖odd (fun _ => 0) c d-W.oddCenter.value‖ ≤ (W.oddRadius : ℝ)
    simp only [odd,sub_self,zero_div,zero_sub,norm_neg]
    nlinarith [norm_nonneg W.oddCenter.value]


/-- Exact robust separation for these two independent disks. This is not
completeness of the actual source supplier or of an arithmetic search. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/SymmetricPairChannelChoice.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c40a38ede8c169a01b4cff9700b8586c3140646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
