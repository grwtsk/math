# coequalizerCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a358c556fad9438d1b0b393cb5aa5317eaa473899b5aee6f24601442d0ee1e9",
  "kind": "def",
  "lexical_name": "coequalizerCoconeIsColimit",
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
  "slug": "coequalizercoconeiscolimit--cb4711f95ba11bb1d0ef0358",
  "source": {
    "blob": "c9b162c0b2a47b9719f084434a2eb327e825dffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb4711f95ba11bb1d0ef0358b32b1b9a83c2becf985c4bc1cad51dba5e7fc832",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a358c556fad9438d1b0b393cb5aa5317eaa473899b5aee6f24601442d0ee1e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coequalizerCoconeIsColimit (F : WalkingParallelPair ⥤ C) : IsColimit (coequalizerCocone F) where
  desc := by
    intro c; apply pushout.desc (c.ι.app _) (c.ι.app _)
    ext <;> simp
  fac := by rintro c (_ | _) <;> simp
  uniq := by
    intro c m J
    have J1 : pushoutInl F ≫ m = c.ι.app WalkingParallelPair.one := by
      simpa using J WalkingParallelPair.one
    apply pushout.hom_ext
    · rw [colimit.ι_desc]
      exact J1
    · rw [colimit.ι_desc, ← pushoutInl_eq_pushout_inr]
      exact J1
#align category_theory.limits.has_coequalizers_of_has_pushouts_and_binary_coproducts.coequalizer_cocone_is_colimit CategoryTheory.Limits.HasCoequalizersOfHasPushoutsAndBinaryCoproducts.coequalizerCoconeIsColimit

end HasCoequalizersOfHasPushoutsAndBinaryCoproducts

open HasCoequalizersOfHasPushoutsAndBinaryCoproducts

-- This is not an instance, as it is not always how one wants to construct equalizers!
/-- Any category with pullbacks and binary products, has equalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9b162c0b2a47b9719f084434a2eb327e825dffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
