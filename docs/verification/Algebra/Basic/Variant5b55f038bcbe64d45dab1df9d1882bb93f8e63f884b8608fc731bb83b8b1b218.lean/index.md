# Verification target: GRWTSK.Algebra.Basic.Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca474abc6a7fb13c3e3fd9c1373f08e5a2eaf118",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca474abc6a7fb13c3e3fd9c1373f08e5a2eaf118`.

Source path: `GRWTSK/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean.json)

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
| 1 | `theorem` | [isLocalHom_id](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/islocalhom-id--55d45faa4afed60d2682fe4a.md) | 29 | `result-track:55d45faa4afed60d2682fe4a84a4e2e18595155086f5ebbbd3ee8c43b8ee1851` |
| 2 | `theorem` | [isLocalHom_toRingHom](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/islocalhom-toringhom--392105cf7082ce39de80cf68.md) | 34 | `result-track:392105cf7082ce39de80cf68cac6bb44b994615d8e129dcd382cc136db012443` |
| 3 | `theorem` | [RingHom.isLocalHom_comp](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/ringhom-islocalhom-comp--98af664633dbe7168cad70c7.md) | 39 | `result-track:98af664633dbe7168cad70c750a86282f3b7a95e88c0345478d30a4fa5cf0005` |
| 4 | `theorem` | [isLocalHom_of_comp](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/islocalhom-of-comp--2c05eec4cf517809512e3161.md) | 43 | `result-track:2c05eec4cf517809512e3161554a68223b9d539dcef29cbcfcc3feae51c1e3f6` |
| 5 | `theorem` | [RingHom.domain_isLocalRing](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/ringhom-domain-islocalring--e3ada9824d4a2c2c0a62a753.md) | 48 | `result-track:e3ada9824d4a2c2c0a62a753ec90a0d1804be79021d5361b02008cf19fa5749d` |
| 6 | `theorem` | [map_nonunit](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/map-nonunit--d9cadd7cf11aabf5c8bc80aa.md) | 66 | `result-track:d9cadd7cf11aabf5c8bc80aa0ba5ceb73c9aae7397c2ee9f51830e453f1cdbe3` |
| 7 | `theorem` | [local_hom_TFAE](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/local-hom-tfae--734ce13646acd70ab41073fd.md) | 80 | `result-track:734ce13646acd70ab41073fd32358b640b04281453f091e50a0e3557d1568b5e` |
| 8 | `lemma` | [maximalIdeal_comap](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/maximalideal-comap--240e649cd998429e1008b79f.md) | 95 | `result-track:240e649cd998429e1008b79f752dddd1be9198bec4b5ac74681762cc8a1079e5` |
| 9 | `theorem` | [map_maximalIdeal_le](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/map-maximalideal-le--fd9b5e8a0f05b3d4c06aed12.md) | 98 | `result-track:fd9b5e8a0f05b3d4c06aed1253f1f9a1f8013a0ec6c052e7fcc6f2b477069200` |
| 10 | `theorem` | [map_maximalIdeal_lt_top](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/map-maximalideal-lt-top--cd1d4469cdff9a6efcfd33f9.md) | 102 | `result-track:cd1d4469cdff9a6efcfd33f913bd62ffa5e266e7f6d495f3070d199e8e5e281a` |
| 11 | `theorem` | [of_surjective](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/of-surjective--ce067a505d4e0991e2b77c10.md) | 107 | `result-track:ce067a505d4e0991e2b77c10848599da9c7ecb70941eaa288d57a2224d33e5f8` |
| 12 | `lemma` | [_root_.IsLocalHom.of_surjective](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/root-islocalhom-of-surjective--198787a9ac26b70d2857c067.md) | 118 | `result-track:198787a9ac26b70d2857c067c9e4c53f913de409c4ad1caf917631785ee60545` |
| 13 | `theorem` | [surjective_units_map_of_local_ringHom](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/surjective-units-map-of-local-ringhom--99db211efbff09c097f1993b.md) | 129 | `result-track:99db211efbff09c097f1993be72318e98cf964efae24750b68f617428ae3217c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/instance--8406c9041ddbb52153dbd585.md) | 141 | `declaration-track:8406c9041ddbb52153dbd585aa37bd9ac17dd1cc49266bb94b2dcdd1eaa6ff6e` |
| 15 | `lemma` | [map_maximalIdeal_of_surjective](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/map-maximalideal-of-surjective--c42deecfaa4929b6c84d601c.md) | 145 | `result-track:c42deecfaa4929b6c84d601c70a615d21da6035b15cd1439fed319fde42be23c` |
| 16 | `lemma` | [map_ringEquiv_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/map-ringequiv-maximalideal--457f8384d52a660c499acbc6.md) | 151 | `result-track:457f8384d52a660c499acbc646b08a88a93859b55146e688c9004fa997fef8a0` |
| 17 | `theorem` | [isLocalRing](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/islocalring--e0b88f04c93409b5af3ea5a9.md) | 159 | `result-track:e0b88f04c93409b5af3ea5a904306b0abd93a37f162c4eb1afb4762164c1a7ec` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5b55f038bcbe64d45dab1df9d1882bb93f8e63f884b8608fc731bb83b8b1b218.lean/declarations/instance--cc5f81db14c4d25b744e94d2.md) | 166 | `declaration-track:cc5f81db14c4d25b744e94d2e46db1a6de38a3d580387cfeeb9af9e5b4e23382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
