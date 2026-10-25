# decideFixedKnotResidualCounterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091857d7264653733ac411bf60e5196ff87aa7c975643c60f42f8475b720705b",
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
  "slug": "decidefixedknotresidualcounterexample--88f6589068c401936f7972f3",
  "source": {
    "blob": "5bbbb4ec666a4bba55a48f04ba6dd0469b84efae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88f6589068c401936f7972f375090bc35ff40a9b590100954260dc60253a1ae7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091857d7264653733ac411bf60e5196ff87aa7c975643c60f42f8475b720705b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Decidability/Variant91b4d48012bb970c202e153624555a8af1749c78ff66a222bc0c373377479ad5.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bbbb4ec666a4bba55a48f04ba6dd0469b84efae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
