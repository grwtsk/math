# glued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01569b1f61b31f6cca1c4e1fcb8a0b3b73be50b78731c84f988a1792010529fb",
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
  "slug": "glued--63e5b3dc20a39a8edb95e12e",
  "source": {
    "blob": "df3e1cbd5a174f6e271346af5460e6ee9abd0018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63e5b3dc20a39a8edb95e12ef21a3502bc4dcba6a3e34f95d634cfa7feac55d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01569b1f61b31f6cca1c4e1fcb8a0b3b73be50b78731c84f988a1792010529fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–180.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOver/Variante2b1a5e68fe799f53b209808d7174f121cf8987ef4f61ff907d2a82c578e1314.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3e1cbd5a174f6e271346af5460e6ee9abd0018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
