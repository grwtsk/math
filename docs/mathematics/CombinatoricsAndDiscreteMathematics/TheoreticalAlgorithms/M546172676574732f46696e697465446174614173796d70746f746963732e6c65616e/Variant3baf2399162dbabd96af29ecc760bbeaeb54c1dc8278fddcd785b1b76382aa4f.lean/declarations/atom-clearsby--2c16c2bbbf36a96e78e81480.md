# Atom.clearsBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1f6bafaaee37ad9084fafdc6bdae5ab6d879b10a51e112486d004673b384a2c",
  "kind": "def",
  "lexical_name": "Atom.clearsBy",
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
  "slug": "atom-clearsby--2c16c2bbbf36a96e78e81480",
  "source": {
    "blob": "a8b96d3433dc9373a44569939bf7fc2883a333e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3baf2399162dbabd96af29ecc760bbeaeb54c1dc8278fddcd785b1b76382aa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c16c2bbbf36a96e78e8148019fd6c389b7c4c719725e2c18adfb216e3c96d35",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3baf2399162dbabd96af29ecc760bbeaeb54c1dc8278fddcd785b1b76382aa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1f6bafaaee37ad9084fafdc6bdae5ab6d879b10a51e112486d004673b384a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.clearsBy : Atom -> String
  | .finiteStageWitness => "a proof producing finite witnesses for all stages"
  | .finiteStageProperty => "a proof of the stage property for all stages"
  | .transitionCompatibility => "a transition compatibility theorem"
  | .inverseLimitObject => "an inverse-limit construction"
  | .propertyPreservedUnderRestriction => "a preservation theorem for restriction maps"
  | .uniformBound => "uniform estimates across all stages"
  | .monotonicityOrCoherence => "a monotonicity or coherence theorem"
  | .compactnessOrDiagonalArgument => "a compactness or diagonal extraction theorem"
  | .convergenceRate => "a proved convergence rate"
  | .transferTheorem => "a finite-to-asymptotic transfer theorem"
  | .quantifierShiftFromFiniteToAll => "a theorem justifying the quantifier shift"
  | .finalAsymptoticExtraction => "a proof of the final asymptotic extraction claim"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3baf2399162dbabd96af29ecc760bbeaeb54c1dc8278fddcd785b1b76382aa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f46696e697465446174614173796d70746f746963732e6c65616e/Variant3baf2399162dbabd96af29ecc760bbeaeb54c1dc8278fddcd785b1b76382aa4f.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b96d3433dc9373a44569939bf7fc2883a333e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
