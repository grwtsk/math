# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70035168672921bb310fbc88a83b7133bde10a4b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70035168672921bb310fbc88a83b7133bde10a4b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toAddSubmonoid_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/toaddsubmonoid-strictmono--86ed42c3c15d488632abf3b6.md) | 45 | `result-track:86ed42c3c15d488632abf3b666b95f05632ba0ffaff78513372308c4578d4c29` |
| 2 | `theorem` | [toAddSubmonoid_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/toaddsubmonoid-le--ea89f04060f5e2f2852de272.md) | 48 | `result-track:ea89f04060f5e2f2852de27262b40db256647470e04afd5264721c450d774869` |
| 3 | `theorem` | [toAddSubmonoid_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/toaddsubmonoid-mono--d3ea11a9c5fbb0fec4ff9100.md) | 52 | `result-track:d3ea11a9c5fbb0fec4ff9100af3811c80619e75d27c49a80d32ea394dc3e46f4` |
| 4 | `theorem` | [toSubMulAction_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/tosubmulaction-strictmono--7e942b3f6e25fa806d0a6128.md) | 56 | `result-track:7e942b3f6e25fa806d0a612864715e31a36dd36e4ace99856c16fc5ccb956ecc` |
| 5 | `theorem` | [toSubMulAction_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/tosubmulaction-mono--869afa43f4069f5a2f82d9c0.md) | 60 | `result-track:869afa43f4069f5a2f82d9c085ed1c645bb577bd3c6fe5986b84a720bba6d5c2` |
| 6 | `theorem` | [sum_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/sum-mem--ec7b8d06309d04beab8e1fc7.md) | 78 | `result-track:ec7b8d06309d04beab8e1fc7962e3187084bba5865e233af06dfefdea2fadd0e` |
| 7 | `theorem` | [sum_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/sum-smul-mem--3435aaf09bcc67e8fcf42fdd.md) | 81 | `result-track:3435aaf09bcc67e8fcf42fddf42c39dcffa6883e9faf17eebeeacf3f17ac9e06` |
| 8 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/iscentralscalar--3215b4b572237cd1cc70d215.md) | 85 | `declaration-track:3215b4b572237cd1cc70d2150178591e1459e004f76da96f359d2854283a2a3d` |
| 9 | `instance` | [noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/nozerosmuldivisors--0913c6acc07f80cd09729e54.md) | 89 | `declaration-track:0913c6acc07f80cd09729e5454677d1097d67daaea0c85e121d1abaf728e977c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/instance--7e1979c052c3f90617961f86.md) | 107 | `declaration-track:7e1979c052c3f90617961f86b93af6c1a0a44174802471cc65258bd2e77c817e` |
| 11 | `instance` | [vaddCommClass](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/vaddcommclass--c361691377b883f49dc06a6b.md) | 110 | `declaration-track:c361691377b883f49dc06a6b2b18c763cc222e7fc2359a26ffef8e937dd748a7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/instance--ec41fe2ddb318af390e460b9.md) | 113 | `declaration-track:ec41fe2ddb318af390e460b98f4d300f3a950e540df3f77cf7f68dbeef65456d` |
| 13 | `theorem` | [vadd_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/vadd-def--5b590f5235d210f238d15b2a.md) | 118 | `result-track:5b590f5235d210f238d15b2a507b71f406ebd46d5905fedb74c23eb407b37478` |
| 14 | `theorem` | [toAddSubgroup_strictMono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/toaddsubgroup-strictmono--e97bfd71fef856923da3e8b8.md) | 134 | `result-track:e97bfd71fef856923da3e8b8b3e84572e18fc00b3af5ee47c401f5cc67861452` |
| 15 | `theorem` | [toAddSubgroup_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/toaddsubgroup-le--0df8189517c196f22d705a7b.md) | 137 | `result-track:0df8189517c196f22d705a7b7448b09b8e6db0b12863a986727894e57c819916` |
| 16 | `theorem` | [toAddSubgroup_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/toaddsubgroup-mono--7d8deec2ba798460a4936bcd.md) | 141 | `result-track:7d8deec2ba798460a4936bcdb4ac2f497c55b8b7b4b7fe4cd7c15720d0ceaaf6` |
| 17 | `theorem` | [neg_coe](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/neg-coe--d3ca32a96437c61392156b1f.md) | 148 | `result-track:d3ca32a96437c61392156b1f6d9b1099ad40b8afa64d21f0cfda6dc52028a72c` |
| 18 | `theorem` | [notMem_of_ortho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/notmem-of-ortho--248f3f13922e788b579a1f9b.md) | 158 | `result-track:248f3f13922e788b579a1f9ba442c3907de12f395b0852b70e4a59845b11f231` |
| 19 | `theorem` | [ne_zero_of_ortho](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/ne-zero-of-ortho--6d91a85ce7d6bf951dfb5884.md) | 165 | `result-track:6d91a85ce7d6bf951dfb58846173a32702408a6b64bf646bca6fbb76046d841a` |
| 20 | `theorem` | [smul_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/smul-mem-iff--e186631eba4d973961e48f87.md) | 179 | `result-track:e186631eba4d973961e48f87b928e02c0c83b3654ca92d5ca86f9ec9dbc58b5c` |
| 21 | `abbrev` | [Subspace](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant7d9330c56e7a6d510e052dfef38b4a56d71ee92d74accea01015979af09a3328.lean/declarations/subspace--a3a176d903a989e405c6b941.md) | 185 | `declaration-track:a3a176d903a989e405c6b941312e654367aff16712ed388dab12715c71ab6787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
