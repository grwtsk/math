# natDegree_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "904087810bcaa3251975675dc8e0eda144f19aa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9da54321-8662-7116-a695-590b1e724dec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96ca624b-1cdd-1a50-8277-01c36ded9793",
  "kind": "theorem",
  "lexical_name": "natDegree_expand",
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
  "slug": "natdegree-expand--6e660f886b1c40e82ed94fe9",
  "source": {
    "blob": "904087810bcaa3251975675dc8e0eda144f19aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 151,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e660f886b1c40e82ed94fe9ecfb348db5893e643e2ed6db5abf811554ff7bb2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ca624b-1cdd-1a50-8277-01c36ded9793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_expand (p : ℕ) (f : R[X]) : (expand R p f).natDegree = f.natDegree * p := by
  cases' p.eq_zero_or_pos with hp hp
  · rw [hp, coe_expand, pow_zero, mul_zero, ← C_1, eval₂_hom, natDegree_C]
  by_cases hf : f = 0
  · rw [hf, AlgHom.map_zero, natDegree_zero, zero_mul]
  have hf1 : expand R p f ≠ 0 := mt (expand_eq_zero hp).1 hf
  rw [← WithBot.coe_eq_coe]
  convert (degree_eq_natDegree hf1).symm -- Porting note: was `rw [degree_eq_natDegree hf1]`
  symm
  refine' le_antisymm ((degree_le_iff_coeff_zero _ _).2 fun n hn => _) _
  · rw [coeff_expand hp]
    split_ifs with hpn
    · rw [coeff_eq_zero_of_natDegree_lt]
      contrapose! hn
      erw [WithBot.coe_le_coe, ← Nat.div_mul_cancel hpn]
      exact Nat.mul_le_mul_right p hn
    · rfl
  · refine' le_degree_of_ne_zero _
    erw [coeff_expand_mul hp, ← leadingCoeff]
    exact mt leadingCoeff_eq_zero.1 hf
#align polynomial.nat_degree_expand Polynomial.natDegree_expand

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variantcce548a225abb3535d015c1eda68a4927e807416e7a044d7658aace242358862.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904087810bcaa3251975675dc8e0eda144f19aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
