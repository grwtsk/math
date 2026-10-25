# decideFixedKnotResidualCounterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f38fe0318f43862b45083e8a5c8e342eb6f4ff034102b224fd630a37c1645172",
  "kind": "def",
  "lexical_name": "decideFixedKnotResidualCounterexample",
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
  "slug": "decidefixedknotresidualcounterexample--b410bf5f2ec041aa2db75ec8",
  "source": {
    "blob": "08f166ff18f5aff493352a3f8536fe2b78b39047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant8fbde80baf7f348904f7f27758346aa0b67c05e11a86aacf3ec10a5d65aae81f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b410bf5f2ec041aa2db75ec844267e40ff58bddac387911e54d7314eeaa254be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant8fbde80baf7f348904f7f27758346aa0b67c05e11a86aacf3ec10a5d65aae81f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f38fe0318f43862b45083e8a5c8e342eb6f4ff034102b224fd630a37c1645172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def decideFixedKnotResidualCounterexample
    (D : FixedKnotDecisionCapability T)
    (K : T.Knot) :
    Decidable (T.FixedKnotResidualCounterexample K) := by
  unfold OrientedKnotFillingTheory.FixedKnotResidualCounterexample
  exact @instDecidableAnd
    (T.FixedKnotResidualProfile K)
    (T.FillingsHomeomorphic K (T.plusTwo K) (T.minusTwo K))
    (D.decideResidualProfile K)
    (D.orientedHomeomorphism.decideFillingsHomeomorphic
      K (T.plusTwo K) (T.minusTwo K))

/--
For a fixed knot already certified nontrivial, decide whether it is a purely
cosmetic surgery counterexample.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant8fbde80baf7f348904f7f27758346aa0b67c05e11a86aacf3ec10a5d65aae81f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant8fbde80baf7f348904f7f27758346aa0b67c05e11a86aacf3ec10a5d65aae81f.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f166ff18f5aff493352a3f8536fe2b78b39047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
