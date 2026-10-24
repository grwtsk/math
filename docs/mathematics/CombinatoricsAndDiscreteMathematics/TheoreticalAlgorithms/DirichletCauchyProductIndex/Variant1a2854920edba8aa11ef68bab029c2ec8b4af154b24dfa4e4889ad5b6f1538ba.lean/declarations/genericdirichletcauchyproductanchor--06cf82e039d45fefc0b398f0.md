# genericDirichletCauchyProductAnchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30b59d1115fb1b8ce596a1aa38d7c1f281f567beb1f08924e2e0e47a0e9ae425",
  "kind": "def",
  "lexical_name": "genericDirichletCauchyProductAnchor",
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
  "slug": "genericdirichletcauchyproductanchor--06cf82e039d45fefc0b398f0",
  "source": {
    "blob": "240adf1e520cb0c47374a6c66829691f93e3b17d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirichletCauchyProductIndex/Variant1a2854920edba8aa11ef68bab029c2ec8b4af154b24dfa4e4889ad5b6f1538ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06cf82e039d45fefc0b398f0e4bfbbd3d9eccbec8f65624763c428a12583e60e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirichletCauchyProductIndex/Variant1a2854920edba8aa11ef68bab029c2ec8b4af154b24dfa4e4889ad5b6f1538ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30b59d1115fb1b8ce596a1aa38d7c1f281f567beb1f08924e2e0e47a0e9ae425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genericDirichletCauchyProductAnchor : ClassicalAnchor where
  shortName := "Generic Dirichlet Cauchy product"
  paperOrBook := "Checked rebuild Dirichlet-series layer"
  theoremLabel := "complexDirichletSeries_mul_of_absSummable"
  mathematicalContent :=
    "Absolutely summable Dirichlet series multiply by Dirichlet convolution in the region of absolute convergence."
  formalRole := RebuildProofStatus.classicalAnchorOnly
  proofDependencyAllowed := rfl
  theoremStatus := RebuildProofStatus.checkedByLean

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirichletCauchyProductIndex/Variant1a2854920edba8aa11ef68bab029c2ec8b4af154b24dfa4e4889ad5b6f1538ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirichletCauchyProductIndex/Variant1a2854920edba8aa11ef68bab029c2ec8b4af154b24dfa4e4889ad5b6f1538ba.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240adf1e520cb0c47374a6c66829691f93e3b17d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
