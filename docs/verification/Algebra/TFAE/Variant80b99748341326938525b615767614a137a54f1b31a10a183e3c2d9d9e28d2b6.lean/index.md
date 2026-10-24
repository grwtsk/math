# Verification target: GRWTSK.Algebra.TFAE.Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md) · [Full source](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56c03acf7009e6b550e52ff6b48b1bc9fb1d1666`.

Source path: `GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean.json)

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
| 1 | `theorem` | [exists_maximalIdeal_pow_eq_of_principal](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/exists-maximalideal-pow-eq-of-principal--02f12662658fee0b959604bf.md) | 40 | `result-track:02f12662658fee0b959604bf396c04c7b1f7d552a585e0b92e7fadb5db993c0b` |
| 2 | `theorem` | [maximalIdeal_isPrincipal_of_isDedekindDomain](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/maximalideal-isprincipal-of-isdedekinddomain--ecbe95700029a4668efa3dc3.md) | 95 | `result-track:ecbe95700029a4668efa3dc3e51fd3925997b9b23af34ad8d5591cc6a8f29028` |
| 3 | `theorem` | [tfae_of_isNoetherianRing_of_isLocalRing_of_isDomain](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/tfae-of-isnoetherianring-of-islocalring-of-isdomain--6de9d579ba48daa4fb5ee74b.md) | 168 | `result-track:6de9d579ba48daa4fb5ee74beb708df1c560de861569bb2762fba7e4ef1a1e6d` |
| 4 | `theorem` | [IsDiscreteValuationRing.TFAE](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/isdiscretevaluationring-tfae--976cf26ed3cb728b3be62785.md) | 210 | `result-track:976cf26ed3cb728b3be627856e70549d59cd9f5e2ce22a3fe3151b1ef7644126` |
| 5 | `lemma` | [IsLocalRing.finrank_CotangentSpace_eq_one_iff](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/islocalring-finrank-cotangentspace-eq-one-iff--e5a8af089904d2308a3eda28.md) | 229 | `result-track:e5a8af089904d2308a3eda284fc42853833099bec1bceaea3fef04f0e5320c5f` |
| 6 | `lemma` | [IsLocalRing.finrank_CotangentSpace_eq_one](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/islocalring-finrank-cotangentspace-eq-one--92c775d362aa5524a5ce01db.md) | 239 | `result-track:92c775d362aa5524a5ce01db570946594314a406b54638d628747a22bec2a77b` |
| 7 | `lemma` | [IsDiscreteValuationRing.ringKrullDim_eq_one](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/isdiscretevaluationring-ringkrulldim-eq-one--78d64e1baf68ed0fac188154.md) | 244 | `result-track:78d64e1baf68ed0fac1881544571166db2592c3bd8cd188a3b548df1ee8facb7` |
| 8 | `lemma` | [IsDiscreteValuationRing.not_krullDimLE_zero](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/isdiscretevaluationring-not-krulldimle-zero--7647560828209b970be12503.md) | 252 | `result-track:7647560828209b970be125032e8947a868d06bf93d4e46885cdca28bd839cd2b` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/instance--3475c9009af239d2b690e961.md) | 257 | `declaration-track:3475c9009af239d2b690e961c121e96859b763eb13f43be6234e787592e8d428` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/declarations/instance--d875d2a3ca175057e19bb9f9.md) | 260 | `declaration-track:d875d2a3ca175057e19bb9f90ace2817abd16fb2858498d609ddbb678fc1232b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
