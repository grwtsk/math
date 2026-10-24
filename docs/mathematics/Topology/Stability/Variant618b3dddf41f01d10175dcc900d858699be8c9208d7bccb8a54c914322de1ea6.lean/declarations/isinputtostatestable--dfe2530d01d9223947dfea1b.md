# IsInputToStateStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94c891491c6c8ef871ba630be66035c8f1e802e5cac2ca3db1689a8075d8d952",
  "kind": "def",
  "lexical_name": "IsInputToStateStable",
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
  "slug": "isinputtostatestable--dfe2530d01d9223947dfea1b",
  "source": {
    "blob": "8f380ce56eb30221e1611877e13231a451e1ed8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 192,
    "path": "GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfe2530d01d9223947dfea1b140e2ae494bcbb1e58427e10b226581a271cbeee",
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

Occurrence: `declaration:94c891491c6c8ef871ba630be66035c8f1e802e5cac2ca3db1689a8075d8d952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsInputToStateStable
    [PseudoMetricSpace State]
    {Input : Type v}
    {operator : VersionedOperator State}
    (fixedPoint : CertifiedFixedPoint operator)
    (inputStep :
      Input → operator.domain → operator.domain)
    (inputSize : Input → ℝ)
    (decay gain : Nat → ℝ) : Prop :=
  (∀ iteration, 0 ≤ decay iteration) ∧
  (∀ iteration, 0 ≤ gain iteration) ∧
  Tendsto decay atTop (nhds 0) ∧
  ∀ (inputs : Nat → Input)
    (initial : operator.domain)
    (iteration : Nat),
    dist (inputTrajectory inputStep inputs initial iteration)
        fixedPoint.point ≤
      decay iteration * dist initial fixedPoint.point +
        ∑ inputIndex ∈ Finset.range iteration,
          gain (iteration - 1 - inputIndex) *
            inputSize (inputs inputIndex)

/--
An iterate-wise nonexpansive estimate around an exact fixed point is enough
for Lyapunov stability.  It does not establish attraction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f380ce56eb30221e1611877e13231a451e1ed8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
