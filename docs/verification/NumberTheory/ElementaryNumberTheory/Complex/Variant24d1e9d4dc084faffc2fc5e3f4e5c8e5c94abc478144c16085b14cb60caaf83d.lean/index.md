# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Complex.Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9bba15ea9392f1efdf883c22bde5a2376fade3c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9bba15ea9392f1efdf883c22bde5a2376fade3c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isPrimitiveRoot_exp_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-exp-of-coprime--7e7d3877c6024f21c9a35bd7.md) | 39 | `result-track:7e7d3877c6024f21c9a35bd7fe4a9cedf6e1d6b27d78c258c6f81511bd7ebef4` |
| 2 | `theorem` | [isPrimitiveRoot_exp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-exp--95000205caccbc28b188863a.md) | 58 | `result-track:95000205caccbc28b188863a1f0d382dc8a1f06c36b466e11d4e61e3b4014e5c` |
| 3 | `theorem` | [isPrimitiveRoot_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-iff--c8453217119a0e505ae04834.md) | 62 | `result-track:c8453217119a0e505ae04834ff2fdff9a0f8020fcf3436d1e2569512a425773f` |
| 4 | `theorem` | [mem_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/mem-rootsofunity--5514f894a74be401cfc9a374.md) | 78 | `result-track:5514f894a74be401cfc9a37483338a0f2019af7e7c4c0399869f53eccca9ae0a` |
| 5 | `theorem` | [card_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/card-rootsofunity--e33aa3424296820b762c395f.md) | 95 | `result-track:e33aa3424296820b762c395f57534d1a16a881b8d9ca48716f8a8b1b5df6f534` |
| 6 | `theorem` | [card_primitiveRoots](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/card-primitiveroots--84da9cec82f82d3a6d9484a6.md) | 98 | `result-track:84da9cec82f82d3a6d9484a68480d2aa24dd74d51b3d216c66c2432a314f8655` |
| 7 | `theorem` | [IsPrimitiveRoot.norm'_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-norm-eq-one--ba95119fa6fbca89e9cf8f57.md) | 105 | `result-track:ba95119fa6fbca89e9cf8f57bda8efcdcf8ecb9d1e482bde59dbbe5231751cef` |
| 8 | `theorem` | [IsPrimitiveRoot.nnnorm_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-nnnorm-eq-one--bb45e9f176bc5c10a733195b.md) | 109 | `result-track:bb45e9f176bc5c10a733195b0da4e20c1b44172257285043971ad6d49697dfcb` |
| 9 | `theorem` | [IsPrimitiveRoot.arg_ext](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-arg-ext--0c6668017746486c277a1eeb.md) | 113 | `result-track:0c6668017746486c277a1eebff3de3b08096be9048e562ece324beeef8970628` |
| 10 | `theorem` | [IsPrimitiveRoot.arg_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-arg-eq-zero-iff--3935f321894a47a00954c0d9.md) | 117 | `result-track:3935f321894a47a00954c0d982dfcbd6a43da6c14deb8e208de187c8b7f2a49f` |
| 11 | `theorem` | [IsPrimitiveRoot.arg_eq_pi_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-arg-eq-pi-iff--e0dde90db57402da4c46a503.md) | 122 | `result-track:e0dde90db57402da4c46a503587be24e13f197c64c51c8f2890c462004801558` |
| 12 | `theorem` | [IsPrimitiveRoot.arg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/isprimitiveroot-arg--1e1e916100e6b89b96f3cbfb.md) | 129 | `result-track:1e1e916100e6b89b96f3cbfb7c7cb16acdf5ae74df2f6325618562bfed746cc0` |
| 13 | `lemma` | [Complex.norm_eq_one_of_mem_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/complex-norm-eq-one-of-mem-rootsofunity--c855ce03852b83e910098170.md) | 174 | `result-track:c855ce03852b83e9100981701325dd0f3b85f456a535c5e5fd06041f039fde34` |
| 14 | `theorem` | [Complex.conj_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant24d1e9d4dc084faffc2fc5e3f4e5c8e5c94abc478144c16085b14cb60caaf83d.lean/declarations/complex-conj-rootsofunity--547ea367aa1160679e1fff8e.md) | 182 | `result-track:547ea367aa1160679e1fff8eae85b61565cc320f1e5edd9a21036280f49f4af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
