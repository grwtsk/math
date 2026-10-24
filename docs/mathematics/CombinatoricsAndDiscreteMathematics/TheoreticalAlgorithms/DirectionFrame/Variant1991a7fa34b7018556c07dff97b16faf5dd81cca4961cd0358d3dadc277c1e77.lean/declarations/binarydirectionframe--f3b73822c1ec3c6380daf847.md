# binaryDirectionFrame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0cc6b71933bf61fd107bc6cea7e7632167867ab6111043b81eb4f96bcd5ca58",
  "kind": "def",
  "lexical_name": "binaryDirectionFrame",
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
  "slug": "binarydirectionframe--f3b73822c1ec3c6380daf847",
  "source": {
    "blob": "77935d3a388211364ae5f65d1cf6352a5e42c005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3b73822c1ec3c6380daf847dd247dc6e0cc438509868fb368aa94aca9f7e126",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0cc6b71933bf61fd107bc6cea7e7632167867ab6111043b81eb4f96bcd5ca58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryDirectionFrame : DirectionFrame where
  dim := 1
  Direction := BinaryDirection
  directionIndex := fun d =>
    match d with
    | .zeroToOne => 0
    | .oneToZero => 1
  directionIndexSound := True
  directionIndexProof := trivial
  nullLabel := "balanced binary null point"
  opposite := fun d =>
    match d with
    | .zeroToOne => .oneToZero
    | .oneToZero => .zeroToOne
  opposite_involutive := by
    intro d
    cases d <;> rfl
  polarity := fun d =>
    match d with
    | .zeroToOne => 1
    | .oneToZero => -1
  fullTurnDenominator := 2
  fullTurnPositive := by decide
  phaseNumerator := fun d =>
    match d with
    | .zeroToOne => 0
    | .oneToZero => 1

/-- The binary opposite involution, proved directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionFrame/Variant1991a7fa34b7018556c07dff97b16faf5dd81cca4961cd0358d3dadc277c1e77.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77935d3a388211364ae5f65d1cf6352a5e42c005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
