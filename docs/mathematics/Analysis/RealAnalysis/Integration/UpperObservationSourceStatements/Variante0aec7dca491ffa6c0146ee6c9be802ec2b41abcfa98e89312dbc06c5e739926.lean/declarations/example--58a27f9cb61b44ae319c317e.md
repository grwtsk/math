# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ae50aaab82ce173b276dd2973edf74c5e515c87e0ec0488cf9145818230a011",
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
  "slug": "example--58a27f9cb61b44ae319c317e",
  "source": {
    "blob": "830dd99f46df6eecc05c2b0810b02237aaedc74a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservationSourceStatements/Variante0aec7dca491ffa6c0146ee6c9be802ec2b41abcfa98e89312dbc06c5e739926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58a27f9cb61b44ae319c317ed3dd1e0bab98d8c86f445ad02705adaae5478343",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservationSourceStatements/Variante0aec7dca491ffa6c0146ee6c9be802ec2b41abcfa98e89312dbc06c5e739926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ae50aaab82ce173b276dd2973edf74c5e515c87e0ec0488cf9145818230a011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A a b c : ℝ) (hA : 1 ≤ A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A (x + a) *
      normalizedTest explicitSecondDerivative A (c - x + b)) =
      sourceCorrelation explicitSecondDerivative A (c + a + b) :=
  UpperObservation.shifted_source_reflection A a b c hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservationSourceStatements/Variante0aec7dca491ffa6c0146ee6c9be802ec2b41abcfa98e89312dbc06c5e739926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservationSourceStatements/Variante0aec7dca491ffa6c0146ee6c9be802ec2b41abcfa98e89312dbc06c5e739926.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830dd99f46df6eecc05c2b0810b02237aaedc74a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
