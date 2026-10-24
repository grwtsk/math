# wienerFubini_qoneLambda_firstFourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55dca192-fab0-9217-b354-2f003f1a8262",
  "kind": "theorem",
  "lexical_name": "wienerFubini_qoneLambda_firstFourier",
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
  "slug": "wienerfubini-qonelambda-firstfourier--c23b8133ad0041e68e397059",
  "source": {
    "blob": "9f4327711f96a9694c056af8cf7b244296e8acf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 314,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23b8133ad0041e68e397059360dc5c4dada589ebd96adb04257ce8b57cfde89",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55dca192-fab0-9217-b354-2f003f1a8262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFubini_qoneLambda_firstFourier
    (sigma T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T)
    (psi : ℝ → ℂ)
    (hpsi : Continuous psi) (hcompact : HasCompactSupport psi) :
    (∑' n : ℕ,
      LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 psi) (wienerFubiniFrequency n T)) =
      ∫ t : ℝ,
        LSeries wienerFubiniLambda
          ((sigma : ℂ) + (t : ℂ) * Complex.I) *
          psi t * (T : ℂ) ^ ((t : ℂ) * Complex.I) := by
  exact wienerFubini_firstFourier
    wienerFubiniLambda sigma T hT psi hpsi hcompact
    (wienerFubiniLambda_LSeriesSummable
      (by simpa using hsigma))

/-- The exact positive logarithmic Chebyshev kernel, retaining
the 1/(2*pi) frequency and the n=0 zero-term convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4327711f96a9694c056af8cf7b244296e8acf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
