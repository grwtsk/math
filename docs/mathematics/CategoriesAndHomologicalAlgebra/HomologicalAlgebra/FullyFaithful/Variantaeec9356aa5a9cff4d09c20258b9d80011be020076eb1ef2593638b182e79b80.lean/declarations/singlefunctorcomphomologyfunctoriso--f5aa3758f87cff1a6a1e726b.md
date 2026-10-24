# singleFunctorCompHomologyFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a0d9b39bf2c5ad5a0fb57695ee0d9178275aeb33c299ae6d450605aed065500",
  "kind": "def",
  "lexical_name": "singleFunctorCompHomologyFunctorIso",
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
  "slug": "singlefunctorcomphomologyfunctoriso--f5aa3758f87cff1a6a1e726b",
  "source": {
    "blob": "68411ca22922c4a32c2fb60fbd19ea733c0ae559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variantaeec9356aa5a9cff4d09c20258b9d80011be020076eb1ef2593638b182e79b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5aa3758f87cff1a6a1e726b9afcba34d7c40a6e5422dcedcf1b7cb3aed5eb9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variantaeec9356aa5a9cff4d09c20258b9d80011be020076eb1ef2593638b182e79b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a0d9b39bf2c5ad5a0fb57695ee0d9178275aeb33c299ae6d450605aed065500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def singleFunctorCompHomologyFunctorIso (n : ℤ) :
    singleFunctor C n ⋙ homologyFunctor C n ≅ 𝟭 C :=
  Functor.isoWhiskerRight ((SingleFunctors.evaluation _ _ n).mapIso
    (singleFunctorsPostcompQIso C)) _ ≪≫ Functor.associator _ _ _ ≪≫
    Functor.isoWhiskerLeft _ (homologyFunctorFactors C n) ≪≫
      (HomologicalComplex.homologyFunctorSingleIso _ _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variantaeec9356aa5a9cff4d09c20258b9d80011be020076eb1ef2593638b182e79b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/FullyFaithful/Variantaeec9356aa5a9cff4d09c20258b9d80011be020076eb1ef2593638b182e79b80.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68411ca22922c4a32c2fb60fbd19ea733c0ae559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
