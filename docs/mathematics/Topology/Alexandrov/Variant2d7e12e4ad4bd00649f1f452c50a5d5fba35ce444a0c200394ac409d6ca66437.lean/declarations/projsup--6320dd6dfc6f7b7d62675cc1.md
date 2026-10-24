# projSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a419d429082233319e6b8ac310ba44ce66573cc7a748f0586f0b288b54663c11",
  "kind": "def",
  "lexical_name": "projSup",
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
  "slug": "projsup--6320dd6dfc6f7b7d62675cc1",
  "source": {
    "blob": "a7d584220c37ddce33bbd69a2cb6b88cf10e2b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6320dd6dfc6f7b7d62675cc1156f26329d111561af25e043111ffb0f63230ca8",
  "verification": {
    "reference": "docs/verification/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a419d429082233319e6b8ac310ba44ce66573cc7a748f0586f0b288b54663c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projSup {ι : Type v} (Us : ι → Opens X) :
    StructuredArrow (.op <| iSup Us) (principals X) ⥤
      (OpensLeCover (X := ↧X) Us)ᵒᵖ where
  obj f := .op <| .mk (principalOpen f.right) <| exists_le_of_le_sup Us f.hom.unop.le
  map e := (ObjectProperty.homMk (homOfLE (principalOpen_le e.right.le))).op

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
variable {F} in
/-- This is an auxiliary definition which is only meant to be used in `isLimit` below. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d584220c37ddce33bbd69a2cb6b88cf10e2b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
