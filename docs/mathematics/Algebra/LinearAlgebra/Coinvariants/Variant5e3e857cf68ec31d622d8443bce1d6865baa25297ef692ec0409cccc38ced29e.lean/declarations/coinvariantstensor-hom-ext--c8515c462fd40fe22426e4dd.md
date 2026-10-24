# coinvariantsTensor_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c930255b-3631-81a8-1ab6-240be772a4f3",
  "kind": "lemma",
  "lexical_name": "coinvariantsTensor_hom_ext",
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
  "slug": "coinvariantstensor-hom-ext--c8515c462fd40fe22426e4dd",
  "source": {
    "blob": "2da9612f613becc72de2c2f29520f2e436189d31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 434,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8515c462fd40fe22426e4ddd48da4ed8c05a111398bd152668ef994fe142986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c930255b-3631-81a8-1ab6-240be772a4f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coinvariantsTensor_hom_ext {A B : Rep.{u} k G} {M : ModuleCat k}
    {f g : ((coinvariantsTensor k G).obj A).obj B ⟶ M}
    (hfg : (coinvariantsTensorMk A B).compr₂ f.hom = (coinvariantsTensorMk A B).compr₂ g.hom) :
    f = g := coinvariantsFunctor_hom_ext <| ModuleCat.hom_ext <| TensorProduct.ext <| hfg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinvariants/Variant5e3e857cf68ec31d622d8443bce1d6865baa25297ef692ec0409cccc38ced29e.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2da9612f613becc72de2c2f29520f2e436189d31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
