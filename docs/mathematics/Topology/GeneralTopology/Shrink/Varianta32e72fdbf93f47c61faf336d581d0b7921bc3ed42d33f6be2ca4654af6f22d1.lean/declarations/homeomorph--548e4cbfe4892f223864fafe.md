# homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a38a8ae279ccd528c4b8f02b3d4d9fda3f7c4cc53db9823dc31b4c34798f17c5",
  "kind": "def",
  "lexical_name": "homeomorph",
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
  "slug": "homeomorph--548e4cbfe4892f223864fafe",
  "source": {
    "blob": "cf51bfc09c9afa77b2711d64917128924435384d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 24,
    "path": "GRWTSK/Topology/GeneralTopology/Shrink/Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:548e4cbfe4892f223864fafeda1801690d4f1c4dd4f5531f92f251af699ea213",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Shrink/Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a38a8ae279ccd528c4b8f02b3d4d9fda3f7c4cc53db9823dc31b4c34798f17c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homeomorph (X : Type u) [TopologicalSpace X] [Small.{v} X] :
    X ≃ₜ Shrink.{v} X where
  __ := equivShrink X
  continuous_toFun := continuous_coinduced_rng
  continuous_invFun := by
    convert continuous_induced_dom
    simp only [Equiv.invFun_as_coe, Equiv.induced_symm]
    rfl

end Shrink
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Shrink/Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Shrink/Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf51bfc09c9afa77b2711d64917128924435384d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
