# exampleConvergenceAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1645e6973b981dddf0428d26c3302fa5ef4b45ee47f9a2f366dec6e31a6cb61d",
  "kind": "def",
  "lexical_name": "exampleConvergenceAuthority",
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
  "slug": "exampleconvergenceauthority--e931a949dd25c49050b03eac",
  "source": {
    "blob": "b382245dcf06b045163c305c108b7bc1a9e0ddb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceFormulaExamples/Variantd2b262b42c21e54e3fa7f6503d71ed2960e7cd7c1d8312d3d0e563443af842d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e931a949dd25c49050b03eacd00aa099a45f6f48546d9508f0ac43a544f7f4de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceFormulaExamples/Variantd2b262b42c21e54e3fa7f6503d71ed2960e7cd7c1d8312d3d0e563443af842d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1645e6973b981dddf0428d26c3302fa5ef4b45ee47f9a2f366dec6e31a6cb61d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleConvergenceAuthority :
    TraceFormula.TraceFormulaConvergenceAuthority where
  formula := exampleFormula
  payload := examplePayload
  spectralConvergenceSound := True
  spectralConvergenceProof := trivial
  geometricConvergenceSound := True
  geometricConvergenceProof := trivial
  interchangeOfLimitsSound := True
  interchangeOfLimitsProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceFormulaExamples/Variantd2b262b42c21e54e3fa7f6503d71ed2960e7cd7c1d8312d3d0e563443af842d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceFormulaExamples/Variantd2b262b42c21e54e3fa7f6503d71ed2960e7cd7c1d8312d3d0e563443af842d3.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b382245dcf06b045163c305c108b7bc1a9e0ddb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
