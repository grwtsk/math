# simple_zero_c1_chamber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:627ed7cf-bbb2-929e-1d79-e3d8d7555fcf",
  "kind": "theorem",
  "lexical_name": "simple_zero_c1_chamber",
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
  "slug": "simple-zero-c1-chamber--728ec4ac43e30553c42556e9",
  "source": {
    "blob": "36beab17f38206dd289deee8b012aec9596897a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 57,
    "path": "GRWTSK/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728ec4ac43e30553c42556e9362cdf5117e7d344e4d7308202b082b54fa4fa42",
  "verification": {
    "reference": "docs/verification/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627ed7cf-bbb2-929e-1d79-e3d8d7555fcf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simple_zero_c1_chamber {g : ℝ × ℝ → ℝ} {u : ℝ × ℝ} {a b : ℝ}
    (hc : ContDiffAt ℝ 1 g u) (hz : g u = 0)
    (hs : deriv (fun x => g (u.1,x)) u.2 ≠ 0)
    (ha : a < u.2) (hb : u.2 < b) :
    ∃ (z : ℝ → ℝ) (U : Set ℝ), IsOpen U ∧ u.1 ∈ U ∧
      ContDiffOn ℝ 1 z U ∧ z u.1 = u.2 ∧
      (∀ l ∈ U, g (l,z l) = 0 ∧ z l ∈ Set.Ioo a b) ∧
      (∀ᶠ v in 𝓝 u, g v = 0 ↔ z v.1 = v.2) := by
  have hs' : spatialSlope g u ≠ 0 := by
    rwa [spatial_slope_eq_partial_deriv hc]
  obtain ⟨z,hz0,hzc,hzeq,hzunique⟩ := simple_zero_local_c1_graph hc hz hs'
  obtain ⟨V,hV,hVc⟩ := hzc.contDiffOn (le_refl 1) (by simp)
  have hzi : ∀ᶠ l in 𝓝 u.1, z l ∈ Set.Ioo a b :=
    hzc.continuousAt (by simpa only [hz0] using Ioo_mem_nhds ha hb)
  have hW : V ∩ {l | g (l,z l) = 0} ∩ {l | z l ∈ Set.Ioo a b} ∈ 𝓝 u.1 :=
    Filter.inter_mem (Filter.inter_mem hV hzeq) hzi
  obtain ⟨U,hUW,hU,hu⟩ := mem_nhds_iff.mp hW
  refine ⟨z,U,hU,hu,hVc.mono (fun l hl => (hUW hl).1.1),hz0,?_,hzunique⟩
  intro l hl
  exact ⟨(hUW hl).1.2,(hUW hl).2⟩

end
end GRWTSK.RiemannHypothesis.Conversation.SimpleZeroChamber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SimpleZeroChamber/Variant5bd59c55a78ee965c28e3fee25b86c31b435cc8d1000a4fa3f6f0b6d0e0b6ba8.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36beab17f38206dd289deee8b012aec9596897a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
