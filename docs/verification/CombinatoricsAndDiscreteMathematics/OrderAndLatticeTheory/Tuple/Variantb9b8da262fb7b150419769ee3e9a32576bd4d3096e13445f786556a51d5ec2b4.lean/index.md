# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tuple.Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c97aed669f83cab98e5a50fa21d93e78d39276df",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c97aed669f83cab98e5a50fa21d93e78d39276df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PiLex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [pi_lex_lt_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/pi-lex-lt-cons-cons--91d1ce1c2ffa14a882cb4329.md) | 24 | `result-track:91d1ce1c2ffa14a882cb4329d4ef36e319327a63f9caa50ff033c91a7c133ada` |
| 2 | `lemma` | [insertNth_mem_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/insertnth-mem-icc--10484125442df4a84ef1ba25.md) | 33 | `result-track:10484125442df4a84ef1ba256a922a0524abcb8a9fa0b88bda9d288fe51e07c1` |
| 3 | `lemma` | [preimage_insertNth_Icc_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/preimage-insertnth-icc-of-mem--96f3946ab694458a748a3a70.md) | 39 | `result-track:96f3946ab694458a748a3a704bf098db853732b9989c226df6124cad1249dd57` |
| 4 | `lemma` | [preimage_insertNth_Icc_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/preimage-insertnth-icc-of-notmem--3df78f538ee48c2c6cfa4b93.md) | 44 | `result-track:3df78f538ee48c2c6cfa4b93080eb498de8d70468d45449c9dececf891e571d3` |
| 5 | `lemma` | [liftFun_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/liftfun-veccons--13a8bbb6dbfb596ba94ccb8a.md) | 59 | `result-track:13a8bbb6dbfb596ba94ccb8a8113bfc4a3a1266a520223c6047251b313660aeb` |
| 6 | `lemma` | [strictMono_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/strictmono-veccons--8e09a73df23e0154e7f1adcd.md) | 66 | `result-track:8e09a73df23e0154e7f1adcd5cd47b33282cb94b714805dc5315b2423f7c514d` |
| 7 | `lemma` | [monotone_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/monotone-veccons--1d5540463a2fe06ba9516f68.md) | 70 | `result-track:1d5540463a2fe06ba9516f680ac6198803fd6e9dfa9b97e16faffc7016dc907e` |
| 8 | `lemma` | [monotone_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/monotone-vecempty--f7771609c25708196614cb26.md) | 73 | `result-track:f7771609c25708196614cb26a864ff03514d9b0a599e68276a789d495e07f6aa` |
| 9 | `lemma` | [strictMono_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/strictmono-vecempty--9105f19a2ad1877f763cc566.md) | 76 | `result-track:9105f19a2ad1877f763cc5660fd06ac3e071914316a8e02ca41e52ed2a153016` |
| 10 | `lemma` | [strictAnti_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/strictanti-veccons--dc3751d1806a75df4e40b2cc.md) | 79 | `result-track:dc3751d1806a75df4e40b2ccec4800006e53748b5b7646a1d466bd288955e9df` |
| 11 | `lemma` | [antitone_vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/antitone-veccons--8cd0169434194faec3352622.md) | 82 | `result-track:8cd0169434194faec3352622f11a221736b4187ccd5ac7cbaf6e728f0083b39b` |
| 12 | `lemma` | [antitone_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/antitone-vecempty--4746a1eb8746117b1b177de1.md) | 85 | `result-track:4746a1eb8746117b1b177de1be4820b60122b1b688d232e0309fe6177d6d15fb` |
| 13 | `lemma` | [strictAnti_vecEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/strictanti-vecempty--5b2b9484efec4bc26b4c7fb7.md) | 88 | `result-track:5b2b9484efec4bc26b4c7fb7ce814029ba8aaa78e48d86809f5f99d7dd503d75` |
| 14 | `lemma` | [StrictMono.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/strictmono-veccons--543eee345e80102833a81126.md) | 91 | `result-track:543eee345e80102833a81126aa4902a7c062b361473072203dedd1b91b69032b` |
| 15 | `lemma` | [StrictAnti.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/strictanti-veccons--9ffb7f28d33f23cd4fb9f52d.md) | 94 | `result-track:9ffb7f28d33f23cd4fb9f52d5f5371892d08fd564a484580d863d0648eda628f` |
| 16 | `lemma` | [Monotone.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/monotone-veccons--58532cefd5a92850be19d7bc.md) | 97 | `result-track:58532cefd5a92850be19d7bc1bdf9893f8e50d5e9c9a381756bf840ca3b3b91c` |
| 17 | `lemma` | [Antitone.vecCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/antitone-veccons--2a871461ddcb81748ce92bb1.md) | 100 | `result-track:2a871461ddcb81748ce92bb17e57742c7f3f654272e47218c94c9a7f8e7cc2f7` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/example--c79ae0508ec8ff02845f8aa1.md) | 103 | `declaration-track:c79ae0508ec8ff02845f8aa162a0fae674c48e6cf2d774a4bc0727d5fc3a2e3e` |
| 19 | `def` | [OrderIso.piFinTwoIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/orderiso-pifintwoiso--77a79498954d01c1d1146aea.md) | 110 | `declaration-track:77a79498954d01c1d1146aea2574167267a578649577d644167a28b7a0961e3e` |
| 20 | `def` | [OrderIso.finTwoArrowIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/orderiso-fintwoarrowiso--f1ab3745a9135bd253ffdc69.md) | 116 | `declaration-track:f1ab3745a9135bd253ffdc693e0820f6ebd44c611a2caeba757bb4d05e183094` |
| 21 | `def` | [consOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/consorderiso--0d129946c64e604e416a9bcb.md) | 126 | `declaration-track:0d129946c64e604e416a9bcb43f73d364e8eacb49be0825627a817daa840be66` |
| 22 | `def` | [snocOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/snocorderiso--86c4e1e7667e2c4793a4ef58.md) | 136 | `declaration-track:86c4e1e7667e2c4793a4ef584893b725ee7bd9d72a14f739450781c82a5544ec` |
| 23 | `def` | [insertNthOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/insertnthorderiso--0762b831081e93bd45039954.md) | 146 | `declaration-track:0762b831081e93bd45039954c9b57363f7679396e75aaee5f88438ef2eaeea0d` |
| 24 | `lemma` | [insertNthOrderIso_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/insertnthorderiso-zero--a6486f903c4724a90ff6c7bb.md) | 151 | `result-track:a6486f903c4724a90ff6c7bb459c000b9f66aa0cff1a8a45fbce9710a544e9f9` |
| 25 | `lemma` | [insertNthOrderIso_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/insertnthorderiso-last--027a2dd2ae85ccc119bfabe0.md) | 156 | `result-track:027a2dd2ae85ccc119bfabe053254fbd985499a88c3933f78e97dd03ebaddbed` |
| 26 | `def` | [finSuccAboveOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/finsuccaboveorderiso--f111a5c3a3445f0edf4b7711.md) | 162 | `declaration-track:f111a5c3a3445f0edf4b771197b46abd43367b50abf09e2ddf9476304905791c` |
| 27 | `lemma` | [finSuccAboveOrderIso_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/finsuccaboveorderiso-apply--f0454cbb9f4d32e6e28fc859.md) | 166 | `result-track:f0454cbb9f4d32e6e28fc85985c895c0c74786f5df4eaa9967c77a3ef99e7bc0` |
| 28 | `lemma` | [finSuccAboveOrderIso_symm_apply_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/finsuccaboveorderiso-symm-apply-last--aec13995e4e276f34be46ed3.md) | 169 | `result-track:aec13995e4e276f34be46ed3ae694587b59b18686c095eae63563e195ac2b793` |
| 29 | `lemma` | [finSuccAboveOrderIso_symm_apply_ne_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/finsuccaboveorderiso-symm-apply-ne-last--7930f024f857a4f2f2beabf0.md) | 174 | `result-track:7930f024f857a4f2f2beabf01561b5ae182aac137a20165ee48ae3b41f2c78be` |
| 30 | `def` | [Fin.castLEOrderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tuple/Variantb9b8da262fb7b150419769ee3e9a32576bd4d3096e13445f786556a51d5ec2b4.lean/declarations/fin-castleorderiso--269591d50b4531ea6722d1ca.md) | 183 | `declaration-track:269591d50b4531ea6722d1ca02af2f2d794763d4ef6069a007f8e84b8318b789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
