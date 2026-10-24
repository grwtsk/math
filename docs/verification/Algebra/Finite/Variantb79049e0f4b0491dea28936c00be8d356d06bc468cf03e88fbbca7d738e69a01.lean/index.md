# Verification target: GRWTSK.Algebra.Finite.Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5170835842e16cc348096105a300009dd044fee",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5170835842e16cc348096105a300009dd044fee`.

Source path: `GRWTSK/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normBound](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/normbound--733088f709b0bc82e2c32ed1.md) | 56 | `declaration-track:733088f709b0bc82e2c32ed13a4eee895f9d411ceec856fcd001a23976391b02` |
| 2 | `theorem` | [normBound_pos](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/normbound-pos--9340205fe73aec6489384f61.md) | 66 | `result-track:9340205fe73aec6489384f618e7638071f8d64bacb918fb953f04fd8f2291fe6` |
| 3 | `theorem` | [norm_le](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/norm-le--ccb3159691a1f7671b3944ab.md) | 83 | `result-track:ccb3159691a1f7671b3944ab07859303676b00d5c526fdb3c66b675a23664d32` |
| 4 | `theorem` | [norm_lt](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/norm-lt--8ffedbc01e209a04a36fc07c.md) | 97 | `result-track:8ffedbc01e209a04a36fc07c28123dee4af52a40ee1a04ccd47c3247383013ce` |
| 5 | `theorem` | [exists_min](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/exists-min--ae2ffda5f5c4f7d4aaff2797.md) | 125 | `result-track:ae2ffda5f5c4f7d4aaff2797a96c90be4263ad2eecc66bc01f31990a3820deae` |
| 6 | `def` | [cardM](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/cardm--fcaae0d49e620aee5e9ae06b.md) | 155 | `declaration-track:fcaae0d49e620aee5e9ae06bc7528dbd0c4e28ca4f04240256e42b535a4cca46` |
| 7 | `def` | [distinctElems](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/distinctelems--f3a66ffff1b6f31a0d7fdfff.md) | 161 | `declaration-track:f3a66ffff1b6f31a0d7fdfff32cce572811986d31ccbfeed1d07fe6e5e2eac24` |
| 8 | `def` | [finsetApprox](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/finsetapprox--54b2f92674d3bd838bad5d40.md) | 168 | `declaration-track:54b2f92674d3bd838bad5d4052693aa59a71dfc5598522730fb42b3c3523533b` |
| 9 | `theorem` | [finsetApprox.zero_notMem](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/finsetapprox-zero-notmem--c43539cc01053702d5c0a878.md) | 172 | `result-track:c43539cc01053702d5c0a8785c9fa543dbb2cf4ef9c3db9ef3a4f816e75ccde4` |
| 10 | `theorem` | [mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/mem-finsetapprox--d991deee99f36e7e3ba12fae.md) | 176 | `result-track:d991deee99f36e7e3ba12fae7a8dde713655ea3e567fe3a16c47a634907a95b2` |
| 11 | `theorem` | [exists_mem_finsetApprox](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/exists-mem-finsetapprox--f79193e632cc09de2f569fd0.md) | 198 | `result-track:f79193e632cc09de2f569fd07a067adbdc7bf843e61105f69803bd229e5fb1bb` |
| 12 | `theorem` | [exists_mem_finset_approx'](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/exists-mem-finset-approx--f34c42ec3a44f7e13a860f2c.md) | 250 | `result-track:f34c42ec3a44f7e13a860f2c1c895548f0241b5c4ddb4932593e7509a813511a` |
| 13 | `theorem` | [prod_finsetApprox_ne_zero](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/prod-finsetapprox-ne-zero--d86843c06a232ba0d47f936a.md) | 268 | `result-track:d86843c06a232ba0d47f936ae28ade87ec1d2d0b5ff4c547326611ff0150cd60` |
| 14 | `theorem` | [ne_bot_of_prod_finsetApprox_mem](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/ne-bot-of-prod-finsetapprox-mem--e4792c8ab56b8edc9f5a3c62.md) | 274 | `result-track:e4792c8ab56b8edc9f5a3c62189c372480e2e68639132439af71625a1462ce96` |
| 15 | `theorem` | [exists_mk0_eq_mk0](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/exists-mk0-eq-mk0--0214f4c71528c2a75691108a.md) | 282 | `result-track:0214f4c71528c2a75691108a2475547272567aca31bfe42619f451189b2b93b5` |
| 16 | `def` | [mkMMem](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/mkmmem--15e86a367859c911645b1160.md) | 319 | `declaration-track:15e86a367859c911645b1160d8b66c571864a5df79b86767b3f492bd2d76413e` |
| 17 | `theorem` | [mkMMem_surjective](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/mkmmem-surjective--c927fa64988878592a0f92c5.md) | 324 | `result-track:c927fa64988878592a0f92c5b6c19d7ef65437d7a29dc89a766d8a051c636d74` |
| 18 | `def` | [fintypeOfAdmissibleOfAlgebraic](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/fintypeofadmissibleofalgebraic--4de648b50040982cbd69c1d2.md) | 339 | `declaration-track:4de648b50040982cbd69c1d2fb52658be817f61a51417234b0cc1d036358efec` |
| 19 | `def` | [fintypeOfAdmissibleOfFinite](../../../../mathematics/Algebra/Finite/Variantb79049e0f4b0491dea28936c00be8d356d06bc468cf03e88fbbca7d738e69a01.lean/declarations/fintypeofadmissibleoffinite--28ce9a85fa50f13a29fcd124.md) | 361 | `declaration-track:28ce9a85fa50f13a29fcd124c63effef7bd4a0a289dbc6d6a488c0450dfc9bd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
