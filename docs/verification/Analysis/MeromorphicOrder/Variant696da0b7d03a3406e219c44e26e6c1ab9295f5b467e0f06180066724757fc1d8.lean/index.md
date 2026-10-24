# Verification target: GRWTSK.Analysis.MeromorphicOrder.Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0baf2728e5113bccfaf0dd54321b9939eb05563",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/index.md) · [Full source](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0baf2728e5113bccfaf0dd54321b9939eb05563`.

Source path: `GRWTSK/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectangleDivisor](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/declarations/rectangledivisor--5fe316bb88c20ef3ee335909.md) | 34 | `declaration-track:5fe316bb88c20ef3ee335909d3390bb087322ab651121c641c1855655693ed61` |
| 2 | `theorem` | [rectangleDivisor_apply](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/declarations/rectangledivisor-apply--626b214914fb8470eb304d61.md) | 40 | `result-track:626b214914fb8470eb304d613a5100648f7a123348114454c0221b599cd198a1` |
| 3 | `theorem` | [rectangleDivisor_support_finite](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/declarations/rectangledivisor-support-finite--00e3f547cca75c34d8effa62.md) | 50 | `result-track:00e3f547cca75c34d8effa623146e894b82d3af42b096eec5a1d1197d7d2430e` |
| 4 | `def` | [rectangleDivisorSupportFinset](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/declarations/rectangledivisorsupportfinset--0eb6270c6dd00ef7e757f589.md) | 59 | `declaration-track:0eb6270c6dd00ef7e757f589e9462a69fae5f2da61a7466aab9acb44de143674` |
| 5 | `theorem` | [mem_rectangleDivisorSupportFinset](../../../../mathematics/Analysis/MeromorphicOrder/Variant696da0b7d03a3406e219c44e26e6c1ab9295f5b467e0f06180066724757fc1d8.lean/declarations/mem-rectangledivisorsupportfinset--e0252c90fbac4a29dcf3cf85.md) | 65 | `result-track:e0252c90fbac4a29dcf3cf8537bcdbc83500f512ea3f453c9e31a12c88bcfc69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
