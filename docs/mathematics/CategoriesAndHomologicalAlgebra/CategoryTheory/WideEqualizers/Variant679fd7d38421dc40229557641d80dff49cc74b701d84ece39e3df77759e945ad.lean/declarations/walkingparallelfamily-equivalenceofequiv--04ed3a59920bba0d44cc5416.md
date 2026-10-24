# WalkingParallelFamily.equivalenceOfEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c55b19a89d24267240c99d396f9ae9a1be56b4b278223cf163d7e46d75859f1b",
  "kind": "def",
  "lexical_name": "WalkingParallelFamily.equivalenceOfEquiv",
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
  "slug": "walkingparallelfamily-equivalenceofequiv--04ed3a59920bba0d44cc5416",
  "source": {
    "blob": "c2f825424505b1fbc9878e03b55498be0c96ec9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant679fd7d38421dc40229557641d80dff49cc74b701d84ece39e3df77759e945ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04ed3a59920bba0d44cc5416630580f6213423ff174c1b05dde1a8da43affde3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant679fd7d38421dc40229557641d80dff49cc74b701d84ece39e3df77759e945ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c55b19a89d24267240c99d396f9ae9a1be56b4b278223cf163d7e46d75859f1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WalkingParallelFamily.equivalenceOfEquiv {J' : Type w'} (e : J ≃ J') :
    WalkingParallelFamily J ≌ WalkingParallelFamily J' where
  functor :=
    parallelFamily (X := .zero) (Y := .one) (fun j ↦ .line (e j))
  inverse :=
    parallelFamily (X := .zero) (Y := .one) (fun j ↦ .line (e.symm j))
  unitIso :=
    NatIso.ofComponents
      (fun x ↦ match x with
        | zero => Iso.refl _
        | one => Iso.refl _)
      (fun f ↦ by induction f <;> cat_disch)
  counitIso :=
    NatIso.ofComponents
      (fun x ↦ match x with
        | zero => Iso.refl _
        | one => Iso.refl _)
      (fun f ↦ by induction f <;> cat_disch)

set_option backward.isDefEq.respectTransparency.types false in
/-- Every functor indexing a wide (co)equalizer is naturally isomorphic (actually, equal) to a
    `parallelFamily` -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant679fd7d38421dc40229557641d80dff49cc74b701d84ece39e3df77759e945ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant679fd7d38421dc40229557641d80dff49cc74b701d84ece39e3df77759e945ad.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f825424505b1fbc9878e03b55498be0c96ec9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
