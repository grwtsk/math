# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37be5d4c9aae66bff018125ba51d070f776c17ae",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37be5d4c9aae66bff018125ba51d070f776c17ae`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean.json)

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
| 1 | `def` | [Submodule.IsHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/submodule-ishomogeneous--3cf7faa1a126682922b0d5be.md) | 60 | `declaration-track:3cf7faa1a126682922b0d5befda49b67af31eb7d7ee6bb87dbe51128a6750eb8` |
| 2 | `theorem` | [Submodule.IsHomogeneous.mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/submodule-ishomogeneous-mem-iff--00bdc9f84f899c606151df9d.md) | 64 | `result-track:00bdc9f84f899c606151df9d9c7e9d64f76900a36e2dd2fe5dbfe9b28d2e9e44` |
| 3 | `structure` | [HomogeneousSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule--2e02d218b42ed044da91600a.md) | 72 | `declaration-track:2e02d218b42ed044da91600adf4f7385e300d719fabefcf0a591c36c0b993547` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/instance--87273bfe46cbb856c2b7dd86.md) | 84 | `declaration-track:87273bfe46cbb856c2b7dd8688dd44cece49eb7b663799d3c77af2770340a46e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/instance--38556594fe589594178e223d.md) | 90 | `declaration-track:38556594fe589594178e223d00bbc11004a11318f8fe0757a63266ea22ea53ce` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/instance--6638bea95c78dd2282f69de5.md) | 92 | `declaration-track:6638bea95c78dd2282f69de5fb2b4363c62bd7fad0d3ab05b9ceb256e8363061` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/instance--18fcdf5ae4af1dab6adc8334.md) | 96 | `declaration-track:18fcdf5ae4af1dab6adc83346992e86d76ca224b451ec715ca367e1b68c55d90` |
| 8 | `theorem` | [HomogeneousSubmodule.isHomogeneous](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule-ishomogeneous--4d260d0c7b59de3876925f42.md) | 102 | `result-track:4d260d0c7b59de3876925f42076c278275342752363209dd6c9490a80ad15c45` |
| 9 | `theorem` | [HomogeneousSubmodule.toSubmodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule-tosubmodule-injective--0378a7ada302c3606a230f24.md) | 106 | `result-track:0378a7ada302c3606a230f24a15b62300f30f40767347bcec31efa2bf0a9c4ec` |
| 10 | `instance` | [HomogeneousSubmodule.setLike](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule-setlike--6534f86c7e9fa563bd4c49df.md) | 111 | `declaration-track:6534f86c7e9fa563bd4c49dfb39dab2c7043d48720558540212671aebb1423a1` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/instance--28afbe09427ce99e5ae2d2fb.md) | 115 | `declaration-track:28afbe09427ce99e5ae2d2fba21ab3bc90e467a1e60ceabb93983ffde9a43ec3` |
| 12 | `theorem` | [HomogeneousSubmodule.ext](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule-ext--d2b1c8bf7e39a8942969dd80.md) | 118 | `result-track:d2b1c8bf7e39a8942969dd807906374f1fd20abb38e5fdf0c640192002ffa667` |
| 13 | `theorem` | [HomogeneousSubmodule.ext'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule-ext--10960f6ed5ec4fc3fdbb5a1a.md) | 125 | `result-track:10960f6ed5ec4fc3fdbb5a1ae96dbb62878750f01327d23e47bdd3b1fd4ea5ea` |
| 14 | `theorem` | [HomogeneousSubmodule.mem_toSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variant3b85b05470f3023102690bb7b9ca86c1adb52f8c7a113c60707eff606e873c0b.lean/declarations/homogeneoussubmodule-mem-tosubmodule-iff--1851eb6671a38b14e4c36648.md) | 134 | `result-track:1851eb6671a38b14e4c36648dffb73ded78e60b6812334b85787374f3b079e5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
