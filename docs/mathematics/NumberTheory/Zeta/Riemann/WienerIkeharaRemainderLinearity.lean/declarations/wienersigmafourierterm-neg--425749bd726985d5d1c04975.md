# wienerSigmaFourierTerm_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:333fceb0-a5c4-0bc1-2c95-39042ce3a3f3",
  "kind": "theorem",
  "lexical_name": "wienerSigmaFourierTerm_neg",
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
  "slug": "wienersigmafourierterm-neg--425749bd726985d5d1c04975",
  "source": {
    "blob": "d438b96fc5a976aa28ad2bd99df87440743b9814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:425749bd726985d5d1c049759e8ac173117672dadce1c0d92add42fdfa4e4c64",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:333fceb0-a5c4-0bc1-2c95-39042ce3a3f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigmaFourierTerm_neg
    (g : 𝓢(ℝ, ℂ)) (T sigma : ℝ) (n : ℕ) :
    wienerSigmaFourierTerm (-g) T sigma n =
      -wienerSigmaFourierTerm g T sigma n := by
  unfold wienerSigmaFourierTerm
  change LSeries.term wienerFubiniLambda (sigma : ℂ) n *
      (𝓕 (-g : 𝓢(ℝ, ℂ))) (wienerFubiniFrequency n T) =
    -(LSeries.term wienerFubiniLambda (sigma : ℂ) n *
        (𝓕 g : 𝓢(ℝ, ℂ)) (wienerFubiniFrequency n T))
  simp only [FourierTransform.fourier_neg, Pi.neg_apply, mul_neg]

/-- True absolute summability of the q=1 arithmetic Fourier terms
at sigma=1, from the SOURCE-LEVEL uniform Chebyshev bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaRemainderLinearity.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d438b96fc5a976aa28ad2bd99df87440743b9814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
