# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Complex.Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f556aee1a8bc99857d610f7eaf085eae4119f29",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f556aee1a8bc99857d610f7eaf085eae4119f29`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isPrimitiveRoot_exp_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-exp-of-coprime--fc20355bacd38d2127bf95f0.md) | 40 | `result-track:fc20355bacd38d2127bf95f0c138c6f5015a80c24020aac1ee5511a0b583bd09` |
| 2 | `theorem` | [isPrimitiveRoot_exp](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-exp--eb63935f683e6fc7f0e69dde.md) | 60 | `result-track:eb63935f683e6fc7f0e69dde9f3f377ad44d7c50e4cb7b92c2c1dc42f81da519` |
| 3 | `theorem` | [isPrimitiveRoot_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-iff--2246d0601d16e8142d50dc57.md) | 65 | `result-track:2246d0601d16e8142d50dc5720880fe2ec8dbb9d7730f20ef4d82efe839b9f96` |
| 4 | `theorem` | [mem_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/mem-rootsofunity--9099a03282537c26c7bd24aa.md) | 81 | `result-track:9099a03282537c26c7bd24aa28096c3d0ea3c10e4a8f83373c15d6e5359541f5` |
| 5 | `theorem` | [card_rootsOfUnity](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/card-rootsofunity--54c0e69df0c26f343f1bba51.md) | 99 | `result-track:54c0e69df0c26f343f1bba515c591e602b341e5e315d57ae40d45528333c63fd` |
| 6 | `theorem` | [card_primitiveRoots](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/card-primitiveroots--5b3dfee17235aaf63fa550dd.md) | 103 | `result-track:5b3dfee17235aaf63fa550ddb1008a1a1999c9d20bbb70c60ad13e4897ba2e4f` |
| 7 | `theorem` | [IsPrimitiveRoot.norm'_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-norm-eq-one--f71a76b27f80cdb04cb061d8.md) | 111 | `result-track:f71a76b27f80cdb04cb061d85902a3a39c47dc9c07f174e57762197d242325e7` |
| 8 | `theorem` | [IsPrimitiveRoot.nnnorm_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-nnnorm-eq-one--fc80c96b8a3693bf55085c8b.md) | 116 | `result-track:fc80c96b8a3693bf55085c8ba357745f0d5b4c749319bdafd6024965efe940f4` |
| 9 | `theorem` | [IsPrimitiveRoot.arg_ext](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-arg-ext--555f6512b1a9dad54bf2db39.md) | 121 | `result-track:555f6512b1a9dad54bf2db39b285009ba2b23b309cb62d201a16c0adfbb6daf7` |
| 10 | `theorem` | [IsPrimitiveRoot.arg_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-arg-eq-zero-iff--0194111e29d14117bb0bf46c.md) | 126 | `result-track:0194111e29d14117bb0bf46c2a6cf43732855b48ae0c9c5b5f8ecbe93cf86f68` |
| 11 | `theorem` | [IsPrimitiveRoot.arg_eq_pi_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-arg-eq-pi-iff--be71f8b8bb051eee50ee942b.md) | 132 | `result-track:be71f8b8bb051eee50ee942b73819d838323687577ad39dfe87b21478afb69fe` |
| 12 | `theorem` | [IsPrimitiveRoot.arg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Complex/Variant20d41041ac095363c507b328c5ae554bc59aca48d77204d986327edb5f5935dd.lean/declarations/isprimitiveroot-arg--583bc064c9124f9ef7d5f8fb.md) | 140 | `result-track:583bc064c9124f9ef7d5f8fbbf94537ad23091e24f44d4333952fe439fae1c92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
