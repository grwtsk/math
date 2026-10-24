# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebcdea554ef497cc9133691b9cdd875232b6d713",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebcdea554ef497cc9133691b9cdd875232b6d713`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian--b3726ec1c166327cc441c8a9.md) | 66 | `declaration-track:b3726ec1c166327cc441c8a90361414f98abaff49ef0c7a1fd29d9d1c82c4856` |
| 2 | `theorem` | [isNoetherian_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-def--c714b5cf80c867cc21efe719.md) | 80 | `result-track:c714b5cf80c867cc21efe7198a1983fd93c0ae3923c0bf076470c6aba185de23` |
| 3 | `theorem` | [isNoetherian_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-submodule--65be9529b6586a33613ff2ca.md) | 83 | `result-track:65be9529b6586a33613ff2ca1783a27b1e4b89d6c1fd7d682bcf9e443686f986` |
| 4 | `theorem` | [isNoetherian_submodule_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-submodule-left--04d3198e258a1ca8e3c83c4e.md) | 95 | `result-track:04d3198e258a1ca8e3c83c4e4e112cbdb23b7f54a92cf8175ed197d34cd3dba5` |
| 5 | `theorem` | [isNoetherian_submodule_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-submodule-right--01d5a1af8341d350fa4350f3.md) | 99 | `result-track:01d5a1af8341d350fa4350f3f5c170eee510b75e1192d12b9cfbdb154bb85fbb` |
| 6 | `instance` | [isNoetherian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-submodule--996b6731a072bc23a68dff42.md) | 103 | `declaration-track:996b6731a072bc23a68dff42034f2f906fcdeae7eb0974964a80a82e3b7f8bd8` |
| 7 | `theorem` | [isNoetherian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-of-le--3f067da2e42351a055c2c8ca.md) | 106 | `result-track:3f067da2e42351a055c2c8cab1ffae7ca75d5310f5cb5269e381c45cb7054942` |
| 8 | `theorem` | [isNoetherian_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-iff--51d5be58d9b6ded1cc9ee560.md) | 121 | `result-track:51d5be58d9b6ded1cc9ee5600d5812700e2b752259a163b5014e83cdcfe06892` |
| 9 | `theorem` | [isNoetherian_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-iff--79cd944b642c6585f09a1e19.md) | 129 | `result-track:79cd944b642c6585f09a1e1918174d8b39a3673d2bcecac4bad839c8439b86fc` |
| 10 | `instance` | [wellFoundedGT](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/wellfoundedgt--daf9ecf14227cc21023befa7.md) | 137 | `declaration-track:daf9ecf14227cc21023befa7a62c084f8df241be10144cb540398fabd806d2c5` |
| 11 | `theorem` | [isNoetherian_iff_fg_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherian-iff-fg-wellfounded--eed64562b3e15263151c0210.md) | 140 | `result-track:eed64562b3e15263151c02101338262980788ff2629f351d81d655bd296ae30c` |
| 12 | `theorem` | [set_has_maximal_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/set-has-maximal-iff-noetherian--376c588eb3c016e73e7e93b9.md) | 164 | `result-track:376c588eb3c016e73e7e93b9763f36c143a5d680bf477f67580c14e2049851a1` |
| 13 | `theorem` | [monotone_stabilizes_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/monotone-stabilizes-iff-noetherian--5b2b480d813e5ce3a0ddd9c7.md) | 169 | `result-track:5b2b480d813e5ce3a0ddd9c719da4954abfc55dfdfd386dbb40f22e229d3b045` |
| 14 | `theorem` | [Module.End.eventually_disjoint_ker_pow_range_pow](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/module-end-eventually-disjoint-ker-pow-range-pow--12205725e7d1a70d70547d79.md) | 178 | `result-track:12205725e7d1a70d70547d79e53cb52c99252bf022f1acb33f9640db9590d9f8` |
| 15 | `lemma` | [LinearMap.eventually_iSup_ker_pow_eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/linearmap-eventually-isup-ker-pow-eq--a62de2238c8a6b722f43c506.md) | 190 | `result-track:a62de2238c8a6b722f43c506ef168901cda54f2f7cda51ebc2de7e7be92766d8` |
| 16 | `abbrev` | [IsNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherianring--d62ddd7e47ac71f7f92e1c80.md) | 204 | `declaration-track:d62ddd7e47ac71f7f92e1c80b6c96783ca612b55657485e71033b3ad2fab3fd3` |
| 17 | `theorem` | [isNoetherianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherianring-iff--cbd57e5f4dae43b60a6c44fb.md) | 207 | `result-track:cbd57e5f4dae43b60a6c44fbee29a47378ee27c7b9ca310bc38094ff50a59a15` |
| 18 | `theorem` | [isNoetherianRing_iff_ideal_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant3ec7fdc019b4e311d0af1380f36a4007dd400f84af581b1b0578311475cfa7cf.lean/declarations/isnoetherianring-iff-ideal-fg--fcfc27f9afa8c1dde7aa2b12.md) | 211 | `result-track:fcfc27f9afa8c1dde7aa2b123f9e58e15d04fd2dbe8b3c58f9694ce6ede4438d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
