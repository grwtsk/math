# thetaA_cosh_interval_eq_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05032773-cd89-f8c0-e47c-28d8e5dfd7b7",
  "kind": "theorem",
  "lexical_name": "thetaA_cosh_interval_eq_average",
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
  "slug": "thetaa-cosh-interval-eq-average--874f3f0f765c9001206fbf1e",
  "source": {
    "blob": "de95741e9db97643230c3c0558d228aa9a97e8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874f3f0f765c9001206fbf1edbbb4dbc689acc6a11b202d814799e26b250109a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05032773-cd89-f8c0-e47c-28d8e5dfd7b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem thetaA_cosh_interval_eq_average (u : ℂ) (b : ℝ) :
    (∫ t in (0 : ℝ)..b,
        (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      ((∫ t in (0 : ℝ)..b,
          (thetaA t : ℂ) * thetaExpKernel u t) +
       (∫ t in (0 : ℝ)..b,
          (thetaA t : ℂ) * thetaExpKernel (-u) t)) / 2 := by
  have hp :
      IntervalIntegrable
        (fun t : ℝ => (thetaA t : ℂ) * thetaExpKernel u t)
        volume 0 b :=
    Continuous.intervalIntegrable
      (continuous_thetaA_complex.mul (continuous_thetaExpKernel u)) _ _
  have hm :
      IntervalIntegrable
        (fun t : ℝ => (thetaA t : ℂ) * thetaExpKernel (-u) t)
        volume 0 b :=
    Continuous.intervalIntegrable
      (continuous_thetaA_complex.mul (continuous_thetaExpKernel (-u))) _ _
  rw [show
    (fun t : ℝ =>
      (thetaA t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      fun t : ℝ =>
        ((thetaA t : ℂ) * thetaExpKernel u t +
          (thetaA t : ℂ) * thetaExpKernel (-u) t) / 2 by
    funext t
    rw [← thetaExpKernel_average_eq_cosh u t]
    ring]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_add hp hm]

/-- Exact finite cosh identity obtained by averaging the source identities at
`u` and `-u`.  No upper boundary has been discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de95741e9db97643230c3c0558d228aa9a97e8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
