# toFun_tendsto_zero_of_head_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84ad94f8-e90b-fcbf-0c7b-44bce9b13b78",
  "kind": "theorem",
  "lexical_name": "toFun_tendsto_zero_of_head_neg",
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
  "slug": "tofun-tendsto-zero-of-head-neg--9cb4131461699bd5b0aed376",
  "source": {
    "blob": "6fb7e38b81e71ee37764dc87843139daa509c4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 267,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cb4131461699bd5b0aed37645fe2a82be18f8d861b523945c44cdd4af7a92a4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84ad94f8-e90b-fcbf-0c7b-44bce9b13b78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFun_tendsto_zero_of_head_neg {exps_hd : ℝ} {exps_tl : UnitMonomial} {basis_hd : ℝ → ℝ}
    {basis_tl : Basis}
    (h_basis : WellFormedBasis (basis_hd :: basis_tl))
    (h_nonzero : exps_hd < 0) :
    Tendsto (UnitMonomial.toFun (exps_hd :: exps_tl) (basis_hd :: basis_tl)) atTop (𝓝 0) := by
  have h_equiv : Real.log ∘ toFun (exps_hd :: exps_tl) (basis_hd :: basis_tl) ~[atTop]
      exps_hd • Real.log ∘ basis_hd :=
    (toLogFun_isEquivalent_of_nonzero_head h_basis h_nonzero.ne).congr_left
      (log_toFun_eq_toLogFun h_basis).symm
  suffices h_log : Tendsto (Real.log ∘ toFun (exps_hd :: exps_tl) (basis_hd :: basis_tl))
      atTop atBot by
    have hmono := Real.tendsto_exp_atBot.comp h_log
    apply Filter.Tendsto.congr' _ hmono
    apply (toFun_pos (m := (exps_hd :: exps_tl)) h_basis).mono
    intro x hx
    simp only [Function.comp_apply]
    exact Real.exp_log hx
  apply IsEquivalent.tendsto_atBot h_equiv.symm
  have h_log_atTop : Tendsto (Real.log ∘ basis_hd) atTop atTop :=
    Tendsto.comp Real.tendsto_log_atTop (h_basis.tendsto_atTop (by simp))
  exact Filter.Tendsto.const_mul_atTop_of_neg h_nonzero h_log_atTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fb7e38b81e71ee37764dc87843139daa509c4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
