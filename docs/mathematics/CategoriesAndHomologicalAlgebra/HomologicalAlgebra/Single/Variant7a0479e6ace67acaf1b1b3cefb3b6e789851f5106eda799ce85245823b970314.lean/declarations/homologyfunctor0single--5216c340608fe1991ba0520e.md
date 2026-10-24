# homologyFunctor0Single₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e93141466fc494d46c8b436b61bc7e59f0922680fb462db06dd53f13e6b70a49",
  "kind": "def",
  "lexical_name": "homologyFunctor0Single₀",
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
  "slug": "homologyfunctor0single--5216c340608fe1991ba0520e",
  "source": {
    "blob": "69ace6a6831676016eb000e6333437c17f47bc60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 393,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5216c340608fe1991ba0520ef42a70aaf043e425b5adcec491c6d817d22fbbe3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e93141466fc494d46c8b436b61bc7e59f0922680fb462db06dd53f13e6b70a49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homologyFunctor0Single₀ : single₀ V ⋙ homologyFunctor V _ 0 ≅ 𝟭 V :=
  NatIso.ofComponents (fun X => homology.congr _ _ (by simp) (by simp) ≪≫ homologyZeroZero)
    fun f => by
      -- Porting note: why can't `aesop_cat` do this?
      dsimp
      ext
      simp
#align cochain_complex.homology_functor_0_single₀ CochainComplex.homologyFunctor0Single₀

/-- Sending objects to cochain complexes supported at `0` then taking `(n+1)`-st homology
is the same as the zero functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Single/Variant7a0479e6ace67acaf1b1b3cefb3b6e789851f5106eda799ce85245823b970314.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69ace6a6831676016eb000e6333437c17f47bc60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
