# instDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00b36eab07bb726f739e36af40ea0f109b6610185c9439c95f2cbfa59b0aae47",
  "kind": "instance",
  "lexical_name": "instDistribMulAction",
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
  "slug": "instdistribmulaction--bf506eac968a26cb10478fb6",
  "source": {
    "blob": "c39fc07efd6885963d2a7e97ac715e1610848e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 46,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf506eac968a26cb10478fb6577a93be7f3d10d8ccd442e9525f696d09edd058",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00b36eab07bb726f739e36af40ea0f109b6610185c9439c95f2cbfa59b0aae47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDistribMulAction [Monoid G₀] [AddMonoid M₀] [DistribMulAction G₀ M₀] :
    DistribMulAction G₀ᵒᵈ M₀ := ‹DistribMulAction G₀ M₀›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Synonym/Variantb73ce2d610ac63a546139b221e6a07b7bba631b2c8df2f5d5cff74c368896cf8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39fc07efd6885963d2a7e97ac715e1610848e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
