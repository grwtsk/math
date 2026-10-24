# exists_small_rayleigh_descent_of_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2668db3c-597e-169e-b5dc-c02dd55941af",
  "kind": "theorem",
  "lexical_name": "exists_small_rayleigh_descent_of_second",
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
  "slug": "exists-small-rayleigh-descent-of-second--7403a50bd4c87f82a90a07d1",
  "source": {
    "blob": "5ccefab6bacf618fecf4182f542b2367444656c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 256,
    "path": "GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7403a50bd4c87f82a90a07d12586ad2f7456f9e892faea8946d1dfc70e7b75ac",
  "verification": {
    "reference": "docs/verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2668db3c-597e-169e-b5dc-c02dd55941af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_small_rayleigh_descent_of_second {d ell H : ℝ} (hd : d < 0)
    {radius : ℝ} (hradius : 0 < radius) :
    ∃ e : ℝ, 0 < |e| ∧ |e| < radius ∧ 0 < denominator ell H e ∧
      increment 0 d ell H e < 0 := by
  have hden : ContinuousAt (denominator ell H) 0 := by
    unfold denominator
    fun_prop
  have hp : ∀ᶠ e in 𝓝[≠] (0 : ℝ), 0 < denominator ell H e :=
    (hden.eventually_const_lt (by simp [denominator])).filter_mono nhdsWithin_le_nhds
  have hr0 : ∀ᶠ e in 𝓝 (0 : ℝ), |e| < radius :=
    continuous_abs.continuousAt.eventually_lt_const (by simpa using hradius)
  have hr : ∀ᶠ e in 𝓝[≠] (0 : ℝ), |e| < radius :=
    hr0.filter_mono nhdsWithin_le_nhds
  obtain ⟨e, hpe, hre, he⟩ := (hp.and (hr.and self_mem_nhdsWithin)).exists
  have he0 : e ≠ 0 := he
  refine ⟨e, abs_pos.mpr he0, hre, hpe, ?_⟩
  apply negative_increment _ _ _ _ _ hpe
  simpa only [mul_zero, add_zero, zero_add] using mul_neg_of_pos_of_neg (sq_pos_of_ne_zero he0) hd

/-- Complete local classification for the exact affine quotient, including all denominator terms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchDescentWitness/Variantdf74882673e25901a6c89d2ad6900ade3fa551b1eb05913d3faf2a19a65dd6b9.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccefab6bacf618fecf4182f542b2367444656c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
