# Verification target: GRWTSK.Algebra.LinearAlgebra.Restrict.Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a3568f03c5825dc4234d7ba9fcf74a875c19d21",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a3568f03c5825dc4234d7ba9fcf74a875c19d21`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.PerfectPairing.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.BaseChange` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [restrict_aux](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrict-aux--7e6d718239e6bda4063c76e7.md) | 44 | `result-track:7e6d718239e6bda4063c76e7eff8e6cff698c4d3e0b2e65a19ea2f65929fb509` |
| 2 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrict--e9fbcc0006d3d4a67272e55b.md) | 71 | `declaration-track:e9fbcc0006d3d4a67272e55bef2a649f7da89ba2ff2e1d341f2222cd19127add` |
| 3 | `lemma` | [restrict_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrict-apply-apply--0b29fe6f1b428056a484f28a.md) | 77 | `result-track:0b29fe6f1b428056a484f28a133b6f128575f8e096547056e88f4c795386f9a9` |
| 4 | `def` | [restrictScalarsAux](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalarsaux--177d1eb40d4174974954da0f.md) | 92 | `declaration-track:177d1eb40d4174974954da0f081dc18e3b5d2482396b77f3f928a799b0951fa7` |
| 5 | `lemma` | [restrictScalarsAux_injective](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalarsaux-injective--5ce22d220e652f2fb362a2c3.md) | 98 | `result-track:5ce22d220e652f2fb362a2c3f394396d0fbd0ae819d3f81bc123a5e00e97a4ff` |
| 6 | `lemma` | [restrictScalarsAux_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalarsaux-surjective--5fba33dd0eda026db321ce90.md) | 120 | `result-track:5fba33dd0eda026db321ce909977ed7c0f34eebfa65f9c2e46a106e369ad88f0` |
| 7 | `def` | [restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalars--0129ce66dbe493d3c97cb89b.md) | 135 | `declaration-track:0129ce66dbe493d3c97cb89bfe09d526b51d453d2c4b0c320d3a1e5873a9932d` |
| 8 | `lemma` | [exists_basis_basis_of_span_eq_top_of_mem_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/exists-basis-basis-of-span-eq-top-of-mem-algebramap--ae0cc8d61f75a090773d85cf.md) | 165 | `result-track:ae0cc8d61f75a090773d85cf813772e2db9e9813af431495f7f9486dfe29837b` |
| 9 | `def` | [restrictScalarsFieldAux](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalarsfieldaux--0b51db484323690c7e90c740.md) | 220 | `declaration-track:0b51db484323690c7e90c7400098b8087c0320adb50b64e4bf5a93cfa53504b9` |
| 10 | `def` | [restrictScalarsField](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalarsfield--f04e671faf6cdd996673d900.md) | 235 | `declaration-track:f04e671faf6cdd996673d9006007c161fb6bc3148708ff0c3455b3119c9b7f97` |
| 11 | `lemma` | [restrictScalarsField_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Restrict/Variantf5940268fd7cb6c9d89018316a5c979b2e956790363302eb1f1382e64f695633.lean/declarations/restrictscalarsfield-apply-apply--86bf9fcf9bafed74db23b0ea.md) | 255 | `result-track:86bf9fcf9bafed74db23b0eac31f71f8bd91430ff60e57d073b36513278d9411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
