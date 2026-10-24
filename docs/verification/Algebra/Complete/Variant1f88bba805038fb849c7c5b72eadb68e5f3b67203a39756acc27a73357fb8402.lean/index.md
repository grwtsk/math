# Verification target: GRWTSK.Algebra.Complete.Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d9e6319aa11826ea01a7333de0ea287b130d76a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/index.md) · [Full source](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d9e6319aa11826ea01a7333de0ea287b130d76a`.

Source path: `GRWTSK/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Domain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Truncated` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_coeff_eq_iff_le_sub_coeff_eq_zero](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/declarations/le-coeff-eq-iff-le-sub-coeff-eq-zero--342a8992906463ff78b0a655.md) | 33 | `result-track:342a8992906463ff78b0a6555b851d43a37fc1835b3315518c179ae473710ffb` |
| 2 | `theorem` | [eq_zero_of_p_mul_eq_zero](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/declarations/eq-zero-of-p-mul-eq-zero--a7e3f9a086d100dd35f07071.md) | 53 | `result-track:a7e3f9a086d100dd35f07071341b418bf1bfc61d6966f59625f72b01511edfa0` |
| 3 | `theorem` | [mem_span_p_iff_coeff_zero_eq_zero](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/declarations/mem-span-p-iff-coeff-zero-eq-zero--a6790e5960bfd6ec4ac56aab.md) | 61 | `result-track:a6790e5960bfd6ec4ac56aab8b1dfe447e4057bea898738131220ed82e00a9d3` |
| 4 | `theorem` | [mem_span_p_pow_iff_le_coeff_eq_zero](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/declarations/mem-span-p-pow-iff-le-coeff-eq-zero--dc8d27c161bf651348eae3a6.md) | 78 | `result-track:dc8d27c161bf651348eae3a6379167737909e51f77acf2f5b4267807546de740` |
| 5 | `instance` | [isAdicCompleteIdealSpanP](../../../../mathematics/Algebra/Complete/Variant1f88bba805038fb849c7c5b72eadb68e5f3b67203a39756acc27a73357fb8402.lean/declarations/isadiccompleteidealspanp--da50c97d03a710bac97454d0.md) | 100 | `declaration-track:da50c97d03a710bac97454d041eb8814dbfef4d5e0b68fa7452750bdfd5f4eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
