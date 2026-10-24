# aeval_ite_mem_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad822a86290b0bc126556ae4f9086270579aa598",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04c26fd7-3922-c609-b3e8-68c5ebc87f6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d20cddf2-9018-6fd1-6006-ae32ddfeccbd",
  "kind": "lemma",
  "lexical_name": "aeval_ite_mem_eq_self",
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
  "slug": "aeval-ite-mem-eq-self--29ba9fc97fc1c1aeaec2c4c0",
  "source": {
    "blob": "ad822a86290b0bc126556ae4f9086270579aa598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 314,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ba9fc97fc1c1aeaec2c4c0260dd6be4253af9d4efd5bd021ceb055bbf933cb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20cddf2-9018-6fd1-6006-ae32ddfeccbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aeval_ite_mem_eq_self (q : MvPolynomial σ R) {s : Set σ} (hs : q.vars.toSet ⊆ s)
    [∀ i, Decidable (i ∈ s)] :
    MvPolynomial.aeval (fun i ↦ if i ∈ s then .X i else 0) q = q := by
  rw [MvPolynomial.as_sum q, MvPolynomial.aeval_sum]
  refine Finset.sum_congr rfl fun u hu ↦ ?_
  rw [MvPolynomial.aeval_monomial, MvPolynomial.monomial_eq]
  congr 1
  exact Finsupp.prod_congr (fun i hi ↦ by simp [hs ((MvPolynomial.mem_vars _).mpr ⟨u, hu, hi⟩)])

end EvalVars

section Lex

variable [LinearOrder σ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad822a86290b0bc126556ae4f9086270579aa598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
