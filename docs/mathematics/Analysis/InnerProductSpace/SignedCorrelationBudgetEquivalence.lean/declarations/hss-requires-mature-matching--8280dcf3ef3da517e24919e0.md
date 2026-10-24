# HSS_requires_mature_matching

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48e0ed3b3549c09af34f7190d5467009c331a22a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98680ced-e373-428d-db63-edbf38dfb995",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f797aa2b-ddb8-cc7c-8191-9a28bc73bb40",
  "kind": "theorem",
  "lexical_name": "HSS_requires_mature_matching",
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
  "slug": "hss-requires-mature-matching--8280dcf3ef3da517e24919e0",
  "source": {
    "blob": "48e0ed3b3549c09af34f7190d5467009c331a22a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 37,
    "path": "GRWTSK/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8280dcf3ef3da517e24919e06d06f06144c45c47c55816f90e918edac9463ba1",
  "verification": {
    "reference": "docs/verification/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f797aa2b-ddb8-cc7c-8191-9a28bc73bb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HSS_requires_mature_matching (hHSS : HSS chosenWidth) :
    ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧ ∀ S : ℝ, 1024 ≤ S →
      ∃ T ∈ Set.Icc (S-8*Real.log 2) S, chosenWidth ≤ T ∧
        growthConstant*Real.exp T/(1+T)^2/2-C*(1+T)^q ≤
          matureEnergy chosenWidth T := by
  obtain ⟨C,q,hC,hq,h⟩ := hHSS
  refine ⟨C,q,hC,hq,fun S hS => ?_⟩
  obtain ⟨T,hTS,hT,hgrowth⟩ := actual_horizon_shell_energy_growth hS
  refine ⟨T,hTS,hT,?_⟩
  have hm := mature_lower_from_residual chosenWidth_valid hT (h T hT)
  change growthConstant*Real.exp T/(1+T)^2 ≤ horizonEnergy chosenWidth T at hgrowth
  linarith

end HSSCP04.Settlement
#print axioms HSSCP04.Settlement.signedCorrelationBudget_iff_HSS
#print axioms HSSCP04.Settlement.unsigned_settlement_budget_refuted
#print axioms HSSCP04.Settlement.HSS_requires_mature_matching
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e0ed3b3549c09af34f7190d5467009c331a22a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
