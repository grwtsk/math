# coefficientPartialSums_isBigO_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20fd2065-643d-3081-b702-3bdf51c33b0c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55afcebc-4ea2-64f6-d88a-baf1d1f5ad27",
  "kind": "theorem",
  "lexical_name": "coefficientPartialSums_isBigO_rpow",
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
  "slug": "coefficientpartialsums-isbigo-rpow--32225503978dae312ec8f57c",
  "source": {
    "blob": "bb5361e98c4071e3b529b7d774f0b91017bbe2e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 76,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32225503978dae312ec8f57c6a5e2b4abb2b117ba2fdde8c1830b5c348ea226a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55afcebc-4ea2-64f6-d88a-baf1d1f5ad27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientPartialSums_isBigO_rpow
    (hHalf : TwistedPsiHalfPlusEpsilon) {r : ℝ} (hr : 1 / 2 < r) :
    (fun x : ℕ ↦ ∑ n ∈ Icc 1 x, conductorThreeComplexVonMangoldt n) =O[atTop]
      (fun x : ℕ ↦ (x : ℝ) ^ r) := by
  obtain ⟨C, hC, hBound⟩ := hHalf (r - 1 / 2) (sub_pos.mpr hr)
  refine IsBigO.of_bound C ?_
  filter_upwards [eventually_ge_atTop 2] with x hx
  rw [sum_Icc_conductorThreeComplexVonMangoldt]
  simpa [abs_of_nonneg (Real.rpow_nonneg (Nat.cast_nonneg x) r)] using hBound x hx

/-- Real-variable step interpolation inherits the same asymptotic bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ConductorThreeMellinLogDerivative/Variant4266c28dad4ddba7c85ce80420127c7484c6608dc9a839b16dbb27cb721f0539.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5361e98c4071e3b529b7d774f0b91017bbe2e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
