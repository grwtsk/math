# actualCorrelation_jet_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd3ece13-8985-f47b-d0b6-353f9bc83508",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_jet_zero_right",
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
  "slug": "actualcorrelation-jet-zero-right--f57110f7545f08df57913fd1",
  "source": {
    "blob": "ccd8d27a0ff1b56b0892cad44a92019d172f036d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variantd191d949a474ad856288c26dcf5d1e7291b57d2f46376125570025194d0d13de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f57110f7545f08df57913fd1fd5aa543255a8e5111e829e21c5548d025c63d47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variantd191d949a474ad856288c26dcf5d1e7291b57d2f46376125570025194d0d13de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd3ece13-8985-f47b-d0b6-353f9bc83508`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_jet_zero_right (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    ∀ z : ℝ, 2 * A ≤ z → iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) z = 0 := by
  induction n with
  | zero =>
    intro z hz
    simp only [iteratedDeriv_zero]
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A z (by linarith)
      (hz.trans (le_abs_self z))
  | succ n ih =>
    intro z hz
    have hh : ∀ y ∈ Ici z,
        iteratedDeriv n (sourceCorrelation explicitSecondDerivative A) y = 0 :=
      fun y hy => ih y (hz.trans hy)
    have hd : HasDerivWithinAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
        0 (Ici z) z :=
      (hasDerivWithinAt_const z (Ici z) (0 : ℝ)).congr
        (fun y hy => hh y hy) (hh z self_mem_Ici)
    simpa only [iteratedDeriv_succ] using hd.deriv_eq_zero (uniqueDiffWithinAt_Ici z)

/-- The literal upper-column twisted trace is zero only outside its true short time window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variantd191d949a474ad856288c26dcf5d1e7291b57d2f46376125570025194d0d13de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variantd191d949a474ad856288c26dcf5d1e7291b57d2f46376125570025194d0d13de.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd8d27a0ff1b56b0892cad44a92019d172f036d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
