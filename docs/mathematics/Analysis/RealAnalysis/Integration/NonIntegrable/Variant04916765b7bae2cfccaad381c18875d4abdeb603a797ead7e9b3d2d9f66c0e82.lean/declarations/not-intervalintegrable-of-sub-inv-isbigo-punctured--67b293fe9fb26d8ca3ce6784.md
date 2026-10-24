# not_intervalIntegrable_of_sub_inv_isBigO_punctured

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41a06a5321d2fccc44f0c07c5476ba0c2f7471da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b97ec029-1489-af67-f17d-1de3cf55c2f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76bb95e3-80ff-4516-b6b3-4ca1cffbfd66",
  "kind": "theorem",
  "lexical_name": "not_intervalIntegrable_of_sub_inv_isBigO_punctured",
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
  "slug": "not-intervalintegrable-of-sub-inv-isbigo-punctured--67b293fe9fb26d8ca3ce6784",
  "source": {
    "blob": "41a06a5321d2fccc44f0c07c5476ba0c2f7471da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67b293fe9fb26d8ca3ce67844d6c5b93f2c085b2ba399931f76ae31389e4c227",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76bb95e3-80ff-4516-b6b3-4ca1cffbfd66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_intervalIntegrable_of_sub_inv_isBigO_punctured {f : ℝ → F} {a b c : ℝ}
    (hf : (fun x => (x - c)⁻¹) =O[𝓝[≠] c] f) (hne : a ≠ b) (hc : c ∈ [[a, b]]) :
    ¬IntervalIntegrable f volume a b := by
  have A : ∀ᶠ x in 𝓝[≠] c, HasDerivAt (fun x => Real.log (x - c)) (x - c)⁻¹ x := by
    filter_upwards [self_mem_nhdsWithin] with x hx
    simpa using ((hasDerivAt_id x).sub_const c).log (sub_ne_zero.2 hx)
  have B : Tendsto (fun x => ‖Real.log (x - c)‖) (𝓝[≠] c) atTop := by
    refine tendsto_abs_atBot_atTop.comp (Real.tendsto_log_nhdsNE_zero.comp ?_)
    rw [← sub_self c]
    exact ((hasDerivAt_id c).sub_const c).tendsto_nhdsNE one_ne_zero
  exact not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_punctured
    (A.mono fun x hx => hx.differentiableAt) B
    (hf.congr' (A.mono fun x hx => hx.deriv.symm) EventuallyEq.rfl) hne hc

/-- The function `fun x => (x - c)⁻¹` is integrable on `a..b` if and only if
`a = b` or `c ∉ [a, b]`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41a06a5321d2fccc44f0c07c5476ba0c2f7471da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
