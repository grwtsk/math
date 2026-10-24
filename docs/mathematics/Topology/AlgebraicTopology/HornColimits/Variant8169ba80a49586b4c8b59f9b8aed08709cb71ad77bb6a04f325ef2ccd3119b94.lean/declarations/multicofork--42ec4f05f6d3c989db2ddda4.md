# multicofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d354308bc6792d1aae7e041ef7aa2aed51218b495dacd6f5a40ed54d6439c4bb",
  "kind": "def",
  "lexical_name": "multicofork",
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
  "slug": "multicofork--42ec4f05f6d3c989db2ddda4",
  "source": {
    "blob": "e9acaa429e2253790b6b92d991b07e74ea0d316a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 216,
    "path": "GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42ec4f05f6d3c989db2ddda42aced9ab67d5b38bf4081edd69ddff36272acc52",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d354308bc6792d1aae7e041ef7aa2aed51218b495dacd6f5a40ed54d6439c4bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def multicofork (hf : horn.IsCompatible f) :
    Multicofork ((multicoequalizerDiagram i).multispanIndex.toLinearOrder.map
      (Subcomplex.toSSetFunctor)) :=
  Multicofork.ofπ _ X (fun ⟨j, hj⟩ ↦ (stdSimplex.faceSingletonComplIso j).inv ≫ f j hj) (by
    obtain _ | n := n
    · rintro ⟨⟨a, b⟩, hab⟩
      grind
    · rintro ⟨⟨⟨a, ha⟩, ⟨b, hb⟩⟩, hab : a < b⟩
      simp only [Set.mem_compl_iff, Set.mem_singleton_iff] at ha hb
      dsimp
      rw [homOfLE_faceSingletonComplIso_inv_eq_facePairComplIso_inv_δ_pred_assoc _ _ hab,
        homOfLE_faceSingletonComplIso_inv_eq_facePairComplIso_inv_δ_castPred_assoc _ _ hab,
        hf.δ_pred_comp ..])

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HornColimits/Variant8169ba80a49586b4c8b59f9b8aed08709cb71ad77bb6a04f325ef2ccd3119b94.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9acaa429e2253790b6b92d991b07e74ea0d316a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
