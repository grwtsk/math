# functorToMonoOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0079c65a7483335c7847148725bdb3319dc247ff432f58bf2aa393a48713c542",
  "kind": "def",
  "lexical_name": "functorToMonoOver",
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
  "slug": "functortomonoover--f096d5bc900dc6479078400f",
  "source": {
    "blob": "e3bdc9953f13dbbffdd6cc937da96991022bbb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 232,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f096d5bc900dc6479078400fd8c688d77a9695c1fb8f77e6e9195fa4aa14980f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0079c65a7483335c7847148725bdb3319dc247ff432f58bf2aa393a48713c542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorToMonoOver : J ⥤ MonoOver X where
  obj j := MonoOver.mk (transfiniteIterate (largerSubobject hG) j A₀).arrow
  map {j j'} f := MonoOver.homMk (Subobject.ofLE _ _
      (monotone_transfiniteIterate _ _ (le_largerSubobject hG) (leOfHom f)))

/-- The functor `J ⥤ C` induced by `functorToMonoOver hG A₀ J : J ⥤ MonoOver X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bdc9953f13dbbffdd6cc937da96991022bbb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
