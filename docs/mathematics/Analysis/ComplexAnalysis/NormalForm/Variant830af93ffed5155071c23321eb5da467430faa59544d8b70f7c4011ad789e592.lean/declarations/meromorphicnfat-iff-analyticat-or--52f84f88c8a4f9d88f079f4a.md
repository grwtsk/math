# meromorphicNFAt_iff_analyticAt_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc74fa01-b238-f9ba-f0b0-70194a0d82dc",
  "kind": "theorem",
  "lexical_name": "meromorphicNFAt_iff_analyticAt_or",
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
  "slug": "meromorphicnfat-iff-analyticat-or--52f84f88c8a4f9d88f079f4a",
  "source": {
    "blob": "6eb19e8cec95b101020b7e6f35cc4c2fea2ab545",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 57,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f84f88c8a4f9d88f079f4a589fbbb553cdee0e0058aceac3b5105e79096c22",
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

Occurrence: `result:dc74fa01-b238-f9ba-f0b0-70194a0d82dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicNFAt_iff_analyticAt_or :
    MeromorphicNFAt f x ↔
      AnalyticAt 𝕜 f x ∨ (MeromorphicAt f x ∧ meromorphicOrderAt f x < 0 ∧ f x = 0) := by
  constructor
  · rintro (h | ⟨n, g, h₁g, h₂g, h₃g⟩)
    · simp [(analyticAt_congr h).2 analyticAt_const]
    · have hf : MeromorphicAt f x := by
        apply MeromorphicAt.congr _ (h₃g.filter_mono nhdsWithin_le_nhds).symm
        fun_prop
      have : meromorphicOrderAt f x = n := by
        rw [meromorphicOrderAt_eq_int_iff hf]
        use g, h₁g, h₂g
        exact eventually_nhdsWithin_of_eventually_nhds h₃g
      by_cases hn : 0 ≤ n
      · left
        rw [analyticAt_congr h₃g]
        apply (AnalyticAt.zpow_nonneg (by fun_prop) hn).smul h₁g
      · right
        use hf
        simp [this, WithTop.coe_lt_zero.2 (not_le.1 hn), h₃g.eq_of_nhds,
          zero_zpow n (ne_of_not_le hn).symm]
  · rintro (h | ⟨h₁, h₂, h₃⟩)
    · by_cases h₂f : analyticOrderAt f x = ⊤
      · rw [analyticOrderAt_eq_top] at h₂f
        tauto
      · right
        use analyticOrderNatAt f x
        have : analyticOrderAt f x ≠ ⊤ := h₂f
        rw [← ENat.coe_toNat_eq_self, eq_comm, h.analyticOrderAt_eq_natCast] at this
        obtain ⟨g, h₁g, h₂g, h₃g⟩ := this
        use g, h₁g, h₂g
        simpa
    · right
      lift meromorphicOrderAt f x to ℤ using LT.lt.ne_top h₂ with n hn
      obtain ⟨g, h₁g, h₂g, h₃g⟩ := (meromorphicOrderAt_eq_int_iff h₁).1 hn.symm
      use n, g, h₁g, h₂g
      filter_upwards [eventually_nhdsWithin_iff.1 h₃g]
      intro z hz
      by_cases h₁z : z = x
      · simp only [h₁z, h₂, Pi.smul_apply', Pi.pow_apply, sub_self]
        rw [h₃]
        apply (smul_eq_zero_of_left (zero_zpow n _) (g x)).symm
        by_contra hCon
        simp [hCon] at h₂
      · exact hz h₁z

/-!
## Relation to other properties of functions
-/

/-- If a function is meromorphic in normal form at `x`, then it is meromorphic at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb19e8cec95b101020b7e6f35cc4c2fea2ab545` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
