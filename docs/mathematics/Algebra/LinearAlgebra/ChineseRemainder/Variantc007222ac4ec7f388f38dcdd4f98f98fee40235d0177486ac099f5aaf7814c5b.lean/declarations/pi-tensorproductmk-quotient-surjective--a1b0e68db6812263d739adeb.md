# pi_tensorProductMk_quotient_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8e01d6e3527638169941e3330a4e2d94195910e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51dbdb34-ff06-8442-fe6b-584d2aa57712",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84beb156-467c-11b5-ae3d-476d0898a566",
  "kind": "theorem",
  "lexical_name": "pi_tensorProductMk_quotient_surjective",
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
  "slug": "pi-tensorproductmk-quotient-surjective--a1b0e68db6812263d739adeb",
  "source": {
    "blob": "e8e01d6e3527638169941e3330a4e2d94195910e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/ChineseRemainder/Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b0e68db6812263d739adeba9c41fc70eaf09e5c3c8e1522096b44dfefbc986",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ChineseRemainder/Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84beb156-467c-11b5-ae3d-476d0898a566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_tensorProductMk_quotient_surjective :
    Surjective (LinearMap.pi fun i ↦ TensorProduct.mk R (R ⧸ I i) M 1) := by
  have := rTensor_surjective M (pi_mkQ_surjective hI)
  classical rw [pi_mkQ_rTensor] at this
  simpa using this

/-- A form of Chinese remainder theorem for modules, part II: if ideals `Iᵢ` of `R` are pairwise
coprime, then for any `R`-module `M`, the kernel of `M → Πᵢ (R ⧸ Iᵢ) ⊗[R] M` equals `(⋂ᵢ Iᵢ) • M`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ChineseRemainder/Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ChineseRemainder/Variantc007222ac4ec7f388f38dcdd4f98f98fee40235d0177486ac099f5aaf7814c5b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8e01d6e3527638169941e3330a4e2d94195910e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
