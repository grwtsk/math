# tendsto_pow_atTop_nhds_zero_iff_norm_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db83d836-e55b-ca9b-8998-014aa0264197",
  "kind": "lemma",
  "lexical_name": "tendsto_pow_atTop_nhds_zero_iff_norm_lt_one",
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
  "slug": "tendsto-pow-attop-nhds-zero-iff-norm-lt-one--964daf90b4d30b4ffbc34293",
  "source": {
    "blob": "e68edfcfdf903cdee0d61757e0922e384e43017b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 234,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:964daf90b4d30b4ffbc34293d5d955aa46a84dd6a4a45adf010e2f5cafffd21b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db83d836-e55b-ca9b-8998-014aa0264197`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_pow_atTop_nhds_zero_iff_norm_lt_one {R : Type*} [SeminormedRing R] [NormMulClass R]
    {x : R} : Tendsto (fun n : ℕ ↦ x ^ n) atTop (𝓝 0) ↔ ‖x‖ < 1 := by
  -- this proof is slightly fiddly since `‖x ^ n‖ = ‖x‖ ^ n` might not hold for `n = 0`
  refine ⟨?_, tendsto_pow_atTop_nhds_zero_of_norm_lt_one⟩
  rw [← abs_of_nonneg (norm_nonneg _), ← tendsto_pow_atTop_nhds_zero_iff,
    tendsto_zero_iff_norm_tendsto_zero]
  apply Tendsto.congr'
  filter_upwards [eventually_ge_atTop 1] with n hn
  induction n, hn using Nat.le_induction with
  | base => simp
  | succ n hn IH => simp [norm_pow, pow_succ, IH]

/-! ### Geometric series -/

/-- A normed ring has summable geometric series if, for all `ξ` of norm `< 1`, the geometric series
`∑ ξ ^ n` converges. This holds both in complete normed rings and in normed fields, providing a
convenient abstraction of these two classes to avoid repeating the same proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68edfcfdf903cdee0d61757e0922e384e43017b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
