# completeAtomicBooleanRegionEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cde61a92aa5f83912feb95ce7b763badc5dbdccb8d15467b65f443f0e23f3cea",
  "kind": "def",
  "lexical_name": "completeAtomicBooleanRegionEquiv",
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
  "slug": "completeatomicbooleanregionequiv--00aa7ba468a47f8876b5ffca",
  "source": {
    "blob": "9adb6d323a717bd9b53e80caf3cdf55b6c520e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 206,
    "path": "GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00aa7ba468a47f8876b5ffca5212fba22c64e9977693520d478bd65df8029fb0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cde61a92aa5f83912feb95ce7b763badc5dbdccb8d15467b65f443f0e23f3cea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completeAtomicBooleanRegionEquiv :
    L ≃o Set {a : L // IsAtom a} :=
  CompleteAtomicBooleanAlgebra.toSetOfIsAtom

end CompleteAtomicBooleanRegions

section TopologicalPoints

variable {X : Type u₁} [TopologicalSpace X]

/-- Membership in each member of a chosen neighborhood basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9adb6d323a717bd9b53e80caf3cdf55b6c520e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
