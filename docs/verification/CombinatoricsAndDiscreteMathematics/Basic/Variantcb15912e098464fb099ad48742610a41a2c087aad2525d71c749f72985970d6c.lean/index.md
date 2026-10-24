# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca012f2fa01edc7bbcfbb4d4fc058dbb0fbde8cb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca012f2fa01edc7bbcfbb4d4fc058dbb0fbde8cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean.json)

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
| 1 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/tolist--db20c5a3b216f063d315e79f.md) | 33 | `declaration-track:db20c5a3b216f063d315e79ff2b27c628ff76d853c672a2d898cd087db2e022f` |
| 2 | `theorem` | [coe_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/coe-tolist--420c61e4efa05982ef88161d.md) | 37 | `result-track:420c61e4efa05982ef88161d8a78c3addce97ef96ef2236a3c2c6bceb8aa55f5` |
| 3 | `theorem` | [toList_eq_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/tolist-eq-nil--aa498f255d596eeaa285b2d6.md) | 41 | `result-track:aa498f255d596eeaa285b2d6de8948141cc859901d75344542c5a39af09363e5` |
| 4 | `theorem` | [empty_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/empty-tolist--2065185f96cab3b44a18e655.md) | 44 | `result-track:2065185f96cab3b44a18e655c5399a51a0d9a0d3f0d7b86c0af21ec5bf4190ad` |
| 5 | `theorem` | [toList_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/tolist-zero--3610b1536bf38b07f5c0f8de.md) | 47 | `result-track:3610b1536bf38b07f5c0f8de6f0901071ac9c1c93f8b8d7f2618548d7576d413` |
| 6 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/mem-tolist--0256a05721a8c774abb920e5.md) | 51 | `result-track:0256a05721a8c774abb920e58392ff3f761195ffab9714a5ced4b4e73391bc0f` |
| 7 | `theorem` | [toList_eq_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/tolist-eq-singleton-iff--ddc0b55769f70ea4213ff2d4.md) | 55 | `result-track:ddc0b55769f70ea4213ff2d44dbb9d04b160a9025a32407b4c3b20584eb443dc` |
| 8 | `theorem` | [toList_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/tolist-singleton--c93c347a6c482324d5aab6ea.md) | 59 | `result-track:c93c347a6c482324d5aab6eafd35a55a0761aa7e4608b04dda6fa37affbb1877` |
| 9 | `theorem` | [length_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/length-tolist--54d37b583272019117cc666c.md) | 63 | `result-track:54d37b583272019117cc666c62765aa05fd3442eb0483c2f23650fb275ee01ed` |
| 10 | `def` | [strongInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/stronginductionon--29eb93ec8cb6b6b9b983c261.md) | 72 | `declaration-track:29eb93ec8cb6b6b9b983c261db61e06a04b899c646a6111b0e887692af7665c3` |
| 11 | `theorem` | [strongInductionOn_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/stronginductionon-eq--7005d99ce849c0bfc489482d.md) | 79 | `result-track:7005d99ce849c0bfc489482d92defd444a92d0f9fc76cce0b674e4b1edc28a21` |
| 12 | `theorem` | [case_strongInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/case-stronginductionon--a986755647a3124594842039.md) | 84 | `result-track:a986755647a3124594842039ced4ae7cde9e9945fbb6b3ec337df54134f54321` |
| 13 | `def` | [strongDownwardInduction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/strongdownwardinduction--faed8c79f657e15795859bf5.md) | 94 | `declaration-track:faed8c79f657e15795859bf5f378b07ef90efc0de8e3b540917848b0b14e02fa` |
| 14 | `theorem` | [strongDownwardInduction_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/strongdownwardinduction-eq--49370fec5a7d3f1ad060743e.md) | 103 | `result-track:49370fec5a7d3f1ad060743e354f3c3255aa7865d91b73ab8d6863a351220414` |
| 15 | `def` | [strongDownwardInductionOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/strongdownwardinductionon--77862c2cb1396f818fb0bb2a.md) | 111 | `declaration-track:77862c2cb1396f818fb0bb2ae2fa2456a8195c32f16161981e62b2fbf8f20b3d` |
| 16 | `theorem` | [strongDownwardInductionOn_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/strongdownwardinductionon-eq--315b58e210db677bec667744.md) | 117 | `result-track:315b58e210db677bec667744a581cebe2395306088851907e6478a0e251da912` |
| 17 | `def` | [chooseX](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/choosex--897388f83c1bb9dc1f1b8db2.md) | 129 | `declaration-track:897388f83c1bb9dc1f1b8db2c0e86078254694f88620834c067cba9ded1f2a66` |
| 18 | `def` | [choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/choose--c8a7558bc806ebc42e518fa6.md) | 145 | `declaration-track:c8a7558bc806ebc42e518fa6631865427e69a207fa36b2ecc9b45c6e8e8287b7` |
| 19 | `theorem` | [choose_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/choose-spec--c44e7fac131591ef5a86fab6.md) | 148 | `result-track:c44e7fac131591ef5a86fab6e571cc958e21500ccfb7142ba3e9798055ae4bd0` |
| 20 | `theorem` | [choose_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/choose-mem--e965653d9197840b8b577f14.md) | 151 | `result-track:e965653d9197840b8b577f144a4fbd312c72895f6b541bc5028d87f6dda2dc7b` |
| 21 | `theorem` | [choose_property](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/choose-property--a763078e351f21dd5fa71414.md) | 154 | `result-track:a763078e351f21dd5fa71414e2b827745f1f3fde0c88f14ee5ab6ea1ddeabfc1` |
| 22 | `theorem` | [choose_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/choose-eq-iff--17504702f96c555c95cd0925.md) | 157 | `result-track:17504702f96c555c95cd092501e1ce4530c18a07bd5c828e702da0f577839ee1` |
| 23 | `def` | [subsingletonEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/subsingletonequiv--18d6bc380672d75da8cd7b66.md) | 164 | `declaration-track:18d6bc380672d75da8cd7b66a685c1a3cdd833fae09c93d0c0780e1e542f7dcd` |
| 24 | `theorem` | [coe_subsingletonEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantcb15912e098464fb099ad48742610a41a2c087aad2525d71c749f72985970d6c.lean/declarations/coe-subsingletonequiv--d846ba2db59e3c0978919032.md) | 172 | `result-track:d846ba2db59e3c0978919032b302ca00f6c14e46811df1aaa62ea5ba33d49ccf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
