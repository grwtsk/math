# actualHalfExponentialFarPeriodicWork_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0d4f1f8-41b9-1e24-a874-0d364ca0b97f",
  "kind": "theorem",
  "lexical_name": "actualHalfExponentialFarPeriodicWork_abs_le",
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
  "slug": "actualhalfexponentialfarperiodicwork-abs-le--0c3d9c6ccacd9d3fc8f8f4f2",
  "source": {
    "blob": "4faba31a0149b80929bbf8a0de063fd67d055f3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 279,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c3d9c6ccacd9d3fc8f8f4f2907fc425e02d23599e25183c27d152e446ccd30d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d4f1f8-41b9-1e24-a874-0d364ca0b97f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfExponentialFarPeriodicWork_abs_le {A : ℝ} (hA : 25600 ≤ A) :
    |actualFarPeriodicWork A (actualHalfExponentialPeriodicCutoff A)| ≤
      402 * (Real.log 4 + 4 + Real.log 2) := by
  obtain ⟨h2, hU, hK⟩ := actualHalfExponentialPeriodicCutoff_orders hA
  have h := actualFarPeriodicWork_edge_abs_le (by linarith : 91 ≤ A) h2 hU hK
  apply h.trans_eq
  unfold actualHalfExponentialPeriodicCutoff
  have he : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he]
  field_simp

end
end FormalResearch.RiemannHypothesis.ActualPeriodicHalfExponentialFar
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualPeriodicHalfExponentialFarAttempt06/Variant0925309d80e154b094fb9771d484bdceb4a8ea401299aa70b91f82433abaf670.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4faba31a0149b80929bbf8a0de063fd67d055f3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
