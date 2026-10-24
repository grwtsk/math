# meromorphicNFAt_toMeromorphicNFAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7cb28aa-a471-8731-ce14-843c780066aa",
  "kind": "theorem",
  "lexical_name": "meromorphicNFAt_toMeromorphicNFAt",
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
  "slug": "meromorphicnfat-tomeromorphicnfat--d594557cd1404a9f02baf0a4",
  "source": {
    "blob": "6eb19e8cec95b101020b7e6f35cc4c2fea2ab545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 313,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d594557cd1404a9f02baf0a40c6a86d677ac5dbb9c8a31115eb8ff6f41b7aa2f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7cb28aa-a471-8731-ce14-843c780066aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicNFAt_toMeromorphicNFAt :
    MeromorphicNFAt (toMeromorphicNFAt f x) x := by
  by_cases hf : MeromorphicAt f x
  · by_cases h₂f : meromorphicOrderAt f x = ⊤
    · have : toMeromorphicNFAt f x =ᶠ[𝓝 x] 0 := by
        apply eventuallyEq_nhds_of_eventuallyEq_nhdsNE
        · exact hf.eq_nhdsNE_toMeromorphicNFAt.symm.trans (meromorphicOrderAt_eq_top_iff.1 h₂f)
        · simp [h₂f, toMeromorphicNFAt, hf]
      apply AnalyticAt.meromorphicNFAt
      rw [analyticAt_congr this]
      exact analyticAt_const
    · lift meromorphicOrderAt f x to ℤ using h₂f with n hn
      obtain ⟨g, h₁g, h₂g, h₃g⟩ := (meromorphicOrderAt_eq_int_iff hf).1 hn.symm
      right
      use n, g, h₁g, h₂g
      apply eventuallyEq_nhds_of_eventuallyEq_nhdsNE (hf.eq_nhdsNE_toMeromorphicNFAt.symm.trans h₃g)
      simp only [toMeromorphicNFAt, hf, ↓reduceDIte, ← hn, WithTop.coe_zero,
        WithTop.coe_eq_zero, ne_eq, Function.update_self, sub_self]
      split_ifs with h₃f
      · obtain ⟨h₁G, _, h₃G⟩ :=
          Classical.choose_spec ((meromorphicOrderAt_eq_int_iff hf).1 (h₃f ▸ hn.symm))
        apply Filter.EventuallyEq.eq_of_nhds
        apply (h₁G.continuousAt.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE (by fun_prop)).1
        filter_upwards [h₃g, h₃G]
        simp_all
      · simp [h₃f, zero_zpow]
  · simp only [toMeromorphicNFAt, hf, ↓reduceDIte]
    exact analyticAt_const.meromorphicNFAt

/-- If `f` has normal form at `x`, then `f` equals `f.toNF`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb19e8cec95b101020b7e6f35cc4c2fea2ab545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
