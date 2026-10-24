# Eθ.numericalBound.hasPrimeInInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:790d992c-fc00-6dae-c5de-d5dbb660c858",
  "kind": "lemma",
  "lexical_name": "Eθ.numericalBound.hasPrimeInInterval",
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
  "slug": "e-numericalbound-hasprimeininterval--12049df52945240826e5b2ad",
  "source": {
    "blob": "a1ada9e00a678717a9145096ba2dcf2319a6af71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 178,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12049df52945240826e5b2ad5c5e6fe504e953e210a62be2ac9ce788a4290a29",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:790d992c-fc00-6dae-c5de-d5dbb660c858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Eθ.numericalBound.hasPrimeInInterval {x₀ x h : ℝ} {ε : ℝ → ℝ}
    (hEθ : Eθ.numericalBound x₀ ε) (hh : 0 < h) (hx₀ : x₀ ≤ x) (hx : 0 < x)
    (hε : (2 * x + h) * ε x₀ < h) :
    HasPrimeInInterval x h := by
  have hxh : 0 < x + h := by linarith
  have hE₁ : Eθ x ≤ ε x₀ := hEθ x hx₀
  have hE₂ : Eθ (x + h) ≤ ε x₀ := hEθ (x + h) (by linarith [hx₀, hh])
  have h1 : x * Eθ x ≤ x * ε x₀ := mul_le_mul_of_nonneg_left hE₁ hx.le
  have h2 : (x + h) * Eθ (x + h) ≤ (x + h) * ε x₀ :=
    mul_le_mul_of_nonneg_left hE₂ hxh.le
  have hsum : x * Eθ x + (x + h) * Eθ (x + h) ≤ (2 * x + h) * ε x₀ := by
    nlinarith [h1, h2]
  exact Eθ.hasPrimeInInterval x h hx hh (lt_of_le_of_lt hsum hε)

@[blueprint
  "etheta-classical-pi"
  (title := "Classical bound on Etheta implies prime in short interval")
  (statement := /--
  If $E_\theta(x)$ enjoys a classical bound for all $x \geq x_0$, $x \geq \exp( R (2B/C)^2 )$
  and $(2x+h) A \left(\frac{\log x}{R}\right)^B
  \exp\left(-C \left(\frac{\log x}{R}\right)^{1/2}\right) < h$,
  then there is a prime in $(x, x+h]$. -/)
  (proof := /-- Apply Lemma \ref{etheta-num-pi} and Lemma \ref{classical-to-numeric}. -/)
  (latexEnv := "lemma")
  (discussion := 909)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1ada9e00a678717a9145096ba2dcf2319a6af71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
