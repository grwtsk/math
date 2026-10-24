# regularEpiOfPreserves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d62907d96387217d1a7766fa12d502ec6d38ca7281d50c14cd3e1f3cd9377d1f",
  "kind": "def",
  "lexical_name": "regularEpiOfPreserves",
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
  "slug": "regularepiofpreserves--c9ebb86abe472dfe4abc754d",
  "source": {
    "blob": "f7c9b62c68bec4821fba9efe14d36fd4b88f804e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9ebb86abe472dfe4abc754d308bb10ddf27c291aaa7681fb79473cd65c754a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d62907d96387217d1a7766fa12d502ec6d38ca7281d50c14cd3e1f3cd9377d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def regularEpiOfPreserves {C D : Type*} [Category* C] [Category* D] {X Y : C}
    (f : X ⟶ Y) [EffectiveEpi f] (F : C ⥤ D) [PreservesEffectiveEpis F]
    [PreservesLimitsOfShape WalkingCospan F] (c : PullbackCone f f) (hc : IsLimit c) :
    RegularEpi (F.map f) where
  W := F.obj c.pt
  left := F.map c.fst
  right := F.map c.snd
  w := by rw [← F.map_comp, c.condition]; simp
  isColimit := by
    refine isColimitCoforkOfEffectiveEpi (F.map f) (.mk (F.map c.fst) (F.map c.snd) ?_) ?_
    · simp [← Functor.map_comp, c.condition]
    · refine IsLimit.equivOfNatIsoOfIso ?_ _ _ ?_ (isLimitOfPreserves F hc)
      · exact cospanIsoMk (Iso.refl _) (Iso.refl _) (Iso.refl _)
      · exact Cone.ext (Iso.refl _) <| by rintro (_ | _ | _) <;> cat_disch

/--
A class describing the property of preserving effective epimorphic families.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant3fd6657bdb4a2f835510de7b0e909512cdc14cef51924ca66c81ab1a7322d447.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7c9b62c68bec4821fba9efe14d36fd4b88f804e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
