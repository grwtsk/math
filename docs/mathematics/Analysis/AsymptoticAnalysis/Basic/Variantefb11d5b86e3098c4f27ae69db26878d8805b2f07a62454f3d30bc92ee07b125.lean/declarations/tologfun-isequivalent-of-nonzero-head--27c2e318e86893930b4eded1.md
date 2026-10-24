# toLogFun_isEquivalent_of_nonzero_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:764e7bcb-2139-1804-eb63-302a16652c86",
  "kind": "theorem",
  "lexical_name": "toLogFun_isEquivalent_of_nonzero_head",
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
  "slug": "tologfun-isequivalent-of-nonzero-head--27c2e318e86893930b4eded1",
  "source": {
    "blob": "6fb7e38b81e71ee37764dc87843139daa509c4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 223,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27c2e318e86893930b4eded159d1c2c8cff50a54f1e71b5ce6d75afaa3ac635c",
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

Occurrence: `result:764e7bcb-2139-1804-eb63-302a16652c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toLogFun_isEquivalent_of_nonzero_head {exps_hd : ℝ} {exps_tl : UnitMonomial}
    {basis_hd : ℝ → ℝ} {basis_tl : Basis} (h_basis : WellFormedBasis (basis_hd :: basis_tl))
    (h_nonzero : exps_hd ≠ 0) :
    UnitMonomial.toLogFun (exps_hd :: exps_tl) (basis_hd :: basis_tl) ~[atTop]
      exps_hd • log ∘ basis_hd := by
  simp only [toLogFun_cons]
  apply IsEquivalent.refl.add_isLittleO
  apply IsLittleO.const_mul_right' (isUnit_iff_ne_zero.mpr h_nonzero)
  have hlo : ∀ b ∈ basis_tl, (Real.log ∘ b) =o[atTop] (Real.log ∘ basis_hd) :=
    fun b hb => h_basis.tail_isLittleO_head hb
  clear h_basis
  induction exps_tl generalizing basis_tl with
  | nil =>
    simp only [toLogFun_nil]
    exact Asymptotics.isLittleO_zero _ _
  | cons e es ih =>
    cases basis_tl with
    | nil =>
      simp only [toLogFun_nil_basis]
      exact Asymptotics.isLittleO_zero _ _
    | cons b bs =>
      exact (IsLittleO.const_mul_left (hlo b (by simp)) e).add (ih (by grind))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fb7e38b81e71ee37764dc87843139daa509c4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
