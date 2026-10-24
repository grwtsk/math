# isLimitMapConeFanMkEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96006079b73046e05e2cca990b7290db5c184015d97375224dadd4e05730f9ec",
  "kind": "def",
  "lexical_name": "isLimitMapConeFanMkEquiv",
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
  "slug": "islimitmapconefanmkequiv--3fed9173d7554e161382e6c3",
  "source": {
    "blob": "d5fe03189195dae553f0a49e031b44d5a150b3ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante907ccee56312d015df19c186fc74f20494d92ea6cf1a70eb66a2f9b3a5a1f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fed9173d7554e161382e6c31dd2803677924f17d0a5433c107313cdb810e266",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante907ccee56312d015df19c186fc74f20494d92ea6cf1a70eb66a2f9b3a5a1f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96006079b73046e05e2cca990b7290db5c184015d97375224dadd4e05730f9ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitMapConeFanMkEquiv {P : C} (g : ∀ j, P ⟶ f j) :
    IsLimit (Functor.mapCone G (Fan.mk P g)) ≃
      IsLimit (Fan.mk _ fun j => G.map (g j) : Fan fun j => G.obj (f j)) := by
  refine (IsLimit.postcomposeHomEquiv ?_ _).symm.trans (IsLimit.equivIsoLimit ?_)
  · exact Discrete.natIso fun j => Iso.refl (G.obj (f j.as))
  exact Cone.ext (Iso.refl _) fun j ↦ by dsimp; cases j; simp

/-- The property of preserving products expressed in terms of fans. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante907ccee56312d015df19c186fc74f20494d92ea6cf1a70eb66a2f9b3a5a1f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante907ccee56312d015df19c186fc74f20494d92ea6cf1a70eb66a2f9b3a5a1f64.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fe03189195dae553f0a49e031b44d5a150b3ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
