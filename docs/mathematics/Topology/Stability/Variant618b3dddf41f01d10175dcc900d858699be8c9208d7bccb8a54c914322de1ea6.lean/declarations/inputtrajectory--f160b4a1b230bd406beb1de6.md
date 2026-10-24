# inputTrajectory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12866e54317784d9b7a43a45d951c302dc34ca7e4e80bf1938595bcae6e58f9d",
  "kind": "def",
  "lexical_name": "inputTrajectory",
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
  "slug": "inputtrajectory--f160b4a1b230bd406beb1de6",
  "source": {
    "blob": "8f380ce56eb30221e1611877e13231a451e1ed8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f160b4a1b230bd406beb1de68c76913bd6a4fe4dcf4e4daf811de1c636ce98d2",
  "verification": {
    "reference": "docs/verification/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12866e54317784d9b7a43a45d951c302dc34ca7e4e80bf1938595bcae6e58f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inputTrajectory
    {Input : Type v}
    {operator : VersionedOperator State}
    (inputStep :
      Input → operator.domain → operator.domain)
    (inputs : Nat → Input)
    (initial : operator.domain) :
    Nat → operator.domain
  | 0 => initial
  | iteration + 1 =>
      inputStep (inputs iteration)
        (inputTrajectory inputStep inputs initial iteration)

/--
Input-to-state stability with an explicit decaying homogeneous channel and a
discrete convolution gain for the input sequence.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f380ce56eb30221e1611877e13231a451e1ed8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
