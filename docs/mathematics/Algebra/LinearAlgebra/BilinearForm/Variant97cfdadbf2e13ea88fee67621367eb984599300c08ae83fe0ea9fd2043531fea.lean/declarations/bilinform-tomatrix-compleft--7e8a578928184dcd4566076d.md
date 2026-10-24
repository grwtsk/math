# BilinForm.toMatrix_compLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a1fe54e-3403-b036-ed4a-00085966d2f1",
  "kind": "theorem",
  "lexical_name": "BilinForm.toMatrix_compLeft",
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
  "slug": "bilinform-tomatrix-compleft--7e8a578928184dcd4566076d",
  "source": {
    "blob": "5c446134845b5873fa5d6f1cbda1ad4a91953108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 392,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8a578928184dcd4566076d2e385ffaf27b768d22fcd725993e6b7f3f91898c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a1fe54e-3403-b036-ed4a-00085966d2f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BilinForm.toMatrix_compLeft (B : BilinForm R₂ M₂) (f : M₂ →ₗ[R₂] M₂) :
    BilinForm.toMatrix b (B.compLeft f) = (LinearMap.toMatrix b b f)ᵀ * BilinForm.toMatrix b B := by
  simp only [compLeft, BilinForm.toMatrix_comp b b, toMatrix_id, Matrix.mul_one]
#align bilin_form.to_matrix_comp_left BilinForm.toMatrix_compLeft

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant97cfdadbf2e13ea88fee67621367eb984599300c08ae83fe0ea9fd2043531fea.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c446134845b5873fa5d6f1cbda1ad4a91953108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
