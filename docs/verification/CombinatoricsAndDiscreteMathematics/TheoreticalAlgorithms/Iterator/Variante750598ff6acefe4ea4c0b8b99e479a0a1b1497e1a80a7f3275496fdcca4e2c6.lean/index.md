# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean.json)

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
| 1 | `structure` | [Iterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/iterator--0bdb77bda81eb85a8b96dc07.md) | 53 | `declaration-track:0bdb77bda81eb85a8b96dc073c85fb0b1d1cbb6d2cbcb7bed3043176f5f618b7` |
| 2 | `def` | [mkIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/mkiterator--78d2425cea659d442f3f230d.md) | 71 | `declaration-track:78d2425cea659d442f3f230d9035a64675ab1b87bcf593f43e76cc4310d031f4` |
| 3 | `abbrev` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/iter--af8de139fd6b3e02b0c52909.md) | 75 | `declaration-track:af8de139fd6b3e02b0c5290929e604964ee587fffea660a8d672bb0ecab3d790` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/instance--c1565c883711bd86f3caef6d.md) | 82 | `declaration-track:c1565c883711bd86f3caef6db09b813080df08434d8190ee798281c582e85d6c` |
| 5 | `theorem` | [Iterator.sizeOf_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/iterator-sizeof-eq--f9ebb664edc0a82293faf1c0.md) | 85 | `result-track:f9ebb664edc0a82293faf1c07041f4ccc071edf0504c0a59970711625ecf164f` |
| 6 | `def` | [toString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/tostring--4dca755901c4bcbdd5d145d7.md) | 90 | `declaration-track:4dca755901c4bcbdd5d145d786cde1b3d0636ec67e1ffece3502ca57131b9bef` |
| 7 | `def` | [remainingBytes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/remainingbytes--f449e2bab791c2e6dade9399.md) | 95 | `declaration-track:f449e2bab791c2e6dade939924353134337cd2a47b3c2b9e2acde52cb2b8e987` |
| 8 | `def` | [pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/pos--9d5d2b49024beb47e0f28992.md) | 99 | `declaration-track:9d5d2b49024beb47e0f289920451ac004d871748f575c9f225c08bd12e44a4e7` |
| 9 | `def` | [curr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/curr--85eced8ad1155614a68f65c7.md) | 113 | `declaration-track:85eced8ad1155614a68f65c7b85490b715b05b11b1423d87e6a8e71903701d83` |
| 10 | `def` | [next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/next--2585134514c6336df6517322.md) | 127 | `declaration-track:2585134514c6336df6517322c1caf04f467abf7f40df5aafcc16a1841c363a31` |
| 11 | `def` | [prev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/prev--2b84763bc0cfbb4b3ad6a12d.md) | 135 | `declaration-track:2b84763bc0cfbb4b3ad6a12d72022e08a8c98da0bc3a258c163f7401fbbd3cdc` |
| 12 | `def` | [atEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/atend--dba57afefdf2522b9fe2c6db.md) | 141 | `declaration-track:dba57afefdf2522b9fe2c6dba11810e121898f0fa754e0fe920052b0815ae73a` |
| 13 | `def` | [hasNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/hasnext--706a894fcd6d74ec608af53b.md) | 147 | `declaration-track:706a894fcd6d74ec608af53bbfa36397891eb7af7d80a3fe37fe659ec309104d` |
| 14 | `def` | [hasPrev](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/hasprev--a8125e20a74057988f3cbc91.md) | 153 | `declaration-track:a8125e20a74057988f3cbc911b31136239da7ec0357dd4be1075481166ab8dfa` |
| 15 | `def` | [curr'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/curr--c7a4e17a0cafee79d4154120.md) | 162 | `declaration-track:c7a4e17a0cafee79d4154120dd18b37488fb1c1cd8f02bd27f1c9c4d22af748d` |
| 16 | `def` | [next'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/next--efe3aac16ec2fd5fc5b8a5ae.md) | 172 | `declaration-track:efe3aac16ec2fd5fc5b8a5aef95af2fedc987e514834dd2513abf0ab62ccbd2a` |
| 17 | `def` | [toEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/toend--a1581856450ad8461b2779d5.md) | 179 | `declaration-track:a1581856450ad8461b2779d5a314b81f6e31693304888695bdbafdb7bf45ea6c` |
| 18 | `def` | [extract](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/extract--5ef50c18dfee148a2551cb9a.md) | 189 | `declaration-track:5ef50c18dfee148a2551cb9a5d712844a4c8e5dbe9392af47e4c40f2098bfb4e` |
| 19 | `def` | [forward](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/forward--6a13e3bf6b9aba1b0c0bdf34.md) | 200 | `declaration-track:6a13e3bf6b9aba1b0c0bdf3425f784e82744877c20bbd76d94fe47dd71c621eb` |
| 20 | `def` | [remainingToString](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/remainingtostring--3c86c7d3368495d5e9840eb2.md) | 207 | `declaration-track:3c86c7d3368495d5e9840eb2e2dc2834915c140cd2f847805a47aa957afe8265` |
| 21 | `def` | [nextn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/nextn--cec89d1615b837e450d57adc.md) | 211 | `declaration-track:cec89d1615b837e450d57adc92dc6a7d0b3667c616b0e99108c128b22e1506a3` |
| 22 | `def` | [prevn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/prevn--7d46cb4656d396acb2a909e3.md) | 219 | `declaration-track:7d46cb4656d396acb2a909e389d72d3a2b8a824c848cbbbd357426dd3cd19e10` |
| 23 | `theorem` | [sizeOf_next_lt_of_hasNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/sizeof-next-lt-of-hasnext--a92fda192818f910cb957304.md) | 223 | `result-track:a92fda192818f910cb95730431f26ad25b6d22b6c2ac6bbb191e5094e5b3b985` |
| 24 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/macro-rules--c62bdd06d5253d16b65ece0c.md) | 227 | `declaration-track:c62bdd06d5253d16b65ece0cbe346fea939ccad5cb68f1d20c98f4536b987696` |
| 25 | `theorem` | [sizeOf_next_lt_of_atEnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/sizeof-next-lt-of-atend--b40978a911109476cdeb6f9b.md) | 231 | `result-track:b40978a911109476cdeb6f9b22ca8a4c108c39afccc6b3a7764ff5fe313fbf1a` |
| 26 | `macro_rules` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/macro-rules--1bbcd78972db5f864c8b5a8e.md) | 235 | `declaration-track:1bbcd78972db5f864c8b5a8e5f0d22e9b6478ea6d7ccbef2630bcf322c15441c` |
| 27 | `def` | [setCurr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/setcurr--47d7283ba32ec9d598297a02.md) | 246 | `declaration-track:47d7283ba32ec9d598297a02418383475dc3c103d14ae44b10082191e3dbb836` |
| 28 | `def` | [find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/find--31b1c3bc22187c885b0088bc.md) | 254 | `declaration-track:31b1c3bc22187c885b0088bcc68a7ba1ea34adca1f77c7ffe314a536a3c93c24` |
| 29 | `def` | [foldUntil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/folduntil--5cf21643ecd5893a633dcaa1.md) | 264 | `declaration-track:5cf21643ecd5893a633dcaa1c8f2fb9ef80fc70f2c976bbb32a6e54b4d009d2d` |
| 30 | `def` | [toLegacyIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/tolegacyiterator--9227166b60c826a92a91ee9f.md) | 283 | `declaration-track:9227166b60c826a92a91ee9fd0558ccf6782aa617b6e3c08169854f9aead30b3` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/instance--eea50a10e0335b8138b6e3e0.md) | 289 | `declaration-track:eea50a10e0335b8138b6e3e0518b541f1af7a53c08ab46eab6da409ee09c1897` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/instance--d063548c6949e905dcf928db.md) | 292 | `declaration-track:d063548c6949e905dcf928db09b86d74951896b0e528983a791338787c262051` |
| 33 | `abbrev` | [String.Iterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/string-iterator--f32116109aa7b7d7e3a3ed60.md) | 298 | `declaration-track:f32116109aa7b7d7e3a3ed602ba3a84e3f00b0eb3d969c5fc87915a94b02daa3` |
| 34 | `abbrev` | [String.iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/string-iter--e3133a7ee3381dae34f15031.md) | 300 | `declaration-track:e3133a7ee3381dae34f15031e8e165f039f3f5edca18eb6f45559f4a2ff08e9f` |
| 35 | `abbrev` | [String.mkIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/string-mkiterator--a2ec5b71617874c028fade6f.md) | 302 | `declaration-track:a2ec5b71617874c028fade6fc2c45a91c1e5c2291248dc9f1d7117b03f7a2b3c` |
| 36 | `abbrev` | [String.Iterator.curr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/string-iterator-curr--a6d48018e5a08a9bb1aa2e19.md) | 304 | `declaration-track:a6d48018e5a08a9bb1aa2e19e953baf9eca6a804eb1a4aa3443bc6bc0dafcbf2` |
| 37 | `abbrev` | [String.Iterator.next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/string-iterator-next--0d0a2e482ef6229f8220fec7.md) | 306 | `declaration-track:0d0a2e482ef6229f8220fec7dcc7bfa78bb4c000cb156441fd1eb67d22ade446` |
| 38 | `abbrev` | [String.Iterator.hasNext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/string-iterator-hasnext--56ec54faa330919dd1cf58c4.md) | 308 | `declaration-track:56ec54faa330919dd1cf58c4e459a9cdd0f67066b5fd6197e65efb8f43e158fd` |
| 39 | `abbrev` | [Substring.toIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/declarations/substring-toiterator--13bc943688bbdca313a2ab55.md) | 310 | `declaration-track:13bc943688bbdca313a2ab55827f0f5430d8ccba60f6a171b7f181c0313076d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
