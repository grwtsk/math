# indicator_mem_restrictDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64e237ee9a93151674599aa63c4ec360c8c8cc86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4312c29a-f0ac-45df-a4ed-d4b4ed12bda8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1c6bdb4-d263-956c-57a5-5731a777e8bd",
  "kind": "theorem",
  "lexical_name": "indicator_mem_restrictDegree",
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
  "slug": "indicator-mem-restrictdegree--8cdb889c1fbfcc8fe3633bee",
  "source": {
    "blob": "64e237ee9a93151674599aa63c4ec360c8c8cc86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cdb889c1fbfcc8fe3633bee7bd578e36fa89f418da271f0e1961350d5965ae5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1c6bdb4-d263-956c-57a5-5731a777e8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicator_mem_restrictDegree (c : σ → K) :
    indicator c ∈ restrictDegree σ K (Fintype.card K - 1) := by
  rw [mem_restrictDegree_iff_sup, indicator]
  intro n
  refine' le_trans (Multiset.count_le_of_le _ <| degrees_indicator _) (le_of_eq _)
  simp_rw [← Multiset.coe_countAddMonoidHom, (Multiset.countAddMonoidHom n).map_sum,
    AddMonoidHom.map_nsmul, Multiset.coe_countAddMonoidHom, nsmul_eq_mul, Nat.cast_id]
  trans
  refine' Finset.sum_eq_single n _ _
  · intro b _ ne
    simp [Multiset.count_singleton, ne, if_neg (Ne.symm _)]
  · intro h; exact (h <| Finset.mem_univ _).elim
  · rw [Multiset.count_singleton_self, mul_one]
#align mv_polynomial.indicator_mem_restrict_degree MvPolynomial.indicator_mem_restrictDegree

end CommRing

variable [Field K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant291919e2719a78f1676a7a4eab3a76062171fd11f99ee3bd4fb5a3eeeead7a6f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e237ee9a93151674599aa63c4ec360c8c8cc86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
