# MkCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9e9c9b4f4f60efd6e9b7da3c816275bf557b560fa5180ccb11fc7341293081e",
  "kind": "structure",
  "lexical_name": "MkCore",
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
  "slug": "mkcore--3a26a71d4e8ce100ff766ad0",
  "source": {
    "blob": "694923143d2ddbfb88963488273fd033f2782247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a26a71d4e8ce100ff766ad0aff391169117014d5ff809ec992852e500859795",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9e9c9b4f4f60efd6e9b7da3c816275bf557b560fa5180ccb11fc7341293081e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MkCore where
  {J : Type u}
  U : J → TopCat.{u}
  V : ∀ i, J → Opens (U i)
  t : ∀ i j, (Opens.toTopCat _).obj (V i j) ⟶ (Opens.toTopCat _).obj (V j i)
  V_id : ∀ i, V i i = ⊤
  t_id : ∀ i, ⇑(t i i) = id
  t_inter : ∀ ⦃i j⦄ (k) (x : V i j), ↑x ∈ V i k → (((↑) : (V j i) → (U j)) (t i j x)) ∈ V j k
  cocycle :
    ∀ (i j k) (x : V i j) (h : ↑x ∈ V i k),
      -- porting note: the underscore in the next line was `↑(t i j x)`, but Lean type-mismatched
      (((↑) : (V k j) → (U k)) (t j k ⟨_, t_inter k x h⟩)) = ((↑) : (V k i) → (U k)) (t i k ⟨x, h⟩)
set_option linter.uppercaseLean3 false in
#align Top.glue_data.mk_core TopCat.GlueData.MkCore

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694923143d2ddbfb88963488273fd033f2782247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
