# two_point_correction_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:563a64ea-1964-9156-28e4-f6f97fa9080b",
  "kind": "theorem",
  "lexical_name": "two_point_correction_unique",
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
  "slug": "two-point-correction-unique--cc4e50cb543e71316c741724",
  "source": {
    "blob": "7b45257c7da537071990aee8b613f59b19ebf507",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 52,
    "path": "GRWTSK/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc4e50cb543e71316c741724424e1d1807e308d4f4bbf83ce08cb93af3fce302",
  "verification": {
    "reference": "docs/verification/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:563a64ea-1964-9156-28e4-f6f97fa9080b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_point_correction_unique (U : ℕ) (kappa : ℝ) {q : ℕ} (hq : 2 ≤ q)
    {rOne rQ : ℝ} (hzero : rOne + rQ / q = momentZero U)
    (hone : rQ * Real.log q / q = momentOne U + kappa) :
    rOne = atOne U kappa q ∧ rQ = atQ U kappa q := by
  have hq0 : (q : ℝ) ≠ 0 := by exact_mod_cast (by omega : q ≠ 0)
  have hlog := (log_q_pos hq).ne'
  have hrQ : rQ = atQ U kappa q := by
    unfold atQ
    apply (eq_div_iff hlog).mpr
    field_simp [hq0] at hone
    nlinarith
  constructor
  · unfold atOne
    rw [hrQ] at hzero
    unfold atQ at hzero
    field_simp [hq0, hlog] at hzero ⊢
    nlinarith
  · exact hrQ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/UnitJetCorrection/Variant7d3b80aa81c0c0bfc5079abe85e173edc795107314c56a1120faf9b55331c092.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b45257c7da537071990aee8b613f59b19ebf507` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
