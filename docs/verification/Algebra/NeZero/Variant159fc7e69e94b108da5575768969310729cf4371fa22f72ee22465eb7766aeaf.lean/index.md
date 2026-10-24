# Verification target: GRWTSK.Algebra.NeZero.Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36f183599056801be9dc14e02ae2002c321b12ff",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/index.md) · [Full source](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36f183599056801be9dc14e02ae2002c321b12ff`.

Source path: `GRWTSK/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_neZero](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/not-nezero--19b05db55e1044aa9b133430.md) | 18 | `result-track:19b05db55e1044aa9b13343099c89e8a42a1a67bab157ba0d5ef1cbd79a8eda8` |
| 2 | `theorem` | [eq_zero_or_neZero](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/eq-zero-or-nezero--3c0a3d3cbc45c4fa350bcdba.md) | 20 | `result-track:3c0a3d3cbc45c4fa350bcdbac8d35dc805bcb8c422ab048912e15c8d27eccc7f` |
| 3 | `lemma` | [zero_ne_one](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/zero-ne-one--cb3e56822bce249486f3010f.md) | 26 | `result-track:cb3e56822bce249486f3010f6b59f3f18a416c3baeb55c6cc7fff6245ee9e86f` |
| 4 | `lemma` | [one_ne_zero](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/one-ne-zero--1bb025141bb38b030ae73ce1.md) | 28 | `result-track:1bb025141bb38b030ae73ce1b1da0557b0ec22606c15f7a92b4f5e2a35600e43` |
| 5 | `lemma` | [ne_zero_of_eq_one](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/ne-zero-of-eq-one--6506b08c1ed3a54bc257b108.md) | 30 | `result-track:6506b08c1ed3a54bc257b1083c62bbd0322350e8ad4355c2c69b507f72718645` |
| 6 | `lemma` | [two_ne_zero](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/two-ne-zero--15cce393adfce88c43d08c4b.md) | 33 | `result-track:15cce393adfce88c43d08c4b38bf561dfadb2dd6b855ec672f182f5e0756d3e1` |
| 7 | `lemma` | [three_ne_zero](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/three-ne-zero--0f0869db9b4c5518e28e7224.md) | 36 | `result-track:0f0869db9b4c5518e28e7224f9d98a7c94da9811efdcd9f8f664ca276a295588` |
| 8 | `lemma` | [four_ne_zero](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/four-ne-zero--b245a5a52351fc39f28ba8c5.md) | 39 | `result-track:b245a5a52351fc39f28ba8c597103b358c534094cad60613828a15873443d0f8` |
| 9 | `lemma` | [zero_ne_one'](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/zero-ne-one--82aae3effbdd9385602962d2.md) | 43 | `result-track:82aae3effbdd9385602962d2c07220cbd63ef8b7ec89ec902a1ff76c2d2e399d` |
| 10 | `lemma` | [one_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/one-ne-zero--73a78a160cf9578f774c2aab.md) | 45 | `result-track:73a78a160cf9578f774c2aabd08b629b41df96f569a2184f85b451a881cee49e` |
| 11 | `lemma` | [two_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/two-ne-zero--23a8fdc35ba8b708d18fdef1.md) | 47 | `result-track:23a8fdc35ba8b708d18fdef10d1d1f37232177a3cc2ae90524b563b328f5ef1a` |
| 12 | `lemma` | [three_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/three-ne-zero--5da5356fcbaf0a2f7e460526.md) | 49 | `result-track:5da5356fcbaf0a2f7e460526649cad635a75f25238d755b30fec07ac3c31b95a` |
| 13 | `lemma` | [four_ne_zero'](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/four-ne-zero--971d73d24f76e530e6712b3b.md) | 51 | `result-track:971d73d24f76e530e6712b3b944e8a35b51aa652476a299598bfe0337240a3a4` |
| 14 | `theorem` | [of_pos](../../../../mathematics/Algebra/NeZero/Variant159fc7e69e94b108da5575768969310729cf4371fa22f72ee22465eb7766aeaf.lean/declarations/of-pos--f894087eb68f47f526bfd26b.md) | 59 | `result-track:f894087eb68f47f526bfd26b024f6bf15581d42e3969d9312f40f1d0e96ecbf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
