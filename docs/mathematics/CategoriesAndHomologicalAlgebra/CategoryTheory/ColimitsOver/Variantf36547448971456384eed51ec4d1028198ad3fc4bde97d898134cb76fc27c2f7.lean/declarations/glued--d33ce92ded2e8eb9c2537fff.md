# glued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e81e0bfe3fce2dec033a96f2bbbb655de1af8dc6d1c7d75b258d408badb3d9a7",
  "kind": "def",
  "lexical_name": "glued",
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
  "slug": "glued--d33ce92ded2e8eb9c2537fff",
  "source": {
    "blob": "b03377d4b45ff784031d97243abc82352ecb9aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d33ce92ded2e8eb9c2537fffc656f04342537800e06144453ff4529e63ba1824",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e81e0bfe3fce2dec033a96f2bbbb655de1af8dc6d1c7d75b258d408badb3d9a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def glued : P.Over ⊤ S :=
  Over.mk _ d.relativeGluingData.toBase <| by
    rw [IsZariskiLocalAtTarget.iff_of_openCover (P := P) 𝒰]
    intro i
    rw [Scheme.Cover.pullbackHom,
      ← (d.relativeGluingData.isPullback_natTrans_ι_toBase i).flip.isoPullback_inv_snd,
      P.cancel_left_of_respectsIso]
    exact (d.cocone i).pt.prop

set_option backward.isDefEq.respectTransparency false in
/-- `colim Dᵢ` is the pullback of the glued object over `S` along the inclusion `𝒰ᵢ ⟶ S`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variantf36547448971456384eed51ec4d1028198ad3fc4bde97d898134cb76fc27c2f7.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03377d4b45ff784031d97243abc82352ecb9aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
