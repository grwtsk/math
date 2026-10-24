# coequalizerCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb59cc6e127dcf567fe01216a968982216a5d8645cf4ccd6adf75909789e803b",
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
  "slug": "coequalizercoconeiscolimit--d14b30f78c4a2c17477ffd21",
  "source": {
    "blob": "73d519ebd521915fed9e46ce91a3241ab5af183a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d14b30f78c4a2c17477ffd217e83777549c46c56df12935196d152b0fa095e82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb59cc6e127dcf567fe01216a968982216a5d8645cf4ccd6adf75909789e803b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–172.

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

end HasCoequalizersOfHasPushoutsAndBinaryCoproducts

open HasCoequalizersOfHasPushoutsAndBinaryCoproducts

-- This is not an instance, as it is not always how one wants to construct equalizers!
/-- Any category with pullbacks and binary products, has equalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant884f0a8563184af6383fd9c6ca287a8d1acd5cf8e622db62f9d10e5bf928d47c.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d519ebd521915fed9e46ce91a3241ab5af183a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
