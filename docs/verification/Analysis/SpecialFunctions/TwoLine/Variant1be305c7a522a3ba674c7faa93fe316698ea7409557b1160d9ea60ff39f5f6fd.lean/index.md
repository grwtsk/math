# Verification target: GRWTSK.Analysis.SpecialFunctions.TwoLine.Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6005991cec012a0a73717175399c62d2a53bded",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6005991cec012a0a73717175399c62d2a53bded`.

Source path: `GRWTSK/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Y` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [logDeriv_Gammaℝ_shift](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/logderiv-gamma-shift--7e3428a9fac181dc5b70cdb7.md) | 38 | `result-track:7e3428a9fac181dc5b70cdb7467f6c29e712df05ebd6cc05530f651ef8cba971` |
| 2 | `lemma` | [re_logDeriv_Gammaℝ_ge](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/re-logderiv-gamma-ge--db8e5838215fa543ff05de26.md) | 69 | `result-track:db8e5838215fa543ff05de265f6bf5803218f0cd22900ba0f9cdbeddc29b8aad` |
| 3 | `theorem` | [re_L2_two_ge](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/re-l2-two-ge--31d8f7c05ddb87a3984af3c4.md) | 91 | `result-track:31d8f7c05ddb87a3984af3c437743f96d1fe67c990534ab9b7cbf7d5ff365019` |
| 4 | `lemma` | [im_ne_zero_of_mem_closedBall](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/im-ne-zero-of-mem-closedball--b51979f83752ad5cfc840ae9.md) | 128 | `result-track:b51979f83752ad5cfc840ae9cc0b6e58dc968d5d609a8da4d6b9bd99327168e9` |
| 5 | `theorem` | [hardyW_analyticOnNhd_disc](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/hardyw-analyticonnhd-disc--dc9b7487513275019cbb63c0.md) | 136 | `result-track:dc9b7487513275019cbb63c0c2196af26334a22026fcc8310e10ef26307e428a` |
| 6 | `lemma` | [two_line_im_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/two-line-im-ne-zero--7f675cb389501d8acd1b7e93.md) | 142 | `result-track:7f675cb389501d8acd1b7e935b04bf05b932638916862dae8f5296bbc57f3519` |
| 7 | `lemma` | [hardyW_eq_zeta_mul](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/hardyw-eq-zeta-mul--5ca9cb4281b4c86522f64ead.md) | 146 | `result-track:5ca9cb4281b4c86522f64ead6794fe061062355afd0a54f26e0797eb1f9ee93f` |
| 8 | `theorem` | [hardyW_two_line_lower](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/hardyw-two-line-lower--592c8357d57885020e186689.md) | 151 | `result-track:592c8357d57885020e1866897791abc87c30c17a8e8dda1e180536087fc0cac1` |
| 9 | `theorem` | [exists_hardyW_ne_zero_upper](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/exists-hardyw-ne-zero-upper--f9dbf994c21c0cb17a48c984.md) | 178 | `result-track:f9dbf994c21c0cb17a48c9844f1c9ee79b6f4298da27df99465354572af9d457` |
| 10 | `theorem` | [exists_hardyW_ne_zero_lower](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/exists-hardyw-ne-zero-lower--e67a204ef35f7c559a80c525.md) | 184 | `result-track:e67a204ef35f7c559a80c5250cb5d7096f9a91893f3d6478a5c6bf6a884e567f` |
| 11 | `lemma` | [norm_logDeriv_Gammaℝ_le_lin](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/norm-logderiv-gamma-le-lin--11e9097d3cdd2f2bb20000ea.md) | 193 | `result-track:11e9097d3cdd2f2bb20000ea86fc8fc8257b269dbb29ad067b0700fbe73a98f0` |
| 12 | `lemma` | [norm_L2_le](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/norm-l2-le--66906f0aba345b532aad2743.md) | 220 | `result-track:66906f0aba345b532aad2743f17e856653345d9266b69d047705eda89b6b84e2` |
| 13 | `theorem` | [hardyW_growth](../../../../../mathematics/Analysis/SpecialFunctions/TwoLine/Variant1be305c7a522a3ba674c7faa93fe316698ea7409557b1160d9ea60ff39f5f6fd.lean/declarations/hardyw-growth--9e1a6913d82edb32861ba855.md) | 267 | `result-track:9e1a6913d82edb32861ba85570b76f2a1a94edf8daa3f730942a2f07132772d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
