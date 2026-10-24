# isStableUnderColimitsOfShape_monomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56d327271761244ba96c46aa28fa18947bd44834511fc86b2666ce4032b5c45b",
  "kind": "instance",
  "lexical_name": "isStableUnderColimitsOfShape_monomorphisms",
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
  "slug": "isstableundercolimitsofshape-monomorphisms--a91b4a4d18307dda6b46a936",
  "source": {
    "blob": "b7e3c89bcbb1571e47ccdf571b4534b44d476c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a91b4a4d18307dda6b46a93631f2211c57ecb64f4c158827bd5d16daffc05fed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56d327271761244ba96c46aa28fa18947bd44834511fc86b2666ce4032b5c45b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isStableUnderColimitsOfShape_monomorphisms
    [HasColimitsOfShape J C] [(colim : (J ⥤ C) ⥤ C).PreservesMonomorphisms] :
    (monomorphisms C).IsStableUnderColimitsOfShape J where
  condition X₁ X₂ c₁ c₂ hc₁ hc₂ f hf φ hφ := by
    have (j : J) : Mono (f.app j) := hf _
    have := NatTrans.mono_of_mono_app f
    apply colim.map_mono' f hc₁ hc₂ φ (by simp [hφ])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variant1dc7d14beef0807f7875cc73b2f9b894910fe304bf9c3c0a2d13e5a1e839ebae.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7e3c89bcbb1571e47ccdf571b4534b44d476c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
