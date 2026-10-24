# HasFTaylorSeriesUpToOn.shift_of_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2c3a262-ebef-1e69-dcaf-88a4b105db32",
  "kind": "theorem",
  "lexical_name": "HasFTaylorSeriesUpToOn.shift_of_succ",
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
  "slug": "hasftaylorseriesuptoon-shift-of-succ--2267d905398885634d635ccc",
  "source": {
    "blob": "cde8f41f1b1a5c7d8cb9e18da39fa2a98aa92148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 284,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Varianta385615b6b9314f37c4ead6da10957087d86922a45b88d39cf36186533d86407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2267d905398885634d635ccc29d899c6f07a684a1bcac110df9fdc64f9520faf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Varianta385615b6b9314f37c4ead6da10957087d86922a45b88d39cf36186533d86407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2c3a262-ebef-1e69-dcaf-88a4b105db32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasFTaylorSeriesUpToOn.shift_of_succ
    {n : ℕ} (H : HasFTaylorSeriesUpToOn (n + 1 : ℕ) f p s) :
    (HasFTaylorSeriesUpToOn n (fun x => continuousMultilinearCurryFin1 𝕜 E F (p x 1))
      (fun x => (p x).shift)) s := by
  constructor
  · intro x _
    rfl
  · intro m (hm : (m : WithTop ℕ∞) < n) x (hx : x ∈ s)
    have A : (m.succ : WithTop ℕ∞) < n.succ := by
      rw [Nat.cast_lt] at hm ⊢
      exact Nat.succ_lt_succ hm
    change HasFDerivWithinAt (continuousMultilinearCurryRightEquiv' 𝕜 m E F ∘ (p · m.succ))
      (p x m.succ.succ).curryRight.curryLeft s x
    rw [(continuousMultilinearCurryRightEquiv' 𝕜 m E F).comp_hasFDerivWithinAt_iff']
    convert H.fderivWithin _ A x hx
    ext y v
    change p x (m + 2) (snoc (cons y (init v)) (v (last _))) = p x (m + 2) (cons y v)
    rw [← cons_snoc_eq_snoc_cons, snoc_init_self]
  · intro m (hm : (m : WithTop ℕ∞) ≤ n)
    suffices A : ContinuousOn (p · (m + 1)) s from
      (continuousMultilinearCurryRightEquiv' 𝕜 m E F).continuous.comp_continuousOn A
    refine H.cont _ ?_
    rw [Nat.cast_le] at hm ⊢
    exact Nat.succ_le_succ hm

/-- `p` is a Taylor series of `f` up to `n+1` if and only if `p.shift` is a Taylor series up to `n`
for `p 1`, which is a derivative of `f`. Version for `n : ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Varianta385615b6b9314f37c4ead6da10957087d86922a45b88d39cf36186533d86407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Varianta385615b6b9314f37c4ead6da10957087d86922a45b88d39cf36186533d86407.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cde8f41f1b1a5c7d8cb9e18da39fa2a98aa92148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
