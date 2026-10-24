# subpresheafContinuousPrelocalIsoPresheafToTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:707b0c6d0f66d37633c14112d845cbaaf39046cb2ff069f6f1edd25727afa303",
  "kind": "def",
  "lexical_name": "subpresheafContinuousPrelocalIsoPresheafToTop",
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
  "slug": "subpresheafcontinuousprelocalisopresheaftotop--f5c429b3055373a903191e16",
  "source": {
    "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 363,
    "path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5c429b3055373a903191e16de9f0fc5449d9081f659096a88f571ca3d02c179",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:707b0c6d0f66d37633c14112d845cbaaf39046cb2ff069f6f1edd25727afa303`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subpresheafContinuousPrelocalIsoPresheafToTop {X : TopCat.{u}} (T : TopCat.{u}) :
    subpresheafToTypes (continuousPrelocal X T) ≅ presheafToTop X T :=
  NatIso.ofComponents fun X ↦
    { hom := ↾fun f ↦ ofHom ⟨f.1, f.2⟩
      inv := ↾fun f ↦ ⟨f.1, f.1.2⟩ }

/-- The sheaf of continuous functions on `X` with values in a space `T`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243541d6420c86b4346c81579a8f7eb0607c1cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
