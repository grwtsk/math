# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Rotate.Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4677a3c73bf7773a98c60848b4d1389a653581ea",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4677a3c73bf7773a98c60848b4d1389a653581ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate--18cf90382b6987ab63063218.md) | 27 | `declaration-track:18cf90382b6987ab63063218f51477d51641920a6d21653c905f16583fc42679` |
| 2 | `lemma` | [finRotate_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-zero--eb424739629b10aecb44b923.md) | 31 | `result-track:eb424739629b10aecb44b92397b9763a29ab2881a1e781a2451470a868da49ba` |
| 3 | `lemma` | [finRotate_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-succ--d432aa70d37fa6616ff0feab.md) | 33 | `result-track:d432aa70d37fa6616ff0feabb5fe422dad33f484e385effa9bbf6c309f06ca0d` |
| 4 | `theorem` | [finRotate_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-of-lt--670c2545312de2b6fa6783a7.md) | 36 | `result-track:670c2545312de2b6fa6783a7e35412003982a7f80a991cab8b7bd3d77c3c13d3` |
| 5 | `theorem` | [finRotate_last'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-last--4be4c6e468ee8f8aeb6374d0.md) | 42 | `result-track:4be4c6e468ee8f8aeb6374d08423a1027320bdf64fc56efdb9aaa706496d02d5` |
| 6 | `theorem` | [finRotate_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-last--a33ca2947a0be9f7a700e444.md) | 47 | `result-track:a33ca2947a0be9f7a700e4442f11ebaea6476fa23124f4fa816b7130fb74adc9` |
| 7 | `theorem` | [Fin.snoc_eq_cons_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/fin-snoc-eq-cons-rotate--30d14db0a7c81fc1fe26211e.md) | 50 | `result-track:30d14db0a7c81fc1fe26211e0ad1475487c04028ddd6d1a5ce8ce7fa2b9f62c0` |
| 8 | `theorem` | [finRotate_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-one--940826b25cb7f8e858fa43a7.md) | 64 | `result-track:940826b25cb7f8e858fa43a71663577d8ac6e477feb43ea3e2b1b21cef5ff4dc` |
| 9 | `theorem` | [finRotate_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-apply--e1d39682e8c277de0c2a31ab.md) | 68 | `result-track:e1d39682e8c277de0c2a31abad3be8fc4eea67df26d66def9ddfead35a00400e` |
| 10 | `theorem` | [finRotate_succ_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-succ-apply--9ad0f33f056004156a27485c.md) | 80 | `result-track:9ad0f33f056004156a27485cbc2950abecf17bc5304f208dab7daee8c9a7db2b` |
| 11 | `theorem` | [finRotate_apply_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-apply-zero--f6f8c620e891698fed48733d.md) | 83 | `result-track:f6f8c620e891698fed48733d9e397f4528670f66a85a8a4d4d014136b6d50e7c` |
| 12 | `theorem` | [coe_finRotate_of_ne_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/coe-finrotate-of-ne-last--e6cc18ec100b63431e3ee4f0.md) | 86 | `result-track:e6cc18ec100b63431e3ee4f0db8b63350cf322883912df0fcae7f5704c801fe9` |
| 13 | `theorem` | [coe_finRotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/coe-finrotate--710aa32e38f82d2d189d07d2.md) | 92 | `result-track:710aa32e38f82d2d189d07d2327b1e3fd68a451f8040b2b4347be9c636d3bee7` |
| 14 | `theorem` | [lt_finRotate_iff_ne_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/lt-finrotate-iff-ne-last--c00a7dc9433b32d2395cdb37.md) | 96 | `result-track:c00a7dc9433b32d2395cdb37f97d95110b83036386add1c7ccfd43fb3436b3e3` |
| 15 | `theorem` | [lt_finRotate_iff_ne_neg_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/lt-finrotate-iff-ne-neg-one--b09bbe0fbe69326ff9cb2bf0.md) | 100 | `result-track:b09bbe0fbe69326ff9cb2bf02b433dacc8ec6d93a80b470550c5c839ab17a4f3` |
| 16 | `lemma` | [finRotate_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-symm-apply--8d0fa583c65cd166dcb11d78.md) | 106 | `result-track:8d0fa583c65cd166dcb11d78ac5bc10a7b451e121c17efcd1c01927d9dbdd3a3` |
| 17 | `lemma` | [finRotate_succ_symm_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-succ-symm-apply--cac481bfdb854370ae67ae3a.md) | 112 | `result-track:cac481bfdb854370ae67ae3a8ef5707e1a8151f834dd0f91ba8f47c66860303b` |
| 18 | `lemma` | [coe_finRotate_symm_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/coe-finrotate-symm-of-ne-zero--6b3e09bce730de3a8dd7b57a.md) | 115 | `result-track:6b3e09bce730de3a8dd7b57aaa11b4a26d17f6e1e884faa0c61a916b5622375e` |
| 19 | `theorem` | [finRotate_symm_lt_iff_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/finrotate-symm-lt-iff-ne-zero--f0236277131635bad2b12364.md) | 119 | `result-track:f0236277131635bad2b123642b1db5176b354ec54b39281c44229de16d4b915d` |
| 20 | `def` | [finCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/fincycle--8c87259c1e79c6168aea1e18.md) | 128 | `declaration-track:8c87259c1e79c6168aea1e183e6f51744ad40a49b0741ac2b7036513eb80de47` |
| 21 | `lemma` | [finCycle_eq_finRotate_iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Rotate/Variantefc770513d77602e3ac7d496622bf03f5bbdba4fd5cc18e21df3ca5241685eaa.lean/declarations/fincycle-eq-finrotate-iterate--231fed098edee554fa955190.md) | 134 | `result-track:231fed098edee554fa955190fe723f33e9b98a3643424fd5d6cca32166067ffe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
