# classical_pnt_envelope_dominates_quarter_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:513467e9-80c4-57e3-2000-120b90bb2322",
  "kind": "theorem",
  "lexical_name": "classical_pnt_envelope_dominates_quarter_power",
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
  "slug": "classical-pnt-envelope-dominates-quarter-power--6dbd03ce0d0053e0345de191",
  "source": {
    "blob": "e81a1c9c8f040b0571e0b93e3c7e7d8bc7392b99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dbd03ce0d0053e0345de191edcdf3c9a5873728557768fb98af6dbfb23c4e43",
  "verification": {
    "reference": "docs/verification/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:513467e9-80c4-57e3-2000-120b90bb2322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classical_pnt_envelope_dominates_quarter_power {c x : ℝ}
    (_hc : 0 ≤ c) (hx : 0 < x) (hlog : 16 * c ^ 2 ≤ Real.log x) :
    x ^ (-1 / 4 : ℝ) ≤ envelope c x := by
  have ht : 0 ≤ Real.log x := by nlinarith
  have hs := Real.sq_sqrt ht
  have hroot : 4 * c ≤ Real.sqrt (Real.log x) := by
    nlinarith [Real.sqrt_nonneg (Real.log x)]
  have hcompare : c * Real.sqrt (Real.log x) ≤ Real.log x / 4 := by
    nlinarith [mul_nonneg (Real.sqrt_nonneg (Real.log x)) (sub_nonneg.mpr hroot)]
  rw [Real.rpow_def_of_pos hx, envelope]
  apply Real.exp_le_exp.mpr
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ClassicalPNTEnvelopeDominance/Variant6ae3547717f6ef98f9f129ba40eb04979d4f748527ecae7ac9a0e9d9a4cbd961.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e81a1c9c8f040b0571e0b93e3c7e7d8bc7392b99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
