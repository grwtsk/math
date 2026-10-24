# Verification target: GRWTSK.Algebra.GroupTheory.IterateAct.Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd779a13ecc8cc74738038a15efc1d4b2802c114",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd779a13ecc8cc74738038a15efc1d4b2802c114`.

Source path: `GRWTSK/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean.json)

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
| 1 | `structure` | [IterateAddAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/declarations/iterateaddact--6b91a9b43ef1687fad7a8e83.md) | 32 | `declaration-track:6b91a9b43ef1687fad7a8e83637a07e3a9723fa9aec96f3d2f7c0b53c8fc6679` |
| 2 | `structure` | [IterateMulAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/declarations/iteratemulact--e4f6bffc427ffc808303b255.md) | 38 | `declaration-track:e4f6bffc427ffc808303b255adde7df24e173d20776ef4e41b2344c7fd624914` |
| 3 | `instance` | [instCountable](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/declarations/instcountable--c60105a5fa9b6fc11c1d4add.md) | 47 | `declaration-track:c60105a5fa9b6fc11c1d4add9029667621f8d220cfb10d862dd1b6acfd16d7e0` |
| 4 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/declarations/instcommmonoid--0dc66b6abb31dddb33804879.md) | 51 | `declaration-track:0dc66b6abb31dddb33804879f71d7b9b554bfdefdd7066fb18b635816e569dc8` |
| 5 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/declarations/instmulaction--96cdf257e3cccf8bf01a87c6.md) | 63 | `declaration-track:96cdf257e3cccf8bf01a87c6450ed0998877d28a41e9b6bf0bcb23b28739c14a` |
| 6 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantd6aebcdccda9fa5935c6febf39f7b10558817cffded8ab3337af6825d848faa8.lean/declarations/mk-smul--f14eec26e267c4e81dacaad8.md) | 69 | `result-track:f14eec26e267c4e81dacaad8525a6ea42d633fa5c4a52058c64aa01fb90a7a7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
