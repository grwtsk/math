# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c16a3c6b1ec7b197cded520fa1dfbb3e13a779b054da442bd65c583f0792d03",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--539c53f91e2d74c4b1a24ba5",
  "source": {
    "blob": "910828df932f24faa1d22cdc5e134b15f9d78cf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondThirdDerivativeExactStatements/Variantc973e6392cc52127805f613ff83fe89ad02d29641661a45ba1a4217708bf7422.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:539c53f91e2d74c4b1a24ba5458994b0388ac7e451f1461edbe3230de42f4ca5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondThirdDerivativeExactStatements/Variantc973e6392cc52127805f613ff83fe89ad02d29641661a45ba1a4217708bf7422.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c16a3c6b1ec7b197cded520fa1dfbb3e13a779b054da442bd65c583f0792d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (hA : 1 ≤ A) (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x * deriv η x)
      volume :=
  SecondDerivativeEnergy.normalized_derivative_pairing_integrable A hA η hη

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondThirdDerivativeExactStatements/Variantc973e6392cc52127805f613ff83fe89ad02d29641661a45ba1a4217708bf7422.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondThirdDerivativeExactStatements/Variantc973e6392cc52127805f613ff83fe89ad02d29641661a45ba1a4217708bf7422.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `910828df932f24faa1d22cdc5e134b15f9d78cf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
