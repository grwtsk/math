# mapArrowHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eff533e84f68c8fa500d1af02ce16d4a93ef3eb968f0df5be41c5a04e33e0dbb",
  "kind": "def",
  "lexical_name": "mapArrowHom",
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
  "slug": "maparrowhom--af29ba1969dd9430232ebfb9",
  "source": {
    "blob": "0b3079aab9fc47cc0e38d97c8da9ec3261213f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 430,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af29ba1969dd9430232ebfb9f0af7ad1f090db74390537319ecae16070479614",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eff533e84f68c8fa500d1af02ce16d4a93ef3eb968f0df5be41c5a04e33e0dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapArrowHom (α : Arrow.mk φ ⟶ Arrow.mk φ') :
    homotopyCofiber φ ⟶ homotopyCofiber φ' :=
  desc _ (α.right ≫ homotopyCofiber.inr φ')
    ((Homotopy.ofEq (by
        simp [reassoc_of% dsimp% α.w])).trans (((inrCompHomotopy φ' H).compLeft α.left).trans
      (Homotopy.ofEq (by simp))))

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant200ad5f7820b8f2b0393cc4ee3e248a486c02daeb863a876e3f3e2e699a49f4d.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b3079aab9fc47cc0e38d97c8da9ec3261213f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
