# integral_exp_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5110847f-eded-872d-f5bf-e2108ba7c0d6",
  "kind": "theorem",
  "lexical_name": "integral_exp_mul",
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
  "slug": "integral-exp-mul--478189b74bb312c51d42f75a",
  "source": {
    "blob": "1c897fb5cce4c4c0f77fdc2e7464b99bd71911b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 41,
    "path": "GRWTSK/Analysis/Integration/ExponentialInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:478189b74bb312c51d42f75a0bafac5ad5df7558759680a92ed787860b4ad8c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExponentialInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5110847f-eded-872d-f5bf-e2108ba7c0d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_exp_mul {a : ℝ} (ha : a ≠ 0) (b c : ℝ) :
    (∫ u in b..c, Real.exp (a * u)) =
      (Real.exp (a * c) - Real.exp (a * b)) / a := by
  have h := integral_exp_neg_mul (a := -a) (neg_ne_zero.mpr ha) b c
  simp only [neg_neg] at h
  rw [h]
  field_simp [ha]
  ring

end GRWTSK.Analysis.Integration.ExponentialInterval

#print axioms GRWTSK.Analysis.Integration.ExponentialInterval.integral_exp_neg_mul
#print axioms GRWTSK.Analysis.Integration.ExponentialInterval.integral_exp_mul
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/ExponentialInterval.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c897fb5cce4c4c0f77fdc2e7464b99bd71911b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
