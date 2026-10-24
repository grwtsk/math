# riemannHypothesis_of_acceptedSevenEighths_reversePsi_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34f6b21f-fa6c-3d0e-87f8-1122110f66b6",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_acceptedSevenEighths_reversePsi_quadratic",
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
  "slug": "riemannhypothesis-of-acceptedseveneighths-reversepsi-quadratic--04cf9b917d90634dbe5cb726",
  "source": {
    "blob": "1563ac22421e936af1012ebfc5405b4f14c0f6d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 182,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04cf9b917d90634dbe5cb726f210b15739ea8b65b1dc4e0c77b7130cc3136881",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34f6b21f-fa6c-3d0e-87f8-1122110f66b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_acceptedSevenEighths_reversePsi_quadratic
    (port :
      AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8))
    (hreverse :
      ZeroFreeToPsiPowerLogSqAt ((7 : ℝ) / 8))
    (hcontract :
      QuadraticThetaDescentSevenEighthsToHalf) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_thetaSevenEighths_quadraticDescent
    (zeroFree_reversePsiGate_to_theta
      (by norm_num) port.theorem hreverse)
    hcontract

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1563ac22421e936af1012ebfc5405b4f14c0f6d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
