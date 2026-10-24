# Verification target: GRWTSK.Algebra.LinearAlgebra.Action.Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b388a66f9f626cefad06cbe0dfbfd9e31c62480d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b388a66f9f626cefad06cbe0dfbfd9e31c62480d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--96c76a45be688d153a3d80e5.md) | 52 | `declaration-track:96c76a45be688d153a3d80e571d37a539c8cbfe7b547d0ea2aac48d19bfb600c` |
| 2 | `lemma` | [generalLinearGroup_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/generallineargroup-smul-def--73e53a2b308dfc3ab22d6460.md) | 60 | `result-track:73e53a2b308dfc3ab22d64609eae555da08926d8a95e950df17160b4384a4679` |
| 3 | `lemma` | [matrixSpecialLinearGroup_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/matrixspeciallineargroup-smul-def--26b8b0dd32b819a46a1f1cdc.md) | 64 | `result-track:26b8b0dd32b819a46a1f1cdca22d9ef199c8dafd0e43693cec7a2938e0c1c01f` |
| 4 | `lemma` | [smul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/smul-mk--aa2459b9e1b038fa153bc2e4.md) | 70 | `result-track:aa2459b9e1b038fa153bc2e4c6c4c4b5e73b7cf5aa22cf21d5b90a7bc5fcf74c` |
| 5 | `instance` | [linearEquiv_is_two_pretransitive](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/linearequiv-is-two-pretransitive--9dff3bcc0916d6e8421c47e1.md) | 79 | `declaration-track:9dff3bcc0916d6e8421c47e1308c8432fdfb7ceb570cde4c9d52f2b4652cff8f` |
| 6 | `instance` | [generalLinearGroup_is_two_pretransitive](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/generallineargroup-is-two-pretransitive--06dbff4986fa53a5766f4ed3.md) | 104 | `declaration-track:06dbff4986fa53a5766f4ed33b5619be07c995b36ede7c1cd8335821576836de` |
| 7 | `theorem` | [specialLinearGroup_smul_def](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/speciallineargroup-smul-def--d533a1da37ed77b807f4b0fb.md) | 124 | `result-track:d533a1da37ed77b807f4b0fb01e4a5b18f6eb14b1407beb7c56968d8eee922a1` |
| 8 | `instance` | [specialLinearGroup_is_two_pretransitive](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/speciallineargroup-is-two-pretransitive--b9cb333fdee62dd253bebe31.md) | 128 | `declaration-track:b9cb333fdee62dd253bebe3165a90a5d526723d9e91be44a84b19cb3fdc9b980` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--6eb8a3ef61eac7825e27b78a.md) | 181 | `declaration-track:6eb8a3ef61eac7825e27b78a711988ed9e37a97d1b98b361d4909136bbed51eb` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--c78efa849aebdb9a95badf35.md) | 186 | `declaration-track:c78efa849aebdb9a95badf35715418adb4006c5d62a28a36fb4ad97ad92c20d7` |
| 11 | `instance` | [prePrimitive_SL](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/preprimitive-sl--0459e7e0dc00bf58836bd6fe.md) | 194 | `declaration-track:0459e7e0dc00bf58836bd6fedb2babeeee5401d5f18f772733a48fce88373a74` |
| 12 | `lemma` | [SL_mulAction_ker](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/sl-mulaction-ker--0f5dcb925e7ff7f658912fce.md) | 197 | `result-track:0f5dcb925e7ff7f658912fce94b255f2bbd7d01e0fc210927acb267f071736c5` |
| 13 | `def` | [PSLAction.toPermHom](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/pslaction-topermhom--485d013d51c0c973594d2e3d.md) | 223 | `declaration-track:485d013d51c0c973594d2e3de37d53bb1b4c8192f260044ca3e06d2a56ba2d9a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--4b46b722a8f5d828f44fa634.md) | 227 | `declaration-track:4b46b722a8f5d828f44fa634f7cf44f8a5f107a1a2fdc024ef9a19c7e866a521` |
| 15 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroupSmulDef.Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.Matrix.ProjectiveSpecialLinearGroup.smul_proj_mk](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/root-grwtsk-algebra-linearalgebra-generallineargroupsmuldef-variant28f7c--0515b9e4e763c291f6653af5.md) | 230 | `result-track:0515b9e4e763c291f6653af56a935ad9570ec5a76a18fd457c3d07b0ba789ef5` |
| 16 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroupSmulDef.Variant28f7c48a505f2a49de077dd94561f2d93997e2dea1c491c4391e1e4381699335.Matrix.ProjectiveSpecialLinearGroup.toPermHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/root-grwtsk-algebra-linearalgebra-generallineargroupsmuldef-variant28f7c--5410e5aad30a2a9d1104cebe.md) | 233 | `result-track:5410e5aad30a2a9d1104cebe94f54fe2fa7b12a004737594595811539c8d3990` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--5d54633f9ca997b2e8094f36.md) | 241 | `declaration-track:5d54633f9ca997b2e8094f363154ef79f881a572e4ea6aa2440820756f1ace36` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--2c30be9f2b3dc31b93b9bc34.md) | 246 | `declaration-track:2c30be9f2b3dc31b93b9bc3497db8ae9caff1cc6b578e3b6a69a2e56f0476e35` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/instance--f51dd2035fc24016d5f7eee7.md) | 255 | `declaration-track:f51dd2035fc24016d5f7eee7e7f95b50346d51540b8793c698c51b666b65c9cc` |
| 20 | `lemma` | [PGL.mk_smul_mk](../../../../../mathematics/Algebra/LinearAlgebra/Action/Variant5163ec36756dfe5edad38d0ea5bae32282e9c05c9eb8c8769f137d89f9480bd3.lean/declarations/pgl-mk-smul-mk--52827c6e35e76116cb72811a.md) | 261 | `result-track:52827c6e35e76116cb72811ae7628c591f8fd6658b9a5ab599cfc82a75d131b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
