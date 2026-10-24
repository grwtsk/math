# semilatticeInfOfIsLimitBinaryFan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:508904a8b7d7a476b07e29bdd0fb9eb9878ec0192fa6eac4ca5456202066a24d",
  "kind": "def",
  "lexical_name": "semilatticeInfOfIsLimitBinaryFan",
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
  "slug": "semilatticeinfofislimitbinaryfan--99f631d716cc6d0f44b117cb",
  "source": {
    "blob": "2a3df3fb3c4c4231f3eca9f80c6a878a1c2ec8de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99f631d716cc6d0f44b117cbfff983621dcef63050c9637c4653d6d7e2d0a315",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:508904a8b7d7a476b07e29bdd0fb9eb9878ec0192fa6eac4ca5456202066a24d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def semilatticeInfOfIsLimitBinaryFan
    (c : ∀ (X Y : C), BinaryFan X Y) (h : (X Y : C) → IsLimit (c X Y)) : SemilatticeInf C where
  inf X Y := (c X Y).pt
  inf_le_left X Y := leOfHom (c X Y).fst
  inf_le_right X Y := leOfHom (c X Y).snd
  le_inf _ _ _ le_fst le_snd := leOfHom <| BinaryFan.IsLimit.lift (h _ _) le_fst.hom le_snd.hom

variable (C) in
/-- If a partial order has binary products, then it is an inf-semilattice -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantbb3d8a21238bbbf990b7aed180f0d4770244d07dab76cae5e88832ab534192e9.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a3df3fb3c4c4231f3eca9f80c6a878a1c2ec8de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
