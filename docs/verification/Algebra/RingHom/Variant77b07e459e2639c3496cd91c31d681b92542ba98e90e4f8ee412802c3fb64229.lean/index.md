# Verification target: GRWTSK.Algebra.RingHom.Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca97dd5f734a58b632a3d0c973775ea8741b1450",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca97dd5f734a58b632a3d0c973775ea8741b1450`.

Source path: `GRWTSK/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean.json)

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
| 1 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/liftringhom--b3516d0afb637db93a410013.md) | 48 | `declaration-track:b3516d0afb637db93a4100135604ba2236af177c631e6cf7463eea4e6d30283b` |
| 2 | `theorem` | [of_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/of-liftringhom--7d9a5b0c970f253f70501bf0.md) | 53 | `result-track:7d9a5b0c970f253f70501bf06c2cee0c9f6f5f146191bf1b2adb234197ab22ac` |
| 3 | `theorem` | [ofAlgEquiv_comp_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/ofalgequiv-comp-liftringhom--e4fa1218f4dee338f6a8c1a0.md) | 58 | `result-track:e4fa1218f4dee338f6a8c1a0cd0fe9bc2889232cef147567bfa96f9f64779da0` |
| 4 | `theorem` | [mk_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/mk-liftringhom--858763a324b82b55c840fb4a.md) | 68 | `result-track:858763a324b82b55c840fb4acecf02b27158c80efcfef6d1336c17e77df2a149` |
| 5 | `theorem` | [mk_comp_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/mk-comp-liftringhom--19272fa04ca12879f9e126e7.md) | 75 | `result-track:19272fa04ca12879f9e126e7ca30430af12cbcd9f2cc23368be6a209823e6c0b` |
| 6 | `theorem` | [eq_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/eq-liftringhom--89d8bb498fc0e13ffd951d02.md) | 93 | `result-track:89d8bb498fc0e13ffd951d027a3b8f139de29cffe6aea13198a6e62c891e3e4e` |
| 7 | `def` | [liftAlgHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/liftalghom--b8f1d07d117a03d716c75436.md) | 108 | `declaration-track:b8f1d07d117a03d716c75436ec7a0469355437a91696570e3e8e68a86a8432b3` |
| 8 | `lemma` | [mk_liftAlgHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/mk-liftalghom--01692f3e219e9db0e68ca4ef.md) | 119 | `result-track:01692f3e219e9db0e68ca4effd9b85a82115d34eeea98996e40d751357d57fe0` |
| 9 | `lemma` | [mkₐ_comp_liftAlgHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/mk-comp-liftalghom--d3eece17b249aa19108895c2.md) | 123 | `result-track:d3eece17b249aa19108895c241270431d9ed96b3a0fc50569880cf2fab8a0363` |
| 10 | `lemma` | [algHom_ext](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/alghom-ext--a6680bc4566ddc1d8e9316d5.md) | 127 | `result-track:a6680bc4566ddc1d8e9316d5793e51fdeac35e28ab2e73d020ba5201a4227392` |
| 11 | `theorem` | [factorPow_comp_eq_of_factorPow_comp_succ_eq'](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/factorpow-comp-eq-of-factorpow-comp-succ-eq--c529c22fadc943e883ed017b.md) | 151 | `result-track:c529c22fadc943e883ed017b94ed65d9d4c7fe2d5a44d7d7f47134d0e4f01003` |
| 12 | `def` | [liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/liftringhom--33d443987eef923a9cd36e43.md) | 169 | `declaration-track:33d443987eef923a9cd36e4342edb80b74511013b5dafcbe3a9e4a58220f14d5` |
| 13 | `theorem` | [mk_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/mk-liftringhom--445d20b933eb792cab50dbf6.md) | 174 | `result-track:445d20b933eb792cab50dbf60c54b13a68f782ded98dec5faa2cc4a793a578e9` |
| 14 | `theorem` | [mk_comp_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/mk-comp-liftringhom--c7d6dada484600ca7fbfdc4e.md) | 180 | `result-track:c7d6dada484600ca7fbfdc4e3b8ddf19a759d971fa50c183e1e5c2b6849b886d` |
| 15 | `theorem` | [eq_liftRingHom](../../../../mathematics/Algebra/RingHom/Variant77b07e459e2639c3496cd91c31d681b92542ba98e90e4f8ee412802c3fb64229.lean/declarations/eq-liftringhom--aacd62b557d5c92cbc4004cd.md) | 184 | `result-track:aacd62b557d5c92cbc4004cd9b2a348af4c464e57475513bea59dc20339271e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
