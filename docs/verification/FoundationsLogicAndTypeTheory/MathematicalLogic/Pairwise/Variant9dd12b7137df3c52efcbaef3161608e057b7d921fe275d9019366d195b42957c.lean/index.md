# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pairwise.Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bc7eae2b172bb6052fc125eb8fefe2d35af3d58",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bc7eae2b172bb6052fc125eb8fefe2d35af3d58`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean.json)

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
| 1 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise--62c8273650fd371da321f2f3.md) | 42 | `declaration-track:62c8273650fd371da321f2f3ea97e8148c4bae04ad1787d81110ae721773daf1` |
| 2 | `theorem` | [Pairwise.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-mono--7c27afc76cc6504d5df8717f.md) | 45 | `result-track:7c27afc76cc6504d5df8717f6dc032519ae6fd69df5bda8eb53ccd4088d3d17d` |
| 3 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-eq--1c54cfbdac3181aaf95ae614.md) | 48 | `result-track:1c54cfbdac3181aaf95ae6145a0ed68157614fc3d0b68d3cf46b779a60b5218d` |
| 4 | `lemma` | [Subsingleton.pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/subsingleton-pairwise--5d34d5f219d1347a572d32ea.md) | 52 | `result-track:5d34d5f219d1347a572d32ea3b0d9f214eb4acac6a9b0a93db4b9e5a19355959` |
| 5 | `theorem` | [Function.injective_iff_pairwise_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/function-injective-iff-pairwise-ne--5559072bc25e8926448137ea.md) | 55 | `result-track:5559072bc25e8926448137ea26e88da4b8c62fb00a839e8652ba98b49b633220` |
| 6 | `lemma` | [Pairwise.comp_of_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-comp-of-injective--9f5cf6968fe351d323bdfe0d.md) | 60 | `result-track:9f5cf6968fe351d323bdfe0d7704cd4f45b829d0152d9b17342fafbfda9f665c` |
| 7 | `lemma` | [Pairwise.of_comp_of_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-of-comp-of-surjective--bfc2db05623a18bd04db028d.md) | 64 | `result-track:bfc2db05623a18bd04db028ddf4648624e730e985945217f07ee7adc3ac2e38a` |
| 8 | `lemma` | [Function.Bijective.pairwise_comp_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/function-bijective-pairwise-comp-iff--ab769fb85137987e5d9589a0.md) | 67 | `result-track:ab769fb85137987e5d9589a0e34a3c6c9977e6a4621ef415fcb0d3ab062ecfe0` |
| 9 | `theorem` | [pairwise_fin_succ_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-fin-succ-iff--423b7d9f95dc6a9c3009a820.md) | 71 | `result-track:423b7d9f95dc6a9c3009a820de2ca64abf3f0fee61d7e49ee4f723c0dda2f42e` |
| 10 | `theorem` | [pairwise_fin_succ_iff_of_isSymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-fin-succ-iff-of-issymm--751c885fbf22946f6cd5b7af.md) | 84 | `result-track:751c885fbf22946f6cd5b7af76e94b8527ba07afe56180c2674749327ac96424` |
| 11 | `def` | [Pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise--fd6cdf14b1f95b497fc695ab.md) | 91 | `declaration-track:fd6cdf14b1f95b497fc695ab29684292e2e2aad858a567293435e81abbc4a219` |
| 12 | `theorem` | [pairwise_of_forall](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-of-forall--4e9f389df1507e71f93352d4.md) | 94 | `result-track:4e9f389df1507e71f93352d43380a9f950c0696f696454587fc6a6d989306c2a` |
| 13 | `theorem` | [Pairwise.imp_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-imp-on--e39d5ae5f77efa68a92df724.md) | 97 | `result-track:e39d5ae5f77efa68a92df724c86cb2b51529f4859ef88363b54e5cec177da668` |
| 14 | `theorem` | [Pairwise.imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-imp--adca65eadbaadc24f38f3523.md) | 101 | `result-track:adca65eadbaadc24f38f35231ae49d2fa87202d038b3b1a71bf96f8c9590fa3a` |
| 15 | `theorem` | [Pairwise.eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-eq--1c5f2fc19fc50dc7a97365b3.md) | 104 | `result-track:1c5f2fc19fc50dc7a97365b33472a0e722c7f169103ef0243c4c74386ebee98b` |
| 16 | `theorem` | [pairwise_iff_of_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-iff-of-refl--7d11fca7ea0a03c996e384da.md) | 107 | `result-track:7d11fca7ea0a03c996e384da9585a28a4650a5ad272c8c58ccd17302b8a13f5c` |
| 17 | `theorem` | [Pairwise.of_forall₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-of-forall--54dc0cc867a243587d9b48ee.md) | 113 | `result-track:54dc0cc867a243587d9b48ee8b355fbab3598389aef72fd76e89a3fdae50d4ab` |
| 18 | `theorem` | [Pairwise.on_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-on-injective--7914ab30eade26c93407df87.md) | 124 | `result-track:7914ab30eade26c93407df87365d6ae905c6bd600b44f1dfc117756a1a9b9632` |
| 19 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant9dd12b7137df3c52efcbaef3161608e057b7d921fe275d9019366d195b42957c.lean/declarations/pairwise-set-pairwise--b82edac7978aaa199da5db0b.md) | 129 | `result-track:b82edac7978aaa199da5db0bc2c13787699fafc15e512b86e9b12eca2b3f68a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
