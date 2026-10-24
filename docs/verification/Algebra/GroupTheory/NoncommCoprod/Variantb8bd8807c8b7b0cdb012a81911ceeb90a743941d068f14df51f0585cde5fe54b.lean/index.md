# Verification target: GRWTSK.Algebra.GroupTheory.NoncommCoprod.Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e029c0b9e087062e5d102c6030d3941f57dba40",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e029c0b9e087062e5d102c6030d3941f57dba40`.

Source path: `GRWTSK/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean.json)

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
| 1 | `def` | [noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod--6f0e99affaba0e71f25d9b6e.md) | 60 | `declaration-track:6f0e99affaba0e71f25d9b6e3edc96a3652659d3d62292299e1e87b838efc8ec` |
| 2 | `theorem` | [noncommCoprod_apply'](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-apply--695ee8621deee2092328382d.md) | 67 | `result-track:695ee8621deee2092328382d645a02f2554cc581823ac5b7bd1082d1acfab418` |
| 3 | `theorem` | [comp_noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/comp-noncommcoprod--99ccb62533f84a7a5f5e24b6.md) | 72 | `result-track:99ccb62533f84a7a5f5e24b6499818ff1b06e10e64ca9250df9b89fb9d8af174` |
| 4 | `def` | [noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod--1363042fd4d4e2ad267fe49e.md) | 94 | `declaration-track:1363042fd4d4e2ad267fe49ea5fbd95f41bc4097987559b43f6f82ed8e193010` |
| 5 | `theorem` | [noncommCoprod_apply'](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-apply--d952742a30a0aaff269fd82d.md) | 102 | `result-track:d952742a30a0aaff269fd82d3d945d6d6d99bc87feb253e2ab36dd698881d36f` |
| 6 | `theorem` | [noncommCoprod_comp_inl](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-comp-inl--c4467a48875e5d6aa0834300.md) | 107 | `result-track:c4467a48875e5d6aa08343001c5edd12d91953af326ff932fc0bbb5392185b57` |
| 7 | `theorem` | [noncommCoprod_comp_inr](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-comp-inr--80557b62f8596dccbb34c7fb.md) | 111 | `result-track:80557b62f8596dccbb34c7fbc35223c4c236340ffa76569810b1ba62c95affed` |
| 8 | `theorem` | [noncommCoprod_unique](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-unique--1930c3d6f2bb6b2f259602bd.md) | 115 | `result-track:1930c3d6f2bb6b2f259602bd938dece11d3c5efc48314ad4e488cb3762c72705` |
| 9 | `theorem` | [noncommCoprod_inl_inr](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-inl-inr--da69957d0c4bb959a86309ae.md) | 121 | `result-track:da69957d0c4bb959a86309aeaa639c85f1b9a7a8b9c496669d30c4869fe729b0` |
| 10 | `theorem` | [comp_noncommCoprod](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/comp-noncommcoprod--c00e656594e7c8ce63fa5cf0.md) | 126 | `result-track:c00e656594e7c8ce63fa5cf0cfd104311eb2692fec6d359d4b139e52defcd5bc` |
| 11 | `lemma` | [noncommCoprod_injective](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-injective--a0800e9a0c80478d63747f9b.md) | 135 | `result-track:a0800e9a0c80478d63747f9b153993bffacdfa4d8b651ea81f4c9983f6e4bf8f` |
| 12 | `lemma` | [noncommCoprod_range](../../../../../mathematics/Algebra/GroupTheory/NoncommCoprod/Variantb8bd8807c8b7b0cdb012a81911ceeb90a743941d068f14df51f0585cde5fe54b.lean/declarations/noncommcoprod-range--3afcf8d4c0feeb4d9c86ac95.md) | 150 | `result-track:3afcf8d4c0feeb4d9c86ac95a871857cc550385d36e2aa33b5212244a404b1a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
