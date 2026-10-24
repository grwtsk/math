# Verification target: GRWTSK.Algebra.Pointwise.Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96a47659c878a83c2f3af35a8260930664532be2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96a47659c878a83c2f3af35a8260930664532be2`.

Source path: `GRWTSK/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Subgroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Pointwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseMulAction](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwisemulaction--9cddbf2da405d9afe4e87740.md) | 46 | `declaration-track:9cddbf2da405d9afe4e877404f6e4085d5fa0b1e658cb50ebe13ac1cde4cca35` |
| 2 | `theorem` | [pointwise_smul_def](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-def--9194e9ed24e58e45be6e654c.md) | 56 | `result-track:9194e9ed24e58e45be6e654cc51864a0307d4a2fd5d8408801db5367182d0860` |
| 3 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/coe-pointwise-smul--86420d7a76bcdcdf00cace33.md) | 61 | `result-track:86420d7a76bcdcdf00cace33638e9f50ca7157b1a922384e8bb30925d54266ff` |
| 4 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-toaddsubgroup--51caa9195917a2a42573e66d.md) | 65 | `result-track:51caa9195917a2a42573e66d5611ef51b208a4a5b0d126ed5e72cfc50beab7ff` |
| 5 | `theorem` | [pointwise_smul_toSubsemiring](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-tosubsemiring--0b498ba3cc09bb1c91a1fedc.md) | 70 | `result-track:0b498ba3cc09bb1c91a1fedc2c0eb0892c3785c2d197942b77a160d85a43cef8` |
| 6 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/smul-mem-pointwise-smul--e56a6c8ff0274fb9b7bf9cab.md) | 74 | `result-track:e56a6c8ff0274fb9b7bf9cab81c7c4e5690ba02bb36dbd64b1bea8d3389383c8` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/instance--0f6224d53d6d0f56e8a8c8c2.md) | 77 | `declaration-track:0f6224d53d6d0f56e8a8c8c2a4a27c9af2e4308489bebb70f4ec2b41bd3dfc88` |
| 8 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/mem-smul-pointwise-iff-exists--9cc7e784a573876f13f61827.md) | 80 | `result-track:9cc7e784a573876f13f61827fc9eca1ef57ca0dec4ee11300c221af12843a32f` |
| 9 | `theorem` | [smul_bot](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/smul-bot--2aca99ced1f678ab44b0898f.md) | 85 | `result-track:2aca99ced1f678ab44b0898f986d54c5abc432d389213d98fdd2a90367100c4e` |
| 10 | `theorem` | [smul_sup](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/smul-sup--f26c02ccd57905796300f0c1.md) | 88 | `result-track:f26c02ccd57905796300f0c1bfdd0c27d032ee8657412d0c98326172a5687e8b` |
| 11 | `theorem` | [smul_closure](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/smul-closure--e9f4786192ab623c97595322.md) | 91 | `result-track:e9f4786192ab623c9759532205581fdfedad6b6851a926f10ca0e92d93cf4be3` |
| 12 | `instance` | [pointwise_central_scalar](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-central-scalar--088af239074ea9bd3776a31e.md) | 94 | `declaration-track:088af239074ea9bd3776a31eab9e106811a0241c07d84d211788e8e9e091e662` |
| 13 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/smul-mem-pointwise-smul-iff--7002b21ce1e08ddf21a60b59.md) | 107 | `result-track:7002b21ce1e08ddf21a60b59d3fd21852056473f02f770be914ebbcd4de1a22f` |
| 14 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--d44bb083bd1be6cc6a0dfb29.md) | 110 | `result-track:d44bb083bd1be6cc6a0dfb292d7d0968f86f3ad7737f065af7656797f0b32349` |
| 15 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/mem-inv-pointwise-smul-iff--4b02491595a9e3388bd91971.md) | 114 | `result-track:4b02491595a9e3388bd91971b835a90d2a11b6b43426400892dac01c17451fa4` |
| 16 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-le-pointwise-smul-iff--f4c8385ba6a32e9b768d7e99.md) | 118 | `result-track:f4c8385ba6a32e9b768d7e99752b1727710b91659568e2a76667708bc82b9145` |
| 17 | `theorem` | [pointwise_smul_subset_iff](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-subset-iff--86108d3bdf232855ba3535ea.md) | 121 | `result-track:86108d3bdf232855ba3535ea12b3741bb3a9ae0d331d72bd18ff1bcd0e88221a` |
| 18 | `theorem` | [subset_pointwise_smul_iff](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/subset-pointwise-smul-iff--49f68b69ee956cd460925f75.md) | 124 | `result-track:49f68b69ee956cd460925f75f69c37e9920ae2e02a7482f36729df9757f74959` |
| 19 | `theorem` | [smul_mem_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/smul-mem-pointwise-smul-iff--2bfdbda2c16d9b1b6fae9c30.md) | 139 | `result-track:2bfdbda2c16d9b1b6fae9c3076cdc4bc26de2403f9d16d41d4a9c404243fb816` |
| 20 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem₀](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem--a73f21174bf5f002e62347e8.md) | 143 | `result-track:a73f21174bf5f002e62347e8bcc6686873c2f9dc6939dde29ce7ea61d5780408` |
| 21 | `theorem` | [mem_inv_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/mem-inv-pointwise-smul-iff--11f165e3e7fcf3ae53cb521c.md) | 147 | `result-track:11f165e3e7fcf3ae53cb521c640029b842ae13161da998af9f85f96bc8a57cd4` |
| 22 | `theorem` | [pointwise_smul_le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-le-pointwise-smul-iff--3bf5278b99371ebbb77a39ec.md) | 152 | `result-track:3bf5278b99371ebbb77a39ecbe443de30e7905400d3bd982f66052baf4d062ed` |
| 23 | `theorem` | [pointwise_smul_le_iff₀](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/pointwise-smul-le-iff--6293f8a900f5f511e5b0607c.md) | 156 | `result-track:6293f8a900f5f511e5b0607cb68765028534699fd746510f070f361e23f0482f` |
| 24 | `theorem` | [le_pointwise_smul_iff₀](../../../../mathematics/Algebra/Pointwise/Variant1aaa5ccb13f27d15b905c336ba7e7005a31934a499732ef3171ba6c4c79cc1b8.lean/declarations/le-pointwise-smul-iff--9f64f50eef231ced8e8f4e7c.md) | 159 | `result-track:9f64f50eef231ced8e8f4e7c049896c77eff1586b3162a17c44ae5075c8bc7c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
