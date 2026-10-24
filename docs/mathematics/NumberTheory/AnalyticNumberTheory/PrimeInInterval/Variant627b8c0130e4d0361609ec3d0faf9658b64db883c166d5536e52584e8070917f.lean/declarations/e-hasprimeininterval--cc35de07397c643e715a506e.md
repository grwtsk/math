# Eθ.hasPrimeInInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c8e6024-61d9-b457-1981-ff680d4614ee",
  "kind": "lemma",
  "lexical_name": "Eθ.hasPrimeInInterval",
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
  "slug": "e-hasprimeininterval--cc35de07397c643e715a506e",
  "source": {
    "blob": "a1ada9e00a678717a9145096ba2dcf2319a6af71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc35de07397c643e715a506e366883e573133e08c87999c58fa971fd3154b39b",
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

Occurrence: `result:8c8e6024-61d9-b457-1981-ff680d4614ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Eθ.hasPrimeInInterval (x h : ℝ) (hx : 0 < x) (hh : 0 < h) :
    x * Eθ x + (x + h) * Eθ (x + h) < h → HasPrimeInInterval x h := by
  intro hE
  have hxh : 0 < x + h := by linarith
  have hx_bound : θ x ≤ x + x * Eθ x := by
    have hx_abs : x * Eθ x = |θ x - x| := by
      unfold Eθ
      field_simp [hx.ne']
    have habs : |θ x - x| ≤ x * Eθ x := by
      simp [hx_abs]
    linarith [abs_sub_le_iff.mp habs |>.1]
  have hxh_bound : (x + h) - (x + h) * Eθ (x + h) ≤ θ (x + h) := by
    have hxh_abs : (x + h) * Eθ (x + h) = |θ (x + h) - (x + h)| := by
      unfold Eθ
      field_simp [hxh.ne']
    have habs : |θ (x + h) - (x + h)| ≤ (x + h) * Eθ (x + h) := by
      simp [hxh_abs]
    linarith [abs_sub_le_iff.mp habs |>.2]
  have htheta : θ (x + h) > θ x := by
    linarith [hx_bound, hxh_bound, hE]
  exact (HasPrimeInInterval.iff_theta_ge x h).2 htheta


@[blueprint
  "etheta-num-pi"
  (title := "Numerical bound on Etheta implies prime in short interval")
  (statement := /--
  If $E_\theta(x) \leq \varepsilon(x_0)$ for all $x \geq x_0$, and
  $(2x+h) \varepsilon(x_0)  < h$, then there is a prime in $(x, x+h]$. -/)
  (proof := /-- Apply Lemma \ref{etheta-pi}. -/)
  (latexEnv := "lemma")
  (discussion := 907)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeInInterval/Variant627b8c0130e4d0361609ec3d0faf9658b64db883c166d5536e52584e8070917f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1ada9e00a678717a9145096ba2dcf2319a6af71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
