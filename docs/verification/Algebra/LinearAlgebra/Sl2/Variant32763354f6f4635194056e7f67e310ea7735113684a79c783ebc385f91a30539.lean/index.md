# Verification target: GRWTSK.Algebra.LinearAlgebra.Sl2.Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91fdb6337421f987f0b99d176252bdb8ef672e80",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91fdb6337421f987f0b99d176252bdb8ef672e80`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSl2Triple](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/issl2triple--b41766bae0cc025eafac78b5.md) | 44 | `declaration-track:b41766bae0cc025eafac78b594f6f3e286915e4d00578c203262b25d6dab0694` |
| 2 | `lemma` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/symm--56ee2eeda53f5bb1c089533a.md) | 55 | `result-track:56ee2eeda53f5bb1c089533a183dbdb07f4bcbf11a32ffd647348c7e8b408313` |
| 3 | `lemma` | [symm_iff](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/symm-iff--7928629ef4fec9b29256679c.md) | 61 | `result-track:7928629ef4fec9b29256679c59494db729e723cbb38201187e5154f693d07739` |
| 4 | `lemma` | [lie_h_e_smul](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/lie-h-e-smul--9362f4df3d4cd22aa4b59bb2.md) | 64 | `result-track:9362f4df3d4cd22aa4b59bb2a0200266e499119cc579f04e49d65b4276575511` |
| 5 | `lemma` | [lie_lie_smul_f](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/lie-lie-smul-f--d642ff507e2d9c4c37b3c03d.md) | 67 | `result-track:d642ff507e2d9c4c37b3c03dc45c3bdd42678db91b921b44a261a847f8829605` |
| 6 | `lemma` | [e_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/e-ne-zero--1216312fdf859b1a5c84933d.md) | 70 | `result-track:1216312fdf859b1a5c84933d152e36be85ca23b91467de2ca21a52f4cf95446a` |
| 7 | `lemma` | [f_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/f-ne-zero--0590888396e28d4b43a776b7.md) | 75 | `result-track:0590888396e28d4b43a776b72af3b950b41bbd14e1668b8c024fa8fa3e82397a` |
| 8 | `structure` | [HasPrimitiveVectorWith](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/hasprimitivevectorwith--6676540d364802357634da62.md) | 85 | `declaration-track:6676540d364802357634da62b56b59fa60fbaaa3dd32144887a03cbda0d00c4a` |
| 9 | `lemma` | [HasPrimitiveVectorWith.mk'](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/hasprimitivevectorwith-mk--c03e4f2461954afc2e9cb776.md) | 92 | `result-track:c03e4f2461954afc2e9cb77684c0ca13a9961bb70c929ac1ff97a69836e8a18f` |
| 10 | `def` | [toLieSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/toliesubalgebra--1d414cd9091bbdf0f562b04f.md) | 105 | `declaration-track:1d414cd9091bbdf0f562b04f7e52cfd104562e223e3622b54bea9e368214c59a` |
| 11 | `lemma` | [mem_toLieSubalgebra_iff](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/mem-toliesubalgebra-iff--e9dcd311b8087cd303bb5222.md) | 142 | `result-track:e9dcd311b8087cd303bb5222fc9a235a2e54a1594885184619a7bfa49b7e9b52` |
| 12 | `lemma` | [lie_f_pow_toEnd_f](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/lie-f-pow-toend-f--9b93360443dce6fa669ac9f2.md) | 156 | `result-track:9b93360443dce6fa669ac9f2f1a20c2ec06f4a7f23b8119e5b6f9c9032f2ac1a` |
| 13 | `lemma` | [lie_h_pow_toEnd_f](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/lie-h-pow-toend-f--3b0630baa37a221e029b2b20.md) | 163 | `result-track:3b0630baa37a221e029b2b20158fccce6444d1afd1c3ce3eec854bd966da8b4a` |
| 14 | `lemma` | [lie_e_pow_succ_toEnd_f](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/lie-e-pow-succ-toend-f--77562315170f40fabfb231dd.md) | 173 | `result-track:77562315170f40fabfb231dd9d5c8260f2fbbd26162c844194a89117ccca6351` |
| 15 | `lemma` | [exists_nat](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/exists-nat--62f134fb5e422fdd60b1d053.md) | 189 | `result-track:62f134fb5e422fdd60b1d053b6654a0be87d6a12303730ef75a72612c1ad7dc3` |
| 16 | `lemma` | [pow_toEnd_f_ne_zero_of_eq_nat](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/pow-toend-f-ne-zero-of-eq-nat--5b269f410736dee80260439b.md) | 206 | `result-track:5b269f410736dee80260439b0f4e8326c584bdb039d8e145ad1cf986d718dd31` |
| 17 | `lemma` | [pow_toEnd_f_eq_zero_of_eq_nat](../../../../../mathematics/Algebra/LinearAlgebra/Sl2/Variant32763354f6f4635194056e7f67e310ea7735113684a79c783ebc385f91a30539.lean/declarations/pow-toend-f-eq-zero-of-eq-nat--da12d5d544c68e67f6144b28.md) | 221 | `result-track:da12d5d544c68e67f6144b28aab9988e92cea6f1d13812d858ce999bb10efb27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
