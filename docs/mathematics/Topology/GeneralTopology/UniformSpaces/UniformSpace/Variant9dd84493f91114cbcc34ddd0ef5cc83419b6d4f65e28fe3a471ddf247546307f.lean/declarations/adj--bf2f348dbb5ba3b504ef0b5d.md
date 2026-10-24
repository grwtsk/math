# adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20f4e6f73ba1c429be76df6e097c1ff69744e96df2f593f3103c377c5990bc2a",
  "kind": "def",
  "lexical_name": "adj",
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
  "slug": "adj--bf2f348dbb5ba3b504ef0b5d",
  "source": {
    "blob": "eba20c9a48ef18c4a8b84f9a36c4c711e2a45cd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf2f348dbb5ba3b504ef0b5d264c54525c78b72c8a45ee0c9e4d921e7662240e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20f4e6f73ba1c429be76df6e097c1ff69744e96df2f593f3103c377c5990bc2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def adj : completionFunctor ⊣ forget₂ CpltSepUniformSpace UniformSpaceCat :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y =>
        { toFun := fun f => completionHom X ≫ f.hom
          invFun := fun f => extensionHom f
          left_inv := fun f => InducedCategory.hom_ext (by simp)
          right_inv := fun f => by
            ext x
            rcases f with ⟨⟨_, _⟩⟩
            exact @Completion.extension_coe _ _ _ _ _ (CpltSepUniformSpace.t0Space _)
              ‹_› _ }
      homEquiv_naturality_left_symm := fun {X' X Y} f g => by
        ext x
        dsimp [-Function.comp_apply]
        erw [Completion.extension_map (γ := Y) g.hom.2 f.hom.2]
        rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformSpace/Variant9dd84493f91114cbcc34ddd0ef5cc83419b6d4f65e28fe3a471ddf247546307f.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba20c9a48ef18c4a8b84f9a36c4c711e2a45cd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
