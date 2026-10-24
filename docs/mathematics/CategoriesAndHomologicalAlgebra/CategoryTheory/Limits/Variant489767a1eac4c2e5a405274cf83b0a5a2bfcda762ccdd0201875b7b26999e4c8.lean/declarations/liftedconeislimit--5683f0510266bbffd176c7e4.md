# liftedConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f09f3bc042ad5ec7d6b9ae0d66df9256a9759c55f5fc81110f4053f83874b86d",
  "kind": "def",
  "lexical_name": "liftedConeIsLimit",
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
  "slug": "liftedconeislimit--5683f0510266bbffd176c7e4",
  "source": {
    "blob": "4f91b124d1e98a6e9005e55db78b40831d951c7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5683f0510266bbffd176c7e41a7c9fb3a7c15dd251381623c74b219ac2347045",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f09f3bc042ad5ec7d6b9ae0d66df9256a9759c55f5fc81110f4053f83874b86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftedConeIsLimit : IsLimit (liftedCone D c t) where
  lift s :=
    { f := t.lift ((forget T).mapCone s)
      h :=
        t.hom_ext fun j => by
          dsimp
          rw [Category.assoc, Category.assoc, t.fac, newCone_π_app, ← Functor.map_comp_assoc,
            t.fac, Functor.mapCone_π_app]
          apply (s.π.app j).h }
  uniq s m J := by
    ext1
    apply t.hom_ext
    intro j
    simpa [t.fac ((forget T).mapCone s) j] using congr_arg Algebra.Hom.f (J j)

end ForgetCreatesLimits

-- Theorem 5.6.5 from [Riehl][riehl2017]
/-- The forgetful functor from the Eilenberg-Moore category creates limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant489767a1eac4c2e5a405274cf83b0a5a2bfcda762ccdd0201875b7b26999e4c8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f91b124d1e98a6e9005e55db78b40831d951c7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
