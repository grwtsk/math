# _root_.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f853660d247b96b7f961ca389dffed335cd006d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2679672-33ce-8904-2d72-2b66fc666bbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02cee2f6-7f8f-a3f0-1bce-32954e536391",
  "kind": "theorem",
  "lexical_name": "_root_.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul",
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
  "slug": "root-isprimitiveroot-pow-sub-pow-eq-prod-sub-mul--c24dad8727a4b177f9328c6a",
  "source": {
    "blob": "5f853660d247b96b7f961ca389dffed335cd006d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 629,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c24dad8727a4b177f9328c6ae3f8a5d74521a8653b9b930e3c85ba2b82ec3e84",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02cee2f6-7f8f-a3f0-1bce-32954e536391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul (hpos : 0 < n)
    (h : IsPrimitiveRoot ζ n) : x ^ n - y ^ n = ∏ ζ ∈ nthRootsFinset n (1 : R), (x - ζ * y) := by
  let K := FractionRing R
  apply FaithfulSMul.algebraMap_injective R K
  rw [map_sub, map_pow, map_pow, map_prod]
  simp_rw [map_sub, map_mul]
  have h' : IsPrimitiveRoot (algebraMap R K ζ) n :=
    h.map_of_injective <| FaithfulSMul.algebraMap_injective R K
  rw [h'.pow_sub_pow_eq_prod_sub_mul_field _ _ hpos]
  refine (prod_nbij (algebraMap R K) (fun a ha ↦ map_mem_nthRootsFinset_one ha _)
    (fun a _ b _ H ↦ FaithfulSMul.algebraMap_injective R K H) (fun a ha ↦ ?_) (fun _ _ ↦ rfl)).symm
  have := Set.surj_on_of_inj_on_of_ncard_le (s := nthRootsFinset n (1 : R))
    (t := nthRootsFinset n (1 : K)) _ (fun _ hr ↦ map_mem_nthRootsFinset_one hr _)
    (fun a _ b _ H ↦ FaithfulSMul.algebraMap_injective R K H)
    (by simp [h.card_nthRootsFinset, h'.card_nthRootsFinset])
  obtain ⟨x, hx, hx1⟩ := this _ ha
  exact ⟨x, hx, hx1.symm⟩

/-- If there is a primitive `n`th root of unity in `R` and `n` is odd, then
`X ^ n + Y ^ n = ∏ (X + μ Y)`, where `μ` varies over the `n`-th roots of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f853660d247b96b7f961ca389dffed335cd006d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
