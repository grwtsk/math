# Profinite.toCompHausEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4bcf11d042041b40b090594716e7c9451aecb5ac179b12da9fe1482a9584fca0",
  "kind": "def",
  "lexical_name": "Profinite.toCompHausEquivalence",
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
  "slug": "profinite-tocomphausequivalence--6ce996e5106f1cfeb6792096",
  "source": {
    "blob": "04aac1b40436b287c59a8f2f8c53772896795e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 209,
    "path": "GRWTSK/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ce996e5106f1cfeb6792096e4d88c31a4274678fa3f7ce6cba03c51e615d514",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4bcf11d042041b40b090594716e7c9451aecb5ac179b12da9fe1482a9584fca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Profinite.toCompHausEquivalence (X : CompHaus.{u}) (Y : Profinite.{u}) :
    (CompHaus.toProfiniteObj X ⟶ Y) ≃ (X ⟶ profiniteToCompHaus.obj Y) where
  toFun f := f.comp ⟨Quotient.mk'', continuous_quotient_mk'⟩
  invFun g :=
    { toFun := Continuous.connectedComponentsLift g.2
      continuous_toFun := Continuous.connectedComponentsLift_continuous g.2 }
  left_inv _ := ContinuousMap.ext <| ConnectedComponents.surjective_coe.forall.2 fun _ => rfl
  right_inv _ := ContinuousMap.ext fun _ => rfl
#align Profinite.to_CompHaus_equivalence Profinite.toCompHausEquivalence

/-- The connected_components functor from compact Hausdorff spaces to profinite spaces,
left adjoint to the inclusion functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variant7de22640005eba5098f7847bd73c8b0ef08da6f668da7a9d475d24d194273206.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04aac1b40436b287c59a8f2f8c53772896795e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
