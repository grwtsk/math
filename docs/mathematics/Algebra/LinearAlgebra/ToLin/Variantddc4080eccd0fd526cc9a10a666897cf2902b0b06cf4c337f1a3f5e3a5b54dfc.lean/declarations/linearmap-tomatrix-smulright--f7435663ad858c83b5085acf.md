# LinearMap.toMatrix_smulRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8018ed3e-e093-311d-02b2-9877f705c5a5",
  "kind": "lemma",
  "lexical_name": "LinearMap.toMatrix_smulRight",
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
  "slug": "linearmap-tomatrix-smulright--f7435663ad858c83b5085acf",
  "source": {
    "blob": "909c5ecabc3fe926ea1529c2918cab4ae1347a19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 732,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7435663ad858c83b5085acf15c282201e0091d06a30864d79ef872ebb4e6110",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8018ed3e-e093-311d-02b2-9877f705c5a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 732–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.toMatrix_smulRight [Finite m] (f : M₁ →ₗ[R] R) (x : M₂) :
    toMatrix v₁ v₂ (f.smulRight x) = vecMulVec (v₂.repr x) (f ∘ v₁) := by
  ext i j
  simpa [toMatrix_apply, vecMulVec_apply] using mul_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToLin/Variantddc4080eccd0fd526cc9a10a666897cf2902b0b06cf4c337f1a3f5e3a5b54dfc.lean#L732).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `909c5ecabc3fe926ea1529c2918cab4ae1347a19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
