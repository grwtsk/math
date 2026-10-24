# adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1c624ae-9c0d-dba8-034d-25dd5c91a823",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db7f1115-b923-ac8e-e9ba-74cacf50f0b5",
  "kind": "theorem",
  "lexical_name": "adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic",
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
  "slug": "adjoin-roots-cyclotomic-eq-adjoin-root-cyclotomic--b578d73d65c76711e6375080",
  "source": {
    "blob": "785a5fef31b7119321077f221c4b335f05f447e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 390,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b578d73d65c76711e6375080cbea32da53483c2198c2cd99c3dcba4bd1c3b12d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7f1115-b923-ac8e-e9ba-74cacf50f0b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic {n : ℕ+} [IsDomain B] {ζ : B}
    (hζ : IsPrimitiveRoot ζ n) : adjoin A ((cyclotomic n A).rootSet B) = adjoin A {ζ} := by
  refine' le_antisymm (adjoin_le fun x hx => _) (adjoin_mono fun x hx => _)
  · suffices hx : x ^ n.1 = 1
    obtain ⟨i, _, rfl⟩ := hζ.eq_pow_of_pow_eq_one hx n.pos
    exact SetLike.mem_coe.2 (Subalgebra.pow_mem _ (subset_adjoin <| mem_singleton ζ) _)
    refine' (isRoot_of_unity_iff n.pos B).2 _
    refine' ⟨n, Nat.mem_divisors_self n n.ne_zero, _⟩
    rw [mem_rootSet', aeval_def, ← eval_map, map_cyclotomic, ← IsRoot] at hx
    exact hx.2
  · simp only [mem_singleton_iff, exists_eq_left, mem_setOf_eq] at hx
    simpa only [hx, mem_rootSet', map_cyclotomic, aeval_def, ← eval_map, IsRoot] using
      And.intro (cyclotomic_ne_zero n B) (hζ.isRoot_cyclotomic n.pos)
#align is_cyclotomic_extension.adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic IsCyclotomicExtension.adjoin_roots_cyclotomic_eq_adjoin_root_cyclotomic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantd7aadbf5a76c4570a7a52555539cc247ec2b61fa8c0f6783af07b69dfeb2106d.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785a5fef31b7119321077f221c4b335f05f447e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
