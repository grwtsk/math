# leadingCoeff_pow_natDegree_smul_sum_map_aroots_aeval_mem_range_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddd608d8-607c-75f1-e6a0-ca1e23220bfa",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_pow_natDegree_smul_sum_map_aroots_aeval_mem_range_algebraMap",
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
  "slug": "leadingcoeff-pow-natdegree-smul-sum-map-aroots-aeval-mem-range-algebrama--d7ec03be1b86959a506ca02b",
  "source": {
    "blob": "0ccefaecdc270bed77155f8e431d01a42a1c47bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 160,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ec03be1b86959a506ca02b17a6dc869854d554dd8f77dc1dc22b2b7cfb5e63",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddd608d8-607c-75f1-e6a0-ca1e23220bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_pow_natDegree_smul_sum_map_aroots_aeval_mem_range_algebraMap
    (hsplit : (p.map (algebraMap R A)).Splits) :
    p.leadingCoeff ^ q.natDegree • ((p.aroots A).map (q.aeval ·)).sum ∈
      Set.range (algebraMap R A) := by
  have : (fun x : A ↦ p.leadingCoeff ^ q.natDegree • q.aeval x) =
      ((q.scaleRoots p.leadingCoeff).aeval ·) ∘ (p.leadingCoeff • ·) :=
    _root_.funext fun x ↦ (scaleRoots_aeval_smul _ _).symm
  rw [Multiset.smul_sum, Multiset.map_map, Function.comp_def, this,
    ← Multiset.map_map _ fun x => p.leadingCoeff • x]
  rw [← aevalMultiset_sumPolynomial (σ := Fin (p.aroots A).card) (by simp)]
  exact aevalMultiset_map_aroots_mem_range_algebraMap hsplit

/-- Given `k` a multiple of `p.leadingCoeff` and `e ≥ q.natDegree`,
`k ^ e • ∑ i ∈ p.aroots A, q.aeval i` lies in the base ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant749e0c147ea9affc909067141f59e0f27b37d82d5bb6e2555e10318769ca2509.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ccefaecdc270bed77155f8e431d01a42a1c47bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
