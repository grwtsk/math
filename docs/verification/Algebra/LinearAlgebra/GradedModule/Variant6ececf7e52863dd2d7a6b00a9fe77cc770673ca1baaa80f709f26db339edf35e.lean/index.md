# Verification target: GRWTSK.Algebra.LinearAlgebra.GradedModule.Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91e946d82f5e896cbeab689250bb5e52a32bae6c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91e946d82f5e896cbeab689250bb5e52a32bae6c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gdistribmulaction--6db4eecdffecdb3b69c958d4.md) | 35 | `declaration-track:6db4eecdffecdb3b69c958d440b6361532af49444bb29547bbccd2553aa2850a` |
| 2 | `class` | [Gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gmodule--2eb2777b5375d274c02b4484.md) | 41 | `declaration-track:2eb2777b5375d274c02b4484ded590f3c192b0cb168323cd2eb9efffb0c930b4` |
| 3 | `instance` | [GSemiring.toGmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gsemiring-togmodule--271a746d339cfa42299f260e.md) | 47 | `declaration-track:271a746d339cfa42299f260ec4f283ae31e6baa4b41543e8f8183195df17cf92` |
| 4 | `def` | [gsmulHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gsmulhom--943e57f7d154278ead7eb1f4.md) | 59 | `declaration-track:943e57f7d154278ead7eb1f4d8f7f03be93d37bce86635232da20c5f3c8cb9cd` |
| 5 | `def` | [smulAddMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/smuladdmonoidhom--c3c788c9f30ab513bdbbf1a8.md) | 71 | `declaration-track:c3c788c9f30ab513bdbbf1a81bc023c3c0c2672568d4a6ad97d591821eed82d5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/instance--7501d1d1d1b23a5934eb323d.md) | 81 | `declaration-track:7501d1d1d1b23a5934eb323de7cec3112a4c0bbb8b0ffd2545cf74024facac08` |
| 7 | `theorem` | [smul_def](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/smul-def--c25d3076c3fab251b6f70f6c.md) | 86 | `result-track:c25d3076c3fab251b6f70f6c38dbe15ca6f8bf6b1c173f0f9512d53a57505239` |
| 8 | `theorem` | [smulAddMonoidHom_apply_of_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/smuladdmonoidhom-apply-of-of--f437261d1c99d390821821bd.md) | 91 | `result-track:f437261d1c99d390821821bdb87512290dd32d540ec4697e4d1b6cedaa23e850` |
| 9 | `theorem` | [of_smul_of](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/of-smul-of--61c6e6a8eb52cda0c5d908ba.md) | 96 | `result-track:61c6e6a8eb52cda0c5d908ba47478dfc63aaee88fa9b27750dc273fdbc8e2b9e` |
| 10 | `theorem` | [one_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/one-smul--550a499e21b712fe95a23596.md) | 103 | `result-track:550a499e21b712fe95a235967d031c101a2b19547d9092232333d27fe0901fd6` |
| 11 | `theorem` | [mul_smul'](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/mul-smul--a7d3f15294045d6ccb37a1c7.md) | 113 | `result-track:a7d3f15294045d6ccb37a1c7c1b2faa36e9621ecfd3557c4eb78f94237e62af2` |
| 12 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/module--d5a1e1856f37fad3def45653.md) | 134 | `declaration-track:d5a1e1856f37fad3def456539d5d12ee748687e3f2be2b5b7a1fcf2cfb2c2494` |
| 13 | `instance` | [gmulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gmulaction--46d671011c8449effe33c806.md) | 161 | `declaration-track:46d671011c8449effe33c806ea25ba3b9186d06895cc21c78d1da130c9f41093` |
| 14 | `instance` | [gdistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gdistribmulaction--55309f369705f5e3b3c08b2b.md) | 168 | `declaration-track:55309f369705f5e3b3c08b2ba9005c96e65936bc2cc0c903fff4e7e0c76e01f3` |
| 15 | `instance` | [gmodule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/gmodule--5e2bd8b482adc724de9a5258.md) | 180 | `declaration-track:5e2bd8b482adc724de9a5258e69be98d33f8ec9d5d13e36b0156ac3e49737ad3` |
| 16 | `def` | [isModule](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/ismodule--2787849a13652cf1d33ed332.md) | 196 | `declaration-track:2787849a13652cf1d33ed332cc85da823371dc106d7a895d6f983f8505ad4f93` |
| 17 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GradedModule/Variant6ececf7e52863dd2d7a6b00a9fe77cc770673ca1baaa80f709f26db339edf35e.lean/declarations/linearequiv--846394204332b38d179c4fac.md) | 203 | `declaration-track:846394204332b38d179c4fac2e560a9ee9169076e638391366d6e654af7f73a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
