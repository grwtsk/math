# tendsto_apply_add_mul_sq_div_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77501f213b20f6cf60407d4d24ff8eb3c17f7cd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13518688-482a-5a78-2a0b-a414cb096e76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db264ae0-5de8-3ade-348c-45e3540b7a70",
  "kind": "theorem",
  "lexical_name": "tendsto_apply_add_mul_sq_div_sub",
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
  "slug": "tendsto-apply-add-mul-sq-div-sub--77c7be0bdf480fcaac8ea9b9",
  "source": {
    "blob": "77501f213b20f6cf60407d4d24ff8eb3c17f7cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c7be0bdf480fcaac8ea9b9011b4bf6bec4f429addc51cc73e5851daaa8c8ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db264ae0-5de8-3ade-348c-45e3540b7a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_apply_add_mul_sq_div_sub {f : ℝ → ℝ} {x a c d : ℝ} {l : Filter ℝ} (hl : l ≤ 𝓝[≠] x)
    (hf : Tendsto (fun y => (f y - d) / (y - x)) l (𝓝 a))
    (h' : Tendsto (fun y => y + c * (y - x) ^ 2) l l) :
    Tendsto (fun y => (f (y + c * (y - x) ^ 2) - d) / (y - x)) l (𝓝 a) := by
  have L : Tendsto (fun y => (y + c * (y - x) ^ 2 - x) / (y - x)) l (𝓝 1) := by
    have : Tendsto (fun y => 1 + c * (y - x)) l (𝓝 (1 + c * (x - x))) := by
      apply Tendsto.mono_left _ (hl.trans nhdsWithin_le_nhds)
      exact ((tendsto_id.sub_const x).const_mul c).const_add 1
    simp only [_root_.sub_self, add_zero, mul_zero] at this
    apply Tendsto.congr' (Eventually.filter_mono hl _) this
    filter_upwards [self_mem_nhdsWithin] with y hy
    field_simp [sub_ne_zero.2 hy]
    ring
  have Z := (hf.comp h').mul L
  rw [mul_one] at Z
  apply Tendsto.congr' _ Z
  have : ∀ᶠ y in l, y + c * (y - x) ^ 2 ≠ x := by apply Tendsto.mono_right h' hl self_mem_nhdsWithin
  filter_upwards [this] with y hy
  field_simp [sub_ne_zero.2 hy]

/-- A Stieltjes function is almost everywhere differentiable, with derivative equal to the
Radon-Nikodym derivative of the associated Stieltjes measure with respect to Lebesgue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Monotone/Variant28729eb2a95fda9bc958aae985ae876beeec3a3ff8668a6c602014ab909433a7.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77501f213b20f6cf60407d4d24ff8eb3c17f7cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
