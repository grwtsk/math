# exists_ne_one_smul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e9b5177031108464bab07bc7c073dd351f89dd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7d063f4-37f1-afe6-c7cb-9cecc3248f5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fc3b453-9939-8aea-4657-ae97e5312640",
  "kind": "theorem",
  "lexical_name": "exists_ne_one_smul_eq",
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
  "slug": "exists-ne-one-smul-eq--1e2928f41d1e9dc7d3179386",
  "source": {
    "blob": "5e9b5177031108464bab07bc7c073dd351f89dd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 439,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e2928f41d1e9dc7d3179386fcebfedebc502634819bf954fb521606aeb348de",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc3b453-9939-8aea-4657-ae97e5312640`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_one_smul_eq (hs : IsFundamentalDomain G s μ) (htm : NullMeasurableSet t μ)
    (ht : μ s < μ t) : ∃ x ∈ t, ∃ y ∈ t, ∃ g, g ≠ (1 : G) ∧ g • x = y := by
  contrapose! ht
  refine hs.measure_le_of_pairwise_disjoint htm (Pairwise.aedisjoint fun g₁ g₂ hne => ?_)
  dsimp [Function.onFun]
  refine (Disjoint.inf_left _ ?_).inf_right _
  rw [Set.disjoint_left]
  rintro _ ⟨x, hx, rfl⟩ ⟨y, hy, hxy : g₂ • y = g₁ • x⟩
  refine ht x hx y hy (g₂⁻¹ * g₁) (mt inv_mul_eq_one.1 hne.symm) ?_
  rw [mul_smul, ← hxy, inv_smul_smul]

/-- If `f` is invariant under the action of a countable group `G`, and `μ` is a `G`-invariant
  measure with a fundamental domain `s`, then the `essSup` of `f` restricted to `s` is the same as
  that of `f` on all of its domain. -/
@[to_additive /-- If `f` is invariant under the action of a countable additive group `G`, and `μ`
  is a `G`-invariant measure with a fundamental domain `s`, then the `essSup` of `f` restricted to
  `s` is the same as that of `f` on all of its domain. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant8e98b10408bbcb7249d39e7a3160e4881f67183407edcf4c8baabf1f15443c6f.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e9b5177031108464bab07bc7c073dd351f89dd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
