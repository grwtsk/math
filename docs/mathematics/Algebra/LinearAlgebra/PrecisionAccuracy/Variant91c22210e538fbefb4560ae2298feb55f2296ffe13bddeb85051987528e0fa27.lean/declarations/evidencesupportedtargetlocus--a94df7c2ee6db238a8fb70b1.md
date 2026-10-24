# EvidenceSupportedTargetLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0b5545e628cf7d3b4d668f2cafc6a737e7037d6bb11f2bb70e4d0159757f7fe",
  "kind": "structure",
  "lexical_name": "EvidenceSupportedTargetLocus",
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
  "slug": "evidencesupportedtargetlocus--a94df7c2ee6db238a8fb70b1",
  "source": {
    "blob": "bf551ea6ec20deb91c766e1372bad0666994744b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a94df7c2ee6db238a8fb70b1401235bc938b3813fbabf1b1e5b26889d82e0bce",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrecisionAccuracy/Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0b5545e628cf7d3b4d668f2cafc6a737e7037d6bb11f2bb70e4d0159757f7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EvidenceSupportedTargetLocus where
  id : RecordId
  profile : ProfileId
  dimension : PrecisionDimension
  distinctionSpace : Set RecordId
  admittedTargets : Set RecordId
  evidence : Set RecordId
  authority : IndependentStatus
  validation : IndependentStatus
  resolvingPrecision : Option ScoreMillionths
  residuals : Set ResidualId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrecisionAccuracy/Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf551ea6ec20deb91c766e1372bad0666994744b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
