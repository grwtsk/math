# logQuotient_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:543444e0-8bd6-8b91-9ebf-50c3bedc9340",
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
  "slug": "logquotient-integral--063fc8a74480f12f48b37a0b",
  "source": {
    "blob": "73257a70d761c6641abf20f75b2abe747238faf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:063fc8a74480f12f48b37a0bc552405572a68d3c149d31535cb6d302f47c3a13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:543444e0-8bd6-8b91-9ebf-50c3bedc9340`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

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
    exact h.congr_deriv (by simp only [logQuotient, pow_one]; ring)
  · exact logQuotient_intervalIntegrable ha hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73257a70d761c6641abf20f75b2abe747238faf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
