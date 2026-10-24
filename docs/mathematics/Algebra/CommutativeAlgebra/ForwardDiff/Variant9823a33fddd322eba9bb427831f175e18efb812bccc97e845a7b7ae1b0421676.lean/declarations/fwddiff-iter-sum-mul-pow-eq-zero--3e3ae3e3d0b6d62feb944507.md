# fwdDiff_iter_sum_mul_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72b559d6c958ee410c1c5d9df942becee5f3db4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd551d52-6f30-1f5b-b371-e78228951969",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49d694bb-797c-8cce-cc34-7c5c9ce846f6",
  "kind": "theorem",
  "lexical_name": "fwdDiff_iter_sum_mul_pow_eq_zero",
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
  "slug": "fwddiff-iter-sum-mul-pow-eq-zero--3e3ae3e3d0b6d62feb944507",
  "source": {
    "blob": "72b559d6c958ee410c1c5d9df942becee5f3db4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 294,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e3ae3e3d0b6d62feb9445079b5670078e6d259001bfc3871d86bac51e9a18ee",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49d694bb-797c-8cce-cc34-7c5c9ce846f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fwdDiff_iter_sum_mul_pow_eq_zero {n : ℕ} (P : ℕ → R) :
    Δ_[1]^[n] (fun r : R ↦ ∑ k ∈ range n, P k * r ^ k) = 0 := by
  simp_rw [← sum_apply _ _ (fun i x ↦ P i * x ^ i), fwdDiff_iter_finsetSum, sum_fn, ← smul_eq_mul,
    ← Pi.smul_def, fwdDiff_iter_const_smul, ← sum_fn]
  exact sum_eq_zero fun i hi ↦ smul_eq_zero_of_right _ <| fwdDiff_iter_pow_eq_zero_of_lt
    <| mem_range.mp hi

/--
A summation formula expressing `∑ k < n, f (y + k • h)` in terms of iterated forward differences.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Variant9823a33fddd322eba9bb427831f175e18efb812bccc97e845a7b7ae1b0421676.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72b559d6c958ee410c1c5d9df942becee5f3db4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
