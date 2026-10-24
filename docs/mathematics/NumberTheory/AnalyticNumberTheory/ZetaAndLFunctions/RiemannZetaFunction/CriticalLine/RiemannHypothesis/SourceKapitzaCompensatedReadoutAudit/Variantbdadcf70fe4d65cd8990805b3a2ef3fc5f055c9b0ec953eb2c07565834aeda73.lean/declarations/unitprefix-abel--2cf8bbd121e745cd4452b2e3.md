# unitPrefix_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1717b0cf-f53d-80b9-499e-2aac9256ddf9",
  "kind": "theorem",
  "lexical_name": "unitPrefix_abel",
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
  "slug": "unitprefix-abel--2cf8bbd121e745cd4452b2e3",
  "source": {
    "blob": "25c30bcc195560427c2f6bdc792aae59f8120a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadoutAudit/Variantbdadcf70fe4d65cd8990805b3a2ef3fc5f055c9b0ec953eb2c07565834aeda73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cf8bbd121e745cd4452b2e3e1a64a733c9ea2ce17f1350ea007c177bc46a380",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadoutAudit/Variantbdadcf70fe4d65cd8990805b3a2ef3fc5f055c9b0ec953eb2c07565834aeda73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1717b0cf-f53d-80b9-499e-2aac9256ddf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitPrefix_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ s in 0..b, unitPrefix s * deriv F s) =
      ∑ n ∈ primePowerInventory b, (F b - F (Real.log n)) := by
  have ht := integral_finite_steps_deriv 0 b (primePowerInventory b)
    (fun n => Real.log n) (fun _ => (1 : ℝ))
    (fun n hn => mangoldtInventory_log_bounds b n hn) F hF
  have he : (∫ s in 0..b, unitPrefix s * deriv F s) =
      ∫ s in 0..b, ∑ n ∈ primePowerInventory b,
        (1 : ℝ) * (if Real.log n ≤ s then deriv F s else 0) := by
    apply intervalIntegral.integral_congr
    intro s hs
    simpa using unitPrefix_mul_eq_steps b s (deriv F s) ((uIcc_of_le hb ▸ hs).2)
  simpa only [one_mul] using he.trans ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadoutAudit/Variantbdadcf70fe4d65cd8990805b3a2ef3fc5f055c9b0ec953eb2c07565834aeda73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCompensatedReadoutAudit/Variantbdadcf70fe4d65cd8990805b3a2ef3fc5f055c9b0ec953eb2c07565834aeda73.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c30bcc195560427c2f6bdc792aae59f8120a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
