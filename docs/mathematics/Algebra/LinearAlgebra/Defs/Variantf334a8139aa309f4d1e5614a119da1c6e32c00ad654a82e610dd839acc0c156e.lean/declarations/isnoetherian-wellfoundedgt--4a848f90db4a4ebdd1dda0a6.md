# IsNoetherian.wellFoundedGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5c6bbec961928b57072ef2ef159a3444a70d0a341f2a63900b4c9a5c8505df5",
  "kind": "instance",
  "lexical_name": "IsNoetherian.wellFoundedGT",
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
  "slug": "isnoetherian-wellfoundedgt--4a848f90db4a4ebdd1dda0a6",
  "source": {
    "blob": "f80f4aac87eaf9503ad81fdbb9102d50c20f2b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 124,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a848f90db4a4ebdd1dda0a68f26e43d77a50cdbf7e997d3b65fd548163f5772",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5c6bbec961928b57072ef2ef159a3444a70d0a341f2a63900b4c9a5c8505df5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsNoetherian.wellFoundedGT [h : IsNoetherian R M] : WellFoundedGT (Submodule R M) :=
  h.wf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantf334a8139aa309f4d1e5614a119da1c6e32c00ad654a82e610dd839acc0c156e.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f80f4aac87eaf9503ad81fdbb9102d50c20f2b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
