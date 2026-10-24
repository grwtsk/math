# modeBox_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3ad6c37-d83e-8b36-d388-d910207063a8",
  "kind": "theorem",
  "lexical_name": "modeBox_sound",
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
  "slug": "modebox-sound--9edaba446d3999ef45a3aee0",
  "source": {
    "blob": "61fabd4f3b0e4381e9a4ab359302230a9b27a3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9edaba446d3999ef45a3aee0576955aea5a2b6326f8d8e7555190998e3343c36",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3ad6c37-d83e-8b36-d388-d910207063a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modeBox_sound (n : Fin 9) (m : ℕ) {p q : ℝ}
    (hp : Contains piBox p) (hq : Contains expBox q) :
    Contains (modeBox n.val m)
      ((p * (m : ℝ) ^ 2) *
        (thetaPhiDerivativePolynomial n.val).eval (p * (m : ℝ) ^ 2) *
          q ^ (m ^ 2)) := by
  have hm : Contains (point ((m : ℚ) ^ 2)) ((m : ℝ) ^ 2) := by
    unfold Contains point
    push_cast
    simp
  have hy := mul_sound hp hm
  have hpoly := horner_sound (coefficients n.val) hy
  rw [realHorner_eq] at hpoly
  exact mul_sound (mul_sound hy hpoly) (pow_sound hq (m ^ 2))

/-- The interval sum of the first four positive-integer theta modes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant31a98657e172d4b0f4571a85e688fb0bc73d2e07a51fd4b30656d159964a0957.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61fabd4f3b0e4381e9a4ab359302230a9b27a3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
