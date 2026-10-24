# adaptiveSignedSamplingError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7561bf9704a94e2cf4d431cef767bab2f978bd0b87d0c87e5fb560da666479c6",
  "kind": "def",
  "lexical_name": "adaptiveSignedSamplingError",
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
  "slug": "adaptivesignedsamplingerror--646f1affc5f3febf0d564451",
  "source": {
    "blob": "0a3b591aa8023baeb379841850c2990c57d79cf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:646f1affc5f3febf0d56445116ac3f51f1515ffd799932515e1508cfc988c960",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7561bf9704a94e2cf4d431cef767bab2f978bd0b87d0c87e5fb560da666479c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adaptiveSignedSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    ((adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ)) -
      (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
        (adaptivePlainSample A d m - sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))))

/-- All signed corrections remain joint; this is the original full prime-power row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variantf21c14aaddf775478be7d5a50b90051c6589272fb000a245a6b7ea6b8671ee48.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3b591aa8023baeb379841850c2990c57d79cf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
