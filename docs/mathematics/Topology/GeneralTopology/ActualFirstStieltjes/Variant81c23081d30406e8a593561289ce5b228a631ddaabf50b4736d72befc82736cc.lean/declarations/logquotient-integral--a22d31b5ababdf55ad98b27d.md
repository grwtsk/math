# logQuotient_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdaf34a5-e2ac-be99-6bba-f7dd52e61e4f",
  "kind": "theorem",
  "lexical_name": "logQuotient_integral",
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
  "slug": "logquotient-integral--a22d31b5ababdf55ad98b27d",
  "source": {
    "blob": "af7dde4762b69aac4db1925dbd71d37aebcb0da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a22d31b5ababdf55ad98b27d0d41bb2765f0d4ee9fd5d267d621c9e76d1b89ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdaf34a5-e2ac-be99-6bba-f7dd52e61e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logQuotient_integral {a b : ℝ} (ha : 4 ≤ a) (hb : 4 ≤ b) :
    (∫ x in a..b, logQuotient x) = (Real.log b)^2 / 2 - (Real.log a)^2 / 2 := by
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
    (f := fun x : ℝ => (Real.log x)^2 / 2) (f' := logQuotient)
  · intro x hx
    have hx4 : 4 ≤ x := by
      rcases le_total a b with h | h
      · rw [uIcc_of_le h] at hx
        exact ha.trans hx.1
      · rw [uIcc_of_ge h] at hx
        exact hb.trans hx.1
    have h := ((Real.hasDerivAt_log (by linarith : x ≠ 0)).pow 2).div_const 2
    exact h.congr_deriv (by simp only [logQuotient]; ring)
  · exact logQuotient_intervalIntegrable ha hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af7dde4762b69aac4db1925dbd71d37aebcb0da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
