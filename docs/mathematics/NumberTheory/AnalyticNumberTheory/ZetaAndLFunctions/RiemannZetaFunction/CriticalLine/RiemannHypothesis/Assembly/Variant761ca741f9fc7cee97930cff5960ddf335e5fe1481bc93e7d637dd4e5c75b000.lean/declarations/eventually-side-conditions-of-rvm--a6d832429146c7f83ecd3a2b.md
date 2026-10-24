# eventually_side_conditions_of_rvm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5c68cb9-c334-8373-9314-daa63a8f5a86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c277fa61-c196-64e8-326b-99e217a2f38a",
  "kind": "theorem",
  "lexical_name": "eventually_side_conditions_of_rvm",
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
  "slug": "eventually-side-conditions-of-rvm--a6d832429146c7f83ecd3a2b",
  "source": {
    "blob": "48f192ac51d33c4dd49f21a3ece15426538bd026",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6d832429146c7f83ecd3a2bfddf3a774bed1be7d3daa08ff2b70a16f50e0f23",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c277fa61-c196-64e8-326b-99e217a2f38a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_side_conditions_of_rvm :
    (∀ᶠ T in atTop, 1 - 2 * P.w / P.L T ≤ P.a T ∧ P.a T ≤ 1) ∧
    (∃ C : ℝ, ∀ᶠ T in atTop, (NII Z T : ℝ) ≤ C * Real.sqrt T * l T) := by
  have hwL : ∀ᶠ T in atTop, 8 * P.w ≤ P.L T := (tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop _
  refine ⟨?_, ?_⟩
  · filter_upwards [hwL] with T hwL
    exact ⟨(Params.one_sub_le_b hP hwL).trans (Params.b_le_a hP hwL), Params.a_le_one hP hwL⟩
  · obtain ⟨A₀, hA₀, hloc⟩ := hR.local_count
    exact Tail.eventually_NII_le Z hA₀ hloc

include hR hP hlam in
/-- **(2 − κ − ε)·N(T,2T) ≤ N₀ˢ(T,2T)** at fixed λ ∈ (0,1), flat window, abstract Z, from GzMoments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Assembly/Variant761ca741f9fc7cee97930cff5960ddf335e5fe1481bc93e7d637dd4e5c75b000.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f192ac51d33c4dd49f21a3ece15426538bd026` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
