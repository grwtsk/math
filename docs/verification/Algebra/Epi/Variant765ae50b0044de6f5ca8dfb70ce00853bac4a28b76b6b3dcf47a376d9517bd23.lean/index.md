# Verification target: GRWTSK.Algebra.Epi.Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1176fe4accf50eee8a5e1f0a6afd72252001fb01",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/index.md) · [Full source](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1176fe4accf50eee8a5e1f0a6afd72252001fb01`.

Source path: `GRWTSK/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean.json)

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
| 1 | `class` | [IsEpi](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/isepi--b277fef0098815a63f53f2e9.md) | 37 | `declaration-track:b277fef0098815a63f53f2e9376e9b9bb4818b617d7bdeaa577e9b4e1e057019` |
| 2 | `lemma` | [isEpi_iff_forall_one_tmul_eq](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/isepi-iff-forall-one-tmul-eq--4b44b7190841131e348ffc7d.md) | 41 | `result-track:4b44b7190841131e348ffc7dacbc18b39998554ae6f050bf87310964e225cdd4` |
| 3 | `lemma` | [isEpi_of_surjective_algebraMap](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/isepi-of-surjective-algebramap--9fe366a74e040738b3e659c9.md) | 60 | `result-track:9fe366a74e040738b3e659c98768b79cdb38944c03f8c39c84427f6011e29dbd` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/instance--963481cf51e412d6b09e6d4e.md) | 69 | `declaration-track:963481cf51e412d6b09e6d4e7ea9c2f725b924daaf63f6f28cf6a0539e4c5152` |
| 5 | `lemma` | [isEpi_iff_surjective_algebraMap_of_finite](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/isepi-iff-surjective-algebramap-of-finite--2f35d2419c96e5937035c368.md) | 86 | `result-track:2f35d2419c96e5937035c368a3febb5a3b8e51153d6526d6a097f0723598b36a` |
| 6 | `lemma` | [tmul_comm](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/tmul-comm--7a8ece7fa02615d745ef6878.md) | 115 | `result-track:7a8ece7fa02615d745ef68782261a806f2e410cc99335a07fdbf426f962b27d7` |
| 7 | `lemma` | [injective_lift_lsmul](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/injective-lift-lsmul--32a493890b1c6cdbacaa848d.md) | 129 | `result-track:32a493890b1c6cdbacaa848dac1552db843931ffbe020625eca6ca61fa66a4ab` |
| 8 | `def` | [_root_.GRWTSK.Algebra.IsEpi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.TensorProduct.lid'](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/root-grwtsk-algebra-isepi-variant2f19ce6e3153a8c16b12c4d77db111f7380b71e--1062490b5742f5bb46f959d6.md) | 161 | `declaration-track:1062490b5742f5bb46f959d642a029d60889b7e69b016322b490e3932e4a473d` |
| 9 | `lemma` | [_root_.GRWTSK.Algebra.IsEpi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.TensorProduct.lid'_apply_tmul](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/root-grwtsk-algebra-isepi-variant2f19ce6e3153a8c16b12c4d77db111f7380b71e--257d0307f2b48fc90995e2db.md) | 166 | `result-track:257d0307f2b48fc90995e2db021d26de37b12859c555cdff037847bc465ef31b` |
| 10 | `lemma` | [_root_.GRWTSK.Algebra.IsEpi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.TensorProduct.lid'_symm_apply](../../../../mathematics/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/declarations/root-grwtsk-algebra-isepi-variant2f19ce6e3153a8c16b12c4d77db111f7380b71e--4ca2d68d90dc03ef16d88d1e.md) | 170 | `result-track:4ca2d68d90dc03ef16d88d1e519f44349264fc2d6d56cc3b07dd8c88b88d9aec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
