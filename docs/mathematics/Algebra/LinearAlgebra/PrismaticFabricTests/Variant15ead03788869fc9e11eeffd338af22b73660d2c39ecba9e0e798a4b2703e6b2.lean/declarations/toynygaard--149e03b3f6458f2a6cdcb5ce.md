# toyNygaard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d50ffb723b2b943e26e3d1d0b63b6734eda7662253f1f90a2a56cf7179d3bf4a",
  "kind": "def",
  "lexical_name": "toyNygaard",
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
  "slug": "toynygaard--149e03b3f6458f2a6cdcb5ce",
  "source": {
    "blob": "23fdae4997a1a725a50d3ec26e21de10474d9a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrismaticFabricTests/Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:149e03b3f6458f2a6cdcb5ce766e2435be7177f8c9975020ed0a438732305c4b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrismaticFabricTests/Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d50ffb723b2b943e26e3d1d0b63b6734eda7662253f1f90a2a56cf7179d3bf4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyNygaard : NygaardDatum toyTheory where
  level := fun _ ↦ toyTheory.value
  inclusion := fun _ ↦ 𝟙 _
  transition := fun _ ↦ 𝟙 _
  transition_refl := by
    intros
    rfl
  transition_trans := by
    intros
    simp
  inclusion_natural := by
    intros
    simp

/-- Shift one means `N≥r` maps to `N≥(r+1)`; it is not called preserving. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrismaticFabricTests/Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrismaticFabricTests/Variant15ead03788869fc9e11eeffd338af22b73660d2c39ecba9e0e798a4b2703e6b2.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23fdae4997a1a725a50d3ec26e21de10474d9a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
