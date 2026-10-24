# poleContribution_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9865cf1-3164-0ed5-1b54-a121ce310331",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5284d95c-a145-6a22-23e8-a0c48492b7a5",
  "kind": "theorem",
  "lexical_name": "poleContribution_tendsto",
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
  "slug": "polecontribution-tendsto--573e070ce59bc8c9765da083",
  "source": {
    "blob": "7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 151,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:573e070ce59bc8c9765da08369937bedbce6f0beaf23b6202d9385d4159ffa0a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5284d95c-a145-6a22-23e8-a0c48492b7a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleContribution_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ BridgeAdmissibility.realPoleContribution
      (smoothedTest A (ε i) (hε i))) l
      (𝓝 (BridgeAdmissibility.realPoleContribution (actualTest A))) := by
  have hp := weighted_integral_tendsto A hA
    (continuous_id.div_const 2).rexp ε hε hlim
  have hn := weighted_integral_tendsto A hA
    (continuous_id.neg.div_const 2).rexp ε hε hlim
  exact (tendsto_const_nhds.mul hp).mul hn

/-- Every fixed finite strict cutoff, in particular R=A+1, passes through correlation convergence.
The coefficients, square roots, floor, strict inequality, and all atoms are unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variante468a1694d5160c3005bc6226eb88190f979f607f1682e0058ee54c4cf139bb9.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e34dfb74ec0d1e00e44f6bb7bc8929b5563a65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
