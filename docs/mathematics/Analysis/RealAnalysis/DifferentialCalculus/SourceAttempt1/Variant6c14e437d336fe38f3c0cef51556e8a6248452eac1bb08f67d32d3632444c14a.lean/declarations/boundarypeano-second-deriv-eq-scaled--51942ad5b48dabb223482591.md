# boundaryPeano_second_deriv_eq_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b46c4e1-988b-7915-29d3-faa8172cf77f",
  "kind": "theorem",
  "lexical_name": "boundaryPeano_second_deriv_eq_scaled",
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
  "slug": "boundarypeano-second-deriv-eq-scaled--51942ad5b48dabb223482591",
  "source": {
    "blob": "0b199a82edb1a09d4de4c2426799683d8205b7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51942ad5b48dabb223482591796d68d3369cdc5da384b9907d586ade74057426",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b46c4e1-988b-7915-29d3-faa8172cf77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem boundaryPeano_second_deriv_eq_scaled {A : ℝ}
    (hA : 0 < A) (y : ℝ) :
    deriv (deriv (boundaryPeano A)) y =
      peanoScale A * deriv (deriv (sourcePeanoPrimitive A)) (2 * A - y) := by
  have hp := sourcePeanoPrimitive_contDiff_two hA
  have hp1 : ContDiff ℝ 1 (deriv (sourcePeanoPrimitive A)) := hp.deriv'
  have hc (s : ℝ) : HasDerivAt (fun z => (2 : ℝ) * A - z) (-1) s := by
    simpa using (hasDerivAt_const s ((2 : ℝ) * A)).sub (hasDerivAt_id s)
  have hd : deriv (boundaryPeano A) =
      fun s => -peanoScale A * deriv (sourcePeanoPrimitive A) (2 * A - s) := by
    funext s
    have h := ((hp.differentiable (by norm_num) (2 * A - s)).hasDerivAt.comp s
      (hc s)).const_mul (peanoScale A)
    exact (h.congr_deriv (by ring)).deriv
  have h := ((hp1.differentiable (by norm_num) (2 * A - y)).hasDerivAt.comp y
    (hc y)).const_mul (-peanoScale A)
  rw [hd]
  exact (h.congr_deriv (by ring)).deriv

/-- Two reflection derivatives give a plus sign and the exact boundary exponential. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt1/Variant6c14e437d336fe38f3c0cef51556e8a6248452eac1bb08f67d32d3632444c14a.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b199a82edb1a09d4de4c2426799683d8205b7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
