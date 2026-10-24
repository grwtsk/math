# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f8c032325ac851fbf2e5cc483368f1d560af53e4673dcefb38b2de54b5ffb0d",
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
  "slug": "example--c4bde3e6161bfa22160b2ca6",
  "source": {
    "blob": "19791ffdde54aa78e16840a8b21160fce4b5cb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 850,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4bde3e6161bfa22160b2ca6fb681964ef9f38f55e729aef82360f0df6b4f6cb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f8c032325ac851fbf2e5cc483368f1d560af53e4673dcefb38b2de54b5ffb0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 850–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A y : ℝ) (hA : 1 ≤ A) (hy : 0 < y) :
    (∫ x in Set.Ioi (1 : ℝ), rootWeight (correlationDifference A) y x) =
      (1 / Real.sqrt y) * (correlationPrimitive A (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y)) :=
  RealThetaDerivativeScratch.rootWeight_difference_integral A y hA hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormStatements/Variant640fbf8efe4faebd310e1236a48bc60d5df39d11aad60265541eca32cd402793.lean#L850).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19791ffdde54aa78e16840a8b21160fce4b5cb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
