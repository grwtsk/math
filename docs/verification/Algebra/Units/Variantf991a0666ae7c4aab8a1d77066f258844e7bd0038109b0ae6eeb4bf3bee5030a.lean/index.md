# Verification target: GRWTSK.Algebra.Units.Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eba98101a8a9f5ec25afdbae358ffa6b3332d12",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eba98101a8a9f5ec25afdbae358ffa6b3332d12`.

Source path: `GRWTSK/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/instance--2f58a8fee6b95db10e666662.md) | 30 | `declaration-track:2f58a8fee6b95db10e66666244e4592a2e33436dd47f92dedabceeca6620fe76` |
| 2 | `theorem` | [val_neg](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/val-neg--4ccd513812be1152f0e64a82.md) | 36 | `result-track:4ccd513812be1152f0e64a82589740316ee1522771cd41bf05f35ca3f8e7c744` |
| 3 | `theorem` | [coe_neg_one](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/coe-neg-one--056a1d2ffebf8ddcd17f29d2.md) | 41 | `result-track:056a1d2ffebf8ddcd17f29d212320c7280089601677979bdbaad617c3eb988a8` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/instance--f3cbcf118bb477849bdf1197.md) | 45 | `declaration-track:f3cbcf118bb477849bdf119757ca19875b632b5961a685091cb7b4fadd388066` |
| 5 | `theorem` | [neg_divp](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/neg-divp--e63a178c0ba5839d2b640fc9.md) | 49 | `result-track:e63a178c0ba5839d2b640fc912291808650ab751e171b5ba3e5aa939503ae299` |
| 6 | `theorem` | [divp_add_divp_same](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/divp-add-divp-same--3c1ca6fe787bfd5f249cc187.md) | 60 | `result-track:3c1ca6fe787bfd5f249cc187958365d08c5a9a4754374635c4025b8262617044` |
| 7 | `theorem` | [divp_sub_divp_same](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/divp-sub-divp-same--c4fe181b271fad590914e648.md) | 66 | `result-track:c4fe181b271fad590914e6484069cbd6cf64f8e8dd24010fc8450cb797476002` |
| 8 | `theorem` | [add_divp](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/add-divp--703e166398c9d94d27124dba.md) | 71 | `result-track:703e166398c9d94d27124dba1777c6bb7930d83b324bc633ac8755f76954e013` |
| 9 | `theorem` | [sub_divp](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/sub-divp--7e09b3520aad3cb010ce0288.md) | 76 | `result-track:7e09b3520aad3cb010ce028810d52dec7f3b70e5627ccd5aed4de13006ffa10e` |
| 10 | `theorem` | [divp_add](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/divp-add--d738d410a3a3591da82f148f.md) | 81 | `result-track:d738d410a3a3591da82f148f5448e91408dd4d9b99613bc32596bebe60574f1b` |
| 11 | `theorem` | [divp_sub](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/divp-sub--3d97c97c52a9739398f81a08.md) | 86 | `result-track:3d97c97c52a9739398f81a0849f3cdefc9c2e94218344b5fc8ff9e2e7a7ef36d` |
| 12 | `theorem` | [IsUnit.neg](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/isunit-neg--b227c9c0015857b574c2cdcb.md) | 95 | `result-track:b227c9c0015857b574c2cdcbee7e7227e11d871fdba7ae5d73d95cdd706eb662` |
| 13 | `theorem` | [IsUnit.neg_iff](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/isunit-neg-iff--cfd41dad1ac345c861ee77f8.md) | 100 | `result-track:cfd41dad1ac345c861ee77f860a3065fc11f202c45f3ce7931e7eedc6191408d` |
| 14 | `theorem` | [IsUnit.sub_iff](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/isunit-sub-iff--758845bca0124f0baf4fae70.md) | 104 | `result-track:758845bca0124f0baf4fae70502022faa5e36309a40825a356f4d26e341606af` |
| 15 | `theorem` | [divp_add_divp](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/divp-add-divp--0af491c9be08b4ee3f70686c.md) | 111 | `result-track:0af491c9be08b4ee3f70686cab288664bb266b2cf0bd73b9ddab03212a14f7cc` |
| 16 | `theorem` | [divp_sub_divp](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/divp-sub-divp--eb64d739b20d4032af692275.md) | 121 | `result-track:eb64d739b20d4032af6922753db701325ee57dcae838975e2dd4241b52cba2e9` |
| 17 | `theorem` | [add_eq_mul_one_add_div](../../../../mathematics/Algebra/Units/Variantf991a0666ae7c4aab8a1d77066f258844e7bd0038109b0ae6eeb4bf3bee5030a.lean/declarations/add-eq-mul-one-add-div--62834cb7a01828d66ec4f690.md) | 126 | `result-track:62834cb7a01828d66ec4f690d5b385d75144b90cab85d3c92538db95fee4020a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
