# preservesLimitNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c92af82f301a76d7614eee4832b7b2dc50d5f284b44385179d5860c3bd1146d8",
  "kind": "def",
  "lexical_name": "preservesLimitNatIso",
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
  "slug": "preserveslimitnatiso--bcdf16665cc8516088218ef7",
  "source": {
    "blob": "5ec5cda870afbe0d73d03598f45ae7525ffbdeb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcdf16665cc8516088218ef76413064aa198f1a59a847324bd9fae0b31450e92",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c92af82f301a76d7614eee4832b7b2dc50d5f284b44385179d5860c3bd1146d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesLimitNatIso : lim ⋙ G ≅ (whiskeringRight J C D).obj G ⋙ lim :=
  NatIso.ofComponents (fun F => preservesLimitIso G F)
    (by
      intro _ _ f
      apply limit.hom_ext; intro j
      dsimp
      simp only [preservesLimitIso_hom_π, whiskerRight_app, limMap_π, Category.assoc,
        preservesLimitIso_hom_π_assoc, ← G.map_comp])

end

section

variable [HasLimit F] [HasLimit (F ⋙ G)]

/-- If the comparison morphism `G.obj (limit F) ⟶ limit (F ⋙ G)` is an isomorphism, then `G`
    preserves limits of `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf89e50fd64361b9570ae4c0b1b92ba5028560ebc8a0b01777e31ddc373c6f610.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ec5cda870afbe0d73d03598f45ae7525ffbdeb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
