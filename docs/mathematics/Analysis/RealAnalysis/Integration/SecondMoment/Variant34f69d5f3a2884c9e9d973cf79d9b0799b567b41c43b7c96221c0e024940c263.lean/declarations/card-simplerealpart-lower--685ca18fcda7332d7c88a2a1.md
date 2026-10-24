# card_simpleRealPart_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bca39960-9f50-85d1-db2e-c952c8511df4",
  "kind": "theorem",
  "lexical_name": "card_simpleRealPart_lower",
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
  "slug": "card-simplerealpart-lower--685ca18fcda7332d7c88a2a1",
  "source": {
    "blob": "24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 337,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:685ca18fcda7332d7c88a2a17cf58cf266208089a5b923753eeaeef8a0e5b83e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bca39960-9f50-85d1-db2e-c952c8511df4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_simpleRealPart_lower (h : IsAdmissible lam eta)
    (hZ : IsConjInvariant Z m) (_hZne : Z.Nonempty) :
    2 * (∑ z ∈ Z, (m z : ℝ))
        - (∑ z ∈ Z, ∑ s ∈ Z,
            (m z * m s : ℂ) * testKernel eta (z - s) ^ 2).re
      ≤ ((simpleRealPart Z m).card : ℝ) := by
  classical
  obtain ⟨psi, hb, hsym⟩ := exists_symmetric_adapted_basis h Z m
  let a : Fin (Module.finrank ℂ (subspaceW h Z m)) → ℝ :=
    fun j => (alphaOf eta lam Z m (psi j)).re
  have hdUV : Module.finrank ℂ (subspaceU h Z m) ≤
      Module.finrank ℂ (subspaceV h Z m) :=
    Submodule.finrank_mono (subspaceU_le_subspaceV h Z m)
  have hdVN : Module.finrank ℂ (subspaceV h Z m) ≤
      Module.finrank ℂ (subspaceW h Z m) :=
    Submodule.finrank_mono (subspaceV_le_subspaceW h Z m)
  have hrange := three_range_simple a hdUV hdVN
    (finrank_subspaceU_le h hZ) (finrank_subspaceV_le h Z m)
    (sum_alphaOf_re_first_lower h hZ hb hsym)
    (fun j hj => alphaOf_re_nonpos h hZ hb (hsym j) hj)
  have htotal := sum_alphaOf_re_eq_sum_mult h hZ hb hsym
  have hbessel := sum_alphaOf_re_sq_le_integral_norm_bigF_sq_adapted h Z m hZ hb hsym
  have hmoment := sum_testKernel_sq_re_eq_integral_norm_bigF_sq h hZ
  change 2 * (∑ j, a j) - ((simpleRealPart Z m).card : ℝ)
      ≤ ∑ j, a j ^ 2 at hrange
  change ∑ j, a j = ∑ z ∈ Z, (m z : ℝ) at htotal
  change ∑ j, a j ^ 2 ≤ _ at hbessel
  rw [← hmoment] at hbessel
  linarith

/-- The numerical three-range estimate used for the distinct-point bound.

Compared with `three_range_simple`, all three ranges retain a factor four. On the middle range,
the upper bound on its coefficient sum supplies the extra factor two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
