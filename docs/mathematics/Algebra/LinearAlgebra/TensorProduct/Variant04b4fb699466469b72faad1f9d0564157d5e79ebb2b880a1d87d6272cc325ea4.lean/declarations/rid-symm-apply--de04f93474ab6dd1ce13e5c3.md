# rid_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c7eac63ea1cc085bad1233319cccaadb07beaeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9057ca38-3a83-c238-2e88-e6c73e0789ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e69d3c1b-ffef-f165-5a50-51c3a16f1ce9",
  "kind": "theorem",
  "lexical_name": "rid_symm_apply",
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
  "slug": "rid-symm-apply--de04f93474ab6dd1ce13e5c3",
  "source": {
    "blob": "0c7eac63ea1cc085bad1233319cccaadb07beaeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 254,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de04f93474ab6dd1ce13e5c367aa43199cbed61dc07c66fd4d1d95d876cffbb2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e69d3c1b-ffef-f165-5a50-51c3a16f1ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rid_symm_apply (a : M) : (Coalgebra.TensorProduct.rid R M).symm a = a ⊗ₜ 1 := rfl

end

end TensorProduct
end Coalgebra
namespace CoalgHom

variable {R M N P : Type*} [CommRing R]
  [AddCommGroup M] [AddCommGroup N] [AddCommGroup P] [Module R M] [Module R N]
  [Module R P] [Coalgebra R M] [Coalgebra R N] [Coalgebra R P]

variable (M)

/-- `lTensor M f : M ⊗ N →ₗc M ⊗ P` is the natural coalgebra morphism induced by `f : N →ₗc P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7eac63ea1cc085bad1233319cccaadb07beaeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
