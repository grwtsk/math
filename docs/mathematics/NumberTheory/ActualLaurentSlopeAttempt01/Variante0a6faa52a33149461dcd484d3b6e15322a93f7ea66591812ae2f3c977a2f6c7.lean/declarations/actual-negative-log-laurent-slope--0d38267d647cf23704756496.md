# actual_negative_log_laurent_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ca66d7e-916b-0c8d-4642-80a95d467cca",
  "kind": "theorem",
  "lexical_name": "actual_negative_log_laurent_slope",
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
  "slug": "actual-negative-log-laurent-slope--0d38267d647cf23704756496",
  "source": {
    "blob": "617dfbf6230e7462428409bd6d55b37b83a3ce7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 72,
    "path": "GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d38267d647cf23704756496c405357aec0b71e8cad878f767c144f3e0420a47",
  "verification": {
    "reference": "docs/verification/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ca66d7e-916b-0c8d-4642-80a95d467cca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_negative_log_laurent_slope :
    Tendsto (fun u : ℂ =>
      (- deriv riemannZeta (1 + u) / riemannZeta (1 + u) - u⁻¹ +
        (Real.eulerMascheroniConstant : ℂ)) / u)
      (𝓝[≠] 0)
      (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 - 2 * deriv riemannZeta₀ 1)) := by
  have hshift : Tendsto (fun u : ℂ => 1 + u) (𝓝[≠] 0) (𝓝[≠] 1) := by
    change Filter.map (fun u : ℂ => 1 + u) (𝓝[≠] 0) ≤ 𝓝[≠] 1
    simp
  apply actual_regular_negative_slope.congr'
  filter_upwards [hshift.eventually actual_negative_log_regularization] with u hu
  simpa using congrArg (fun v : ℂ => (v + (Real.eulerMascheroniConstant : ℂ)) / u) hu.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ActualLaurentSlopeAttempt01/Variante0a6faa52a33149461dcd484d3b6e15322a93f7ea66591812ae2f3c977a2f6c7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `617dfbf6230e7462428409bd6d55b37b83a3ce7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
