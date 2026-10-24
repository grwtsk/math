# IsInputToStateStable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23961e40d8a1994d595c171f0143303e0abd6be404c880f2096f57a53980ff88",
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
  "slug": "isinputtostatestable--2b4cff07575d5be056ab8d4c",
  "source": {
    "blob": "45ee170f2a8448df257fd77cec84643df54ce756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 200,
    "path": "GRWTSK/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b4cff07575d5be056ab8d4cc46ef09ebf8b971a411fea926290befc405f7511",
  "verification": {
    "reference": "docs/verification/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23961e40d8a1994d595c171f0143303e0abd6be404c880f2096f57a53980ff88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–225.

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

[Verification target and public status](../../../../../verification/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Stability/Variant21d12d709df390fb6d084cac56cf47a80fed8d9a2f5f08a3d1dfec2753ea477f.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45ee170f2a8448df257fd77cec84643df54ce756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
