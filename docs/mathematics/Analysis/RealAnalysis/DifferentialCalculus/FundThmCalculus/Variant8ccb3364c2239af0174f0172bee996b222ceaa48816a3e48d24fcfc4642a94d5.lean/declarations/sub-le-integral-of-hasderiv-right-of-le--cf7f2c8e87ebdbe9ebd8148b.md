# sub_le_integral_of_hasDeriv_right_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1228603-40ee-16b2-5b95-78ba5a1f4bd0",
  "kind": "theorem",
  "lexical_name": "sub_le_integral_of_hasDeriv_right_of_le",
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
  "slug": "sub-le-integral-of-hasderiv-right-of-le--cf7f2c8e87ebdbe9ebd8148b",
  "source": {
    "blob": "7d35e2d370a83108bc2aeea28317fc627be1e5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1088,
    "line": 1063,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf7f2c8e87ebdbe9ebd8148b4f02d3b25782b374e183c0a3ea638438581a5670",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1228603-40ee-16b2-5b95-78ba5a1f4bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1063–1088.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_le_integral_of_hasDeriv_right_of_le (hab : a ≤ b) (hcont : ContinuousOn g (Icc a b))
    (hderiv : ∀ x ∈ Ioo a b, HasDerivWithinAt g (g' x) (Ioi x) x) (φint : IntegrableOn φ (Icc a b))
    (hφg : ∀ x ∈ Ioo a b, g' x ≤ φ x) : g b - g a ≤ ∫ y in a..b, φ y := by
  -- This follows from the version on a closed-open interval (applied to `[t, b)` for `t` close to
  -- `a`) and a continuity argument.
  obtain rfl | a_lt_b := hab.eq_or_lt
  · simp
  set s := {t | g b - g t ≤ ∫ u in t..b, φ u} ∩ Icc a b
  have s_closed : IsClosed s := by
    have : ContinuousOn (fun t => (g b - g t, ∫ u in t..b, φ u)) (Icc a b) := by
      rw [← uIcc_of_le hab] at hcont φint ⊢
      exact (continuousOn_const.sub hcont).prodMk (continuousOn_primitive_interval_left φint)
    simp only [s, inter_comm]
    exact this.preimage_isClosed_of_isClosed isClosed_Icc isClosed_le_prod
  have A : closure (Ioc a b) ⊆ s := by
    apply s_closed.closure_subset_iff.2
    intro t ht
    refine ⟨?_, ⟨ht.1.le, ht.2⟩⟩
    exact
      sub_le_integral_of_hasDeriv_right_of_le_Ico ht.2 (hcont.mono (Icc_subset_Icc ht.1.le le_rfl))
        (fun x hx => hderiv x ⟨ht.1.trans_le hx.1, hx.2⟩)
        (φint.mono_set (Icc_subset_Icc ht.1.le le_rfl)) fun x hx => hφg x ⟨ht.1.trans_le hx.1, hx.2⟩
  rw [closure_Ioc a_lt_b.ne] at A
  exact (A (left_mem_Icc.2 hab)).1

/-- Auxiliary lemma in the proof of `integral_eq_sub_of_hasDeriv_right_of_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variant8ccb3364c2239af0174f0172bee996b222ceaa48816a3e48d24fcfc4642a94d5.lean#L1063).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d35e2d370a83108bc2aeea28317fc627be1e5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
