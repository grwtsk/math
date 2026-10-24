# centeredLogPairing_eq_signedCesaroPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d99fb95-87b4-5408-cc37-195518035680",
  "kind": "theorem",
  "lexical_name": "centeredLogPairing_eq_signedCesaroPairing",
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
  "slug": "centeredlogpairing-eq-signedcesaropairing--88a98ff720ab797135045f09",
  "source": {
    "blob": "de6f7826d4dad062f2743a0302d3afb4935ee626",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a98ff720ab797135045f0903f6703507256cca8166dca3c2da1df491cf4733",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d99fb95-87b4-5408-cc37-195518035680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredLogPairing_eq_signedCesaroPairing (A : ℝ) (hA : 1 ≤ A) :
    centeredLogPairing A = signedCesaroPairing A := by
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hf := criticalPrimeTest_contDiff A (by linarith : 0 < A)
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable (Real.log 2) (2 * A)
    hL (criticalPrimeTest A) hf
  have hd : IntervalIntegrable (deriv (criticalPrimeTest A)) volume (Real.log 2) (2 * A) :=
    hf.continuous_deriv_one.intervalIntegrable _ _
  unfold centeredLogPairing
  simp only [add_mul]
  rw [intervalIntegral.integral_add hi (hd.const_mul _),
    intervalIntegral.integral_const_mul, actual_derivative_mass A hA]
  change remainingAtomWork A + Real.eulerMascheroniConstant *
    (-criticalPrimeTest A (Real.log 2)) = signedCesaroPairing A
  have he := remainingAtomWork_eq_cesaro_integral A hA
  change remainingAtomWork A = Real.eulerMascheroniConstant *
    criticalPrimeTest A (Real.log 2) + signedCesaroPairing A at he
  linarith only [he]

/-- Exact moving-value recentering pays a single fixed first-atom trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6f7826d4dad062f2743a0302d3afb4935ee626` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
