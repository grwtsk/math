# functional_equation_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "786eaf38768954576399ea35b001bff35aa7138e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9677cbf6-5d27-8121-e3cd-0f61d112df72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5cb2ea-f3aa-9848-f165-01ce022a3b81",
  "kind": "theorem",
  "lexical_name": "functional_equation_aux",
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
  "slug": "functional-equation-aux--3e2323b0084eed2d4220815a",
  "source": {
    "blob": "786eaf38768954576399ea35b001bff35aa7138e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e2323b0084eed2d4220815ae1774d26e9693cde56ecc41712e4db62ec7b82b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5cb2ea-f3aa-9848-f165-01ce022a3b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem functional_equation_aux (s : ℂ) :
    mellin P.f (P.k - s) = P.ε • mellin P.g s := by
  -- substitute `t ↦ t⁻¹` in `mellin P.g s`
  have step1 := mellin_comp_rpow P.g (-s) (-1)
  simp_rw [abs_neg, abs_one, inv_one, one_smul, ofReal_neg, ofReal_one, div_neg, div_one, neg_neg,
    rpow_neg_one, ← one_div] at step1
  -- introduce a power of `t` to match the hypothesis `P.h_feq`
  have step2 := mellin_cpow_smul (fun t ↦ P.g (1 / t)) (P.k - s) (-P.k)
  rw [← sub_eq_add_neg, sub_right_comm, sub_self, zero_sub, step1] at step2
  -- put in the constant `P.ε`
  have step3 := mellin_const_smul (fun t ↦ (t : ℂ) ^ (-P.k : ℂ) • P.g (1 / t)) (P.k - s) P.ε
  rw [step2] at step3
  rw [← step3]
  -- now the integrand matches `P.h_feq'` on `Ioi 0`, so we can apply `setIntegral_congr_fun`
  refine setIntegral_congr_fun measurableSet_Ioi (fun t ht ↦ ?_)
  simp_rw [P.h_feq' t ht, ← mul_smul]
  -- some simple `cpow` arithmetic to finish
  rw [cpow_neg, ofReal_cpow (le_of_lt ht)]
  have : (t : ℂ) ^ (P.k : ℂ) ≠ 0 := by simpa [← ofReal_cpow ht.le] using (rpow_pos_of_pos ht _).ne'
  field_simp [P.hε]

end WeakFEPair

namespace IsStrongFEPair

variable {P : WeakFEPair E} (hP : IsStrongFEPair P)
include hP

/-- As `x → ∞`, `f x` decays faster than any power of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantd6d110281a3ec8c43753b69a4ee0130e156fb35a9bd7b80c7255a317f3e92dc4.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `786eaf38768954576399ea35b001bff35aa7138e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
