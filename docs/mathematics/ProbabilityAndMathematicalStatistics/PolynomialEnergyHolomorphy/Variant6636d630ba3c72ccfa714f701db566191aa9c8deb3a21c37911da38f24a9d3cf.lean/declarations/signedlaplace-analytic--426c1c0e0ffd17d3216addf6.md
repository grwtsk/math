# signedLaplace_analytic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0833d66da06bc96a11e965debccacf6306db5cb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 250,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd80d375-56b3-0e88-a67e-58fd994ee546",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af5fadb8-99cd-95a3-3545-d3598d2e5b72",
  "kind": "theorem",
  "lexical_name": "signedLaplace_analytic",
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
  "slug": "signedlaplace-analytic--426c1c0e0ffd17d3216addf6",
  "source": {
    "blob": "0833d66da06bc96a11e965debccacf6306db5cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 250,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:426c1c0e0ffd17d3216addf6f82c295ecdc10afb038ec6a12faa4b5f2f72a775",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af5fadb8-99cd-95a3-3545-d3598d2e5b72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedLaplace_analytic (w : ℝ → ℝ) (hw : Continuous w)
    {C q : ℝ} (hC : 0 ≤ C) (hgrowth : L2Growth w C q) :
    AnalyticOnNhd ℂ (signedLaplace w) RHTerminal.PositiveHalfPlane := by
  have hdiff := (positiveLaplace_analytic w hw hC hgrowth).sub
    (positiveLaplace_analytic (fun u => -w u) hw.neg hC (neg_L2Growth hgrowth))
  apply hdiff.congr (isOpen_lt continuous_const Complex.continuous_re)
  intro z hz
  exact (signedLaplace_eq_difference w hw hC hgrowth hz).symm


end EulerP04RH.LaplaceEnergy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0833d66da06bc96a11e965debccacf6306db5cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
