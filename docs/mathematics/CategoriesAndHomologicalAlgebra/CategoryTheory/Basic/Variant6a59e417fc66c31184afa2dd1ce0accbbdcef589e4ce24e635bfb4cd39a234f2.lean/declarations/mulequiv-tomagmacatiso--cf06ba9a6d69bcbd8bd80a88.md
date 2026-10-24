# MulEquiv.toMagmaCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e758f76da93c04013923ade0497499f397740e4d8dfa44bb018a9c671855c258",
  "kind": "def",
  "lexical_name": "MulEquiv.toMagmaCatIso",
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
  "slug": "mulequiv-tomagmacatiso--cf06ba9a6d69bcbd8bd80a88",
  "source": {
    "blob": "6822f754e024e85f9348656e06888f4173af81c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 236,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf06ba9a6d69bcbd8bd80a88f3e6f8888d74f7a1b7771daaa172916758adc9df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e758f76da93c04013923ade0497499f397740e4d8dfa44bb018a9c671855c258`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toMagmaCatIso (e : X ≃* Y) : MagmaCat.of X ≅ MagmaCat.of Y where
  hom := e.toMulHom
  inv := e.symm.toMulHom
  hom_inv_id := by
    ext
    simp_rw [comp_apply, toMulHom_eq_coe, MagmaCat.MulEquiv_coe_eq, symm_apply_apply, id_apply]

#align mul_equiv.to_Magma_iso MulEquiv.toMagmaCatIso
#align add_equiv.to_AddMagma_iso AddEquiv.toAddMagmaCatIso

end

section

variable [Semigroup X] [Semigroup Y]

/-- Build an isomorphism in the category `Semigroup` from a `mul_equiv` between `semigroup`s. -/
@[to_additive (attr := simps)
  "Build an isomorphism in the category
  `AddSemigroup` from an `add_equiv` between `add_semigroup`s."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6a59e417fc66c31184afa2dd1ce0accbbdcef589e4ce24e635bfb4cd39a234f2.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6822f754e024e85f9348656e06888f4173af81c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
