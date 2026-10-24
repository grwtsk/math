# quotientSpanCXSubCXSubCAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2b694b010fc3823b76fcbc2e3bc92ef8f019cae49bb70a74390bfbfd8566d9a",
  "kind": "def",
  "lexical_name": "quotientSpanCXSubCXSubCAlgEquiv",
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
  "slug": "quotientspancxsubcxsubcalgequiv--0810bc13b265477a162d1c1e",
  "source": {
    "blob": "05896661c7d7f09dd73e3cc95cce5967a4481bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0810bc13b265477a162d1c1e77b466eef9a84287eaf4493cec27fe184447677c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2b694b010fc3823b76fcbc2e3bc92ef8f019cae49bb70a74390bfbfd8566d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientSpanCXSubCXSubCAlgEquiv {x : R} {y : R[X]} :
    @AlgEquiv R (R[X][X] ⧸ (Ideal.span {C (X - C x), X - C y} : Ideal <| R[X][X])) R _ _ _
      (Ideal.Quotient.algebra R) _ :=
((quotientSpanCXSubCAlgEquiv (X - C x) y).restrictScalars R).trans <| quotientSpanXSubCAlgEquiv x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05896661c7d7f09dd73e3cc95cce5967a4481bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
