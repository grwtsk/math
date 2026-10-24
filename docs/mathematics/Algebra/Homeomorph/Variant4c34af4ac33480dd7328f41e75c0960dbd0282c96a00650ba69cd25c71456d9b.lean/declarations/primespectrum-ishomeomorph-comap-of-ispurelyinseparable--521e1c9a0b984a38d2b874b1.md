# PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7cd15c759d891c9cb71a71037426618ae6cc2bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e78a76f2-1a6d-b004-7159-3b43d4b5acf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:788db5ee-4db7-2f62-b15b-1457ea76c31c",
  "kind": "lemma",
  "lexical_name": "PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable",
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
  "slug": "primespectrum-ishomeomorph-comap-of-ispurelyinseparable--521e1c9a0b984a38d2b874b1",
  "source": {
    "blob": "d7cd15c759d891c9cb71a71037426618ae6cc2bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:521e1c9a0b984a38d2b874b101ddffdd4de1b5d95e3d6007c4a0e3bfd9ab6fe4",
  "verification": {
    "reference": "docs/verification/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:788db5ee-4db7-2f62-b15b-1457ea76c31c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrimeSpectrum.isHomeomorph_comap_of_isPurelyInseparable [IsPurelyInseparable k K] :
    IsHomeomorph (comap <| algebraMap R (R ⊗[k] K)) := by
  let q := ringExpChar k
  refine isHomeomorph_comap _ (IsPurelyInseparable.exists_pow_mem_range_tensorProduct) ?_
  convert bot_le
  rw [← RingHom.injective_iff_ker_eq_bot]
  exact Algebra.TensorProduct.includeLeft_injective (S := R) (algebraMap k K).injective

/-- If `L` is a purely inseparable extension of `K` over `R` and `S` is an `R`-algebra,
the induced map `Spec (L ⊗[R] S) ⟶ Spec (K ⊗[R] S)` is a homeomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Homeomorph/Variant4c34af4ac33480dd7328f41e75c0960dbd0282c96a00650ba69cd25c71456d9b.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7cd15c759d891c9cb71a71037426618ae6cc2bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
