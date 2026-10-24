# setIntegral_Icc_eq_headIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9600ed3-5580-1d30-c147-5e43dd28fcfd",
  "kind": "lemma",
  "lexical_name": "setIntegral_Icc_eq_headIntegral",
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
  "slug": "setintegral-icc-eq-headintegral--fd5759eb1c04d1a41ebf8df8",
  "source": {
    "blob": "33ec055aa2c759d65f9d2644d6015390827eec4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 338,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd5759eb1c04d1a41ebf8df818cc22d37211fbf8513b1c934d3c7e28f9b04324",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9600ed3-5580-1d30-c147-5e43dd28fcfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_Icc_eq_headIntegral
    (k : ℕ) (w : ℂ) :
    (∫ A : ℝ in Icc 0 1,
      (A : ℂ) ^ k * Complex.exp (-w * (A : ℂ))) =
      headIntegral k w := by
  rw [MeasureTheory.integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le
      (by norm_num : (0 : ℝ) ≤ 1)]
  rfl

/-- Second analytic B3.3 checkpoint: exact equation-(19) regular-part identity
for every `w ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ec055aa2c759d65f9d2644d6015390827eec4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
