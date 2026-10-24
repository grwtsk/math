# Verification target: GRWTSK.Algebra.TensorProduct.Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1dd8f17aafb3b3317c7346db0943303199556b6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/index.md) · [Full source](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1dd8f17aafb3b3317c7346db0943303199556b6`.

Source path: `GRWTSK/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [baseChange](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/basechange--3ad464f87ee962a419623b26.md) | 37 | `declaration-track:3ad464f87ee962a419623b26be6bc3310969bc8d79b252d38d41b4cce6d3b986` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/instance--7f6577e08f3ebdb39bde055a.md) | 46 | `declaration-track:7f6577e08f3ebdb39bde055ada1af89309d54d53db897cb4744fe9f480c0c87e` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/instance--c677271402abf623337b9c28.md) | 49 | `declaration-track:c677271402abf623337b9c28b87c3b07ae7406d94b2d85878e9ae0ab386f26c3` |
| 4 | `lemma` | [coe_algebraMap_apply](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/coe-algebramap-apply--da7ed540b788307b34e3b6d1.md) | 52 | `result-track:da7ed540b788307b34e3b6d179f38e4fa7de74719fbce06e0a23592dfe235f4d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/instance--a7d9b249a89fb3341e948606.md) | 62 | `declaration-track:a7d9b249a89fb3341e94860638971458aac70687cf60d69a54f9a2a0acb5655d` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/instance--c4eb148963dbcc324a00e772.md) | 72 | `declaration-track:c4eb148963dbcc324a00e7724b322809541bc427e115acafe462c5e770ba1cad` |
| 7 | `lemma` | [algebraMap_apply](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/algebramap-apply--f9724b28a44fde36d707ad5c.md) | 75 | `result-track:f9724b28a44fde36d707ad5c645680b4860508afda77fc7e3cf8ab5f1471af05` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/instance--e3c879678a71ae697567c731.md) | 84 | `declaration-track:e3c879678a71ae697567c731cf84132be909fa964a664186ef80f527fb39efd1` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/instance--4b7f11aee135b050f366a715.md) | 94 | `declaration-track:4b7f11aee135b050f366a7156b68a91fe26fba33a93cf901bef7468a810f8255` |
| 10 | `def` | [liftEquiv](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/liftequiv--5d2dd09a44ebb1f632d49904.md) | 120 | `declaration-track:5d2dd09a44ebb1f632d49904fe421d3a1c3f0b393a1497c6e80df67c8e9853f5` |
| 11 | `lemma` | [liftEquiv_tmul](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/liftequiv-tmul--c884556dae87641a09337ad1.md) | 136 | `result-track:c884556dae87641a09337ad1ccba48a9c41fcd6e78d7fe6f0ba7db5b794fbadd` |
| 12 | `lemma` | [liftEquiv_symm_apply](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/liftequiv-symm-apply--f1a8442236660d2f0b511a02.md) | 139 | `result-track:f1a8442236660d2f0b511a025de907a8deb4767e007bfc96e0d69b442a5c2225` |
| 13 | `def` | [includeRight](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/includeright--971b302e5576f65fb3cf4f05.md) | 149 | `declaration-track:971b302e5576f65fb3cf4f05201e8a65ad5288b261a41f690fe961fa9f3e3510` |
| 14 | `lemma` | [includeRight_apply](../../../../mathematics/Algebra/TensorProduct/Variant5944f8598c7ec28547665791200dd2115d29f52e79872dc071d0e65611691cd4.lean/declarations/includeright-apply--b100007e33cba0ee1f378515.md) | 155 | `result-track:b100007e33cba0ee1f378515c83c2e7c4827fb5431dc2bfe47ba22828403f6c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
