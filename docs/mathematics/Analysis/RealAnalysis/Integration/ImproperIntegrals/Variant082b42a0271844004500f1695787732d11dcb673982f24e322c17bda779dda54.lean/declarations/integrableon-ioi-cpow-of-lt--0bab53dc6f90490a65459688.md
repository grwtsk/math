# integrableOn_Ioi_cpow_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceaa1c18-6626-cf08-6182-93cb95aba2c0",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioi_cpow_of_lt",
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
  "slug": "integrableon-ioi-cpow-of-lt--0bab53dc6f90490a65459688",
  "source": {
    "blob": "337b2c51cd4c2bcb1a2cdb2927bcc5b38e11145d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bab53dc6f90490a6545968815ca380d4a8b8089c665ef1b27c3481a95859a9b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceaa1c18-6626-cf08-6182-93cb95aba2c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioi_cpow_of_lt {a : ℂ} (ha : a.re < -1) {c : ℝ} (hc : 0 < c) :
    IntegrableOn (fun t : ℝ => (t : ℂ) ^ a) (Ioi c) := by
  rw [IntegrableOn, ← integrable_norm_iff, ← IntegrableOn]
  refine' (integrableOn_Ioi_rpow_of_lt ha hc).congr_fun (fun x hx => _) measurableSet_Ioi
  · dsimp only
    rw [Complex.norm_eq_abs, Complex.abs_cpow_eq_rpow_re_of_pos (hc.trans hx)]
  · refine' ContinuousOn.aestronglyMeasurable (fun t ht => _) measurableSet_Ioi
    exact
      (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr (hc.trans ht).ne')).continuousWithinAt
#align integrable_on_Ioi_cpow_of_lt integrableOn_Ioi_cpow_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ImproperIntegrals/Variant082b42a0271844004500f1695787732d11dcb673982f24e322c17bda779dda54.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337b2c51cd4c2bcb1a2cdb2927bcc5b38e11145d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
