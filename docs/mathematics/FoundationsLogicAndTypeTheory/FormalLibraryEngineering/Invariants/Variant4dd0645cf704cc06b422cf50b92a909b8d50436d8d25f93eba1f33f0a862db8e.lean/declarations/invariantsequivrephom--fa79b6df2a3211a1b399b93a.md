# invariantsEquivRepHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ee3c87814f6037912102a345207728586136c6be8e29934834e3e32f5ee7112",
  "kind": "def",
  "lexical_name": "invariantsEquivRepHom",
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
  "slug": "invariantsequivrephom--fa79b6df2a3211a1b399b93a",
  "source": {
    "blob": "699b83742abd94cab31b90ec76f31abad2ef4ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa79b6df2a3211a1b399b93a15bf3e9964497c3d2af2782f313284ea5a55ea33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ee3c87814f6037912102a345207728586136c6be8e29934834e3e32f5ee7112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invariantsEquivRepHom (X Y : Rep k G) : (linHom X.ρ Y.ρ).invariants ≃ₗ[k] X ⟶ Y where
  toFun f := ⟨ModuleCat.ofHom f.val, fun g =>
    ModuleCat.hom_ext ((mem_invariants_iff_comm _ g).1 (f.property g))⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := ⟨f.hom.hom, fun g =>
    (mem_invariants_iff_comm _ g).2 (ModuleCat.hom_ext_iff.mp (f.comm g))⟩
  left_inv _ := by ext; rfl
  right_inv _ := by ext; rfl

end Rep

section FDRep

variable {k : Type u} [Field k] {G : Type u} [Group G]

/-- The invariants of the representation `linHom X.ρ Y.ρ` correspond to the representation
homomorphisms from `X` to `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant4dd0645cf704cc06b422cf50b92a909b8d50436d8d25f93eba1f33f0a862db8e.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699b83742abd94cab31b90ec76f31abad2ef4ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
