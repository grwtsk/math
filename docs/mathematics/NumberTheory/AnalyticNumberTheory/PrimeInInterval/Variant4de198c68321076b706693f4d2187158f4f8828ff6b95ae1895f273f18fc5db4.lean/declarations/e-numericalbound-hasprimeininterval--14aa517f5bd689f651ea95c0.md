# Eθ.numericalBound.hasPrimeInInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f0f2d02-d6ab-51f3-5f31-2cf4acf810f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7ce4984-7d6f-a72c-3a9b-c568c04de50a",
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
  "slug": "e-numericalbound-hasprimeininterval--14aa517f5bd689f651ea95c0",
  "source": {
    "blob": "d1e97a91adcba4fe274cbb67c931e9bb414eb650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14aa517f5bd689f651ea95c04fe19d8d6e2c1d469c96a1ba57f590c987e213e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ce4984-7d6f-a72c-3a9b-c568c04de50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–194.

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

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant4de198c68321076b706693f4d2187158f4f8828ff6b95ae1895f273f18fc5db4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e97a91adcba4fe274cbb67c931e9bb414eb650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
