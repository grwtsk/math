# rnDeriv_eq_zero_of_mutuallySingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37761c5d-054a-261b-8f01-d89b7a157484",
  "kind": "lemma",
  "lexical_name": "rnDeriv_eq_zero_of_mutuallySingular",
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
  "slug": "rnderiv-eq-zero-of-mutuallysingular--efc7bbe52b2a4ddd21e851bf",
  "source": {
    "blob": "b954d3293cfdd64aef6ac7ddef1e400e41990636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efc7bbe52b2a4ddd21e851bf041924c714a27510e17995ddc0ca4525bdb1f94a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37761c5d-054a-261b-8f01-d89b7a157484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_eq_zero_of_mutuallySingular {ν' : Measure α} [HaveLebesgueDecomposition μ ν']
    [SigmaFinite ν'] (h : μ ⟂ₘ ν) (hνν' : ν ≪ ν') :
    μ.rnDeriv ν' =ᵐ[ν] 0 := by
  let t := h.nullSet
  have ht : MeasurableSet t := h.measurableSet_nullSet
  refine ae_of_ae_restrict_of_ae_restrict_compl t ?_ (by simp [t])
  change μ.rnDeriv ν' =ᵐ[ν.restrict t] 0
  have : μ.rnDeriv ν' =ᵐ[ν.restrict t] (μ.restrict t).rnDeriv ν' := by
    have h : (μ.restrict t).rnDeriv ν' =ᵐ[ν] t.indicator (μ.rnDeriv ν') :=
      hνν'.ae_le (rnDeriv_restrict μ ν' ht)
    rw [Filter.EventuallyEq, ae_restrict_iff' ht]
    filter_upwards [h] with x hx hxt
    rw [hx, Set.indicator_of_mem hxt]
  refine this.trans ?_
  simp only [t, MutuallySingular.restrict_nullSet]
  suffices (0 : Measure α).rnDeriv ν' =ᵐ[ν'] 0 by
    have h_ac' : ν.restrict t ≪ ν' := restrict_le_self.absolutelyContinuous.trans hνν'
    exact h_ac'.ae_le this
  exact rnDeriv_zero _

variable (μ ν) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b954d3293cfdd64aef6ac7ddef1e400e41990636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
