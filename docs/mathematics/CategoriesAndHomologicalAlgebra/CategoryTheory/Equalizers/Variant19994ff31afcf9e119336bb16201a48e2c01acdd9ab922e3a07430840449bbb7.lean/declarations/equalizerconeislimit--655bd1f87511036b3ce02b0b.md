# equalizerConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e3cf5fa2363c5eb06b276eb9276a577868d209d3171f52dcab172fdc6f13784",
  "kind": "def",
  "lexical_name": "equalizerConeIsLimit",
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
  "slug": "equalizerconeislimit--655bd1f87511036b3ce02b0b",
  "source": {
    "blob": "7ea0877f19c4562bd25dd1cd4f758a4c9450416c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:655bd1f87511036b3ce02b0b59dbc7a4e8b2a404febe5f848f201c602bfbb112",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e3cf5fa2363c5eb06b276eb9276a577868d209d3171f52dcab172fdc6f13784`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equalizerConeIsLimit (F : WalkingParallelPair ⥤ C) : IsLimit (equalizerCone F) where
  lift := by
    intro c; apply pullback.lift (c.π.app _) (c.π.app _)
    ext <;> simp
  fac := by rintro c (_ | _) <;> simp
  uniq := by
    intro c _ J
    have J0 := J WalkingParallelPair.zero; simp at J0
    apply pullback.hom_ext
    · rwa [limit.lift_π]
    · erw [limit.lift_π, ← J0, pullbackFst_eq_pullback_snd]

end HasEqualizersOfHasPullbacksAndBinaryProducts

open HasEqualizersOfHasPullbacksAndBinaryProducts

-- This is not an instance, as it is not always how one wants to construct equalizers!
/-- Any category with pullbacks and binary products, has equalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant19994ff31afcf9e119336bb16201a48e2c01acdd9ab922e3a07430840449bbb7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ea0877f19c4562bd25dd1cd4f758a4c9450416c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
