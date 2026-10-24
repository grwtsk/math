# toComonObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8220d200540355f12a2782bc58e93a384779fbc099f09a7515ada4aba9faf838",
  "kind": "def",
  "lexical_name": "toComonObj",
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
  "slug": "tocomonobj--c2153c04e7188ef2d3c55e16",
  "source": {
    "blob": "fa1e1cc06d1f15077f2619529b4740b37f9cb7bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2153c04e7188ef2d3c55e163cf98d1030b2cc3508227a11de863c9f99921112",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8220d200540355f12a2782bc58e93a384779fbc099f09a7515ada4aba9faf838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps X counit comul] def toComonObj (X : CoalgCat R) : Comon_ (ModuleCat R) where
  X := ModuleCat.of R X
  counit := ModuleCat.ofHom Coalgebra.counit
  comul := ModuleCat.ofHom Coalgebra.comul
  counit_comul := ModuleCat.hom_ext <| by simpa using Coalgebra.rTensor_counit_comp_comul
  comul_counit := ModuleCat.hom_ext <| by simpa using Coalgebra.lTensor_counit_comp_comul
  comul_assoc := ModuleCat.hom_ext <| by simp_rw [ModuleCat.of_coe]; exact Coalgebra.coassoc.symm

variable (R) in
/-- The natural functor from `R`-coalgebras to comonoid objects in the category of `R`-modules. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variant5ba7330c5e7731c567cd91c2c296abbd0a1deb6e94c9ebb0288e9f99aad69552.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1e1cc06d1f15077f2619529b4740b37f9cb7bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
