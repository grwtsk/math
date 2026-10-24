# constr_pow_aeval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "792664d0f59d8544f1883d1f229731146b3af670",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06633558-0e13-f715-162a-cb51a50f3a29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2ee2851-8c59-422d-6b42-67bd50fce7f5",
  "kind": "theorem",
  "lexical_name": "constr_pow_aeval",
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
  "slug": "constr-pow-aeval--ce1ca7522f6228b4088c2bbb",
  "source": {
    "blob": "792664d0f59d8544f1883d1f229731146b3af670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 240,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1ca7522f6228b4088c2bbb690ceebf063c4cbb4bec13a297f5c40d41675ca5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2ee2851-8c59-422d-6b42-67bd50fce7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem constr_pow_aeval (pb : PowerBasis A S) {y : S'} (hy : aeval y (minpoly A pb.gen) = 0)
    (f : A[X]) : pb.basis.constr A (fun i => y ^ (i : ℕ)) (aeval pb.gen f) = aeval y f := by
  cases subsingleton_or_nontrivial A
  · rw [(Subsingleton.elim _ _ : f = 0), aeval_zero, map_zero, aeval_zero]
  rw [← aeval_modByMonic_eq_self_of_root (minpoly.monic pb.isIntegral_gen) (minpoly.aeval _ _), ←
    @aeval_modByMonic_eq_self_of_root _ _ _ _ _ f _ (minpoly.monic pb.isIntegral_gen) y hy]
  by_cases hf : f %ₘ minpoly A pb.gen = 0
  · simp only [hf, map_zero]
  have : (f %ₘ minpoly A pb.gen).natDegree < pb.dim := by
    rw [← pb.natDegree_minpoly]
    apply natDegree_lt_natDegree hf
    exact degree_modByMonic_lt _ (minpoly.monic pb.isIntegral_gen)
  rw [aeval_eq_sum_range' this, aeval_eq_sum_range' this, map_sum]
  refine Finset.sum_congr rfl fun i (hi : i ∈ Finset.range pb.dim) => ?_
  rw [Finset.mem_range] at hi
  rw [LinearMap.map_smul]
  congr
  rw [← Fin.val_mk hi, ← pb.basis_eq_pow ⟨i, hi⟩, Basis.constr_basis]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `792664d0f59d8544f1883d1f229731146b3af670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
