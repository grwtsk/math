# affinePersistentOutput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e71f3c1c95601f9b504ef2e1411058827b5ee901a8a15800e2660b87c129f9ba",
  "kind": "def",
  "lexical_name": "affinePersistentOutput",
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
  "slug": "affinepersistentoutput--2b2c8cbaaa18a82ae6818800",
  "source": {
    "blob": "aef33b3529f6513f9a08045056f8b648c60d9ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 529,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b2c8cbaaa18a82ae681880021dfcfcdbe2916656405b94c27395b2c4e526906",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e71f3c1c95601f9b504ef2e1411058827b5ee901a8a15800e2660b87c129f9ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def affinePersistentOutput
    {Y : Type*} [AddCommGroup Y] [Module ℝ Y]
    (system : AffinePersistentSystem Z V)
    (readout : AffinePersistentReadout Z Y)
    (initial : Z) (input : Nat → V) (horizon : Nat) : Y :=
  readout.linear (affineTrajectory system initial input horizon) + readout.offset

/-- PRD-03 in input/output form: an affine recurrence followed by an affine
readout is an affine finite-horizon map of the initial state and input history. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentResidual/Variant02feb8f23af3423ea668d5d732a612bb7169b421e4809a1c3680bce047633a9d.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef33b3529f6513f9a08045056f8b648c60d9ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
