# bumpFlux_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ab9f0e7-9ba1-ee14-ccea-c71ae3d8be65",
  "kind": "theorem",
  "lexical_name": "bumpFlux_hasDerivAt",
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
  "slug": "bumpflux-hasderivat--9729a636f0f7783cb1fa5499",
  "source": {
    "blob": "cb46a48c68ef6cd590de43e8dfd236f340a70ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9729a636f0f7783cb1fa54998e289bb15d413bfa4d967bdf641db78bf8243a43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ab9f0e7-9ba1-ee14-ccea-c71ae3d8be65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bumpFlux_hasDerivAt (z : ℂ) (x : ℝ) :
    HasDerivAt (fun t : ℝ => (1 - (t : ℂ) ^ 2) ^ 5 * Complex.exp (z * (t : ℂ)))
      ((z * (1 - (x : ℂ) ^ 2) ^ 5 - 10 * (x : ℂ) * (1 - (x : ℂ) ^ 2) ^ 4) *
        Complex.exp (z * (x : ℂ))) x := by
  have hp := (((hasDerivAt_id (x : ℂ)).pow 2).const_sub 1).pow 5
  have he := ((hasDerivAt_id (x : ℂ)).const_mul z).cexp
  convert! (hp.mul he).comp_ofReal using 1
  simp only [id_eq, Pi.pow_apply]
  ring

/-- Integrating the exact fifth-power flux gives the coefficient-ten moment equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBumpMomentsStatements/Variant5209ce30102ada99657006a170648023e0de52f76cded46321a810a5fec0b2e8.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb46a48c68ef6cd590de43e8dfd236f340a70ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
