# BeaconFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d824305626897f90b693c8779b9afc450bfa960291d5a85142c7bfb21d81fb5",
  "kind": "structure",
  "lexical_name": "BeaconFamily",
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
  "slug": "beaconfamily--c24f08bf6097792627aca07c",
  "source": {
    "blob": "acbd7f83aadab0bee28867ae037ebc1a7423541a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c24f08bf6097792627aca07c3fe7527ed530290fe1fca476f18b9416fbfcfd4b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d824305626897f90b693c8779b9afc450bfa960291d5a85142c7bfb21d81fb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BeaconFamily
    (intrinsic : Setoid State)
    (action : Automorphism → State → State)
    (flow : Time → State → State)
    (Label : Type z) where
  labelOrder : LinearOrder Label
  beacon : Label → State
  beacon_injective : Function.Injective beacon
  certified :
    ∀ label,
      CertifiedInvariantSingleton intrinsic action flow (beacon label)
  defect : Label → State → ℝ
  defect_nonnegative :
    ∀ label state, 0 ≤ defect label state
  defect_eq_zero_iff :
    ∀ label state, defect label state = 0 ↔ state = beacon label
  phaseLift : Label → State → ℝ

namespace BeaconFamily

variable {State : Type u} [TopologicalSpace State]
variable {Time : Type v} {Automorphism : Type w} {Label : Type z}
variable {intrinsic : Setoid State}
variable {action : Automorphism → State → State}
variable {flow : Time → State → State}

/-- One beacon-relative defect/phase coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Coordinates/Variant14d2b67c88d03e673ebb76ad1eb867f14139ff28f78fb02ce7790545abba1839.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acbd7f83aadab0bee28867ae037ebc1a7423541a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
