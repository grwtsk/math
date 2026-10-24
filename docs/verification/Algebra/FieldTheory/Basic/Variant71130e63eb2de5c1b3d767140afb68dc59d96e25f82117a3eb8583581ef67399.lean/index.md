# Verification target: GRWTSK.Algebra.FieldTheory.Basic.Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2264a8ba6b0778aef32b65a0189b604461540a01",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/index.md) · [Full source](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2264a8ba6b0778aef32b65a0189b604461540a01`.

Source path: `GRWTSK/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean.json)

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
| 1 | `def` | [logDeriv](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv--c723f1f5a4788579908d2f9e.md) | 37 | `declaration-track:c723f1f5a4788579908d2f9e77f659af7ed19a470a089c8aa1fe30ede10fcd3b` |
| 2 | `lemma` | [logDeriv_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-zero--bbbb8346e227c72d8fc9bb9d.md) | 40 | `result-track:bbbb8346e227c72d8fc9bb9de56cdb3cad9a24a19197b40c1353225e958395a9` |
| 3 | `lemma` | [logDeriv_one](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-one--351fc3cf13607cbfc2780bc9.md) | 44 | `result-track:351fc3cf13607cbfc2780bc93cc11a1aa2920b32986891a195847d97a75e4d73` |
| 4 | `lemma` | [logDeriv_mul](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-mul--3e20de3c85c8942c5126c7be.md) | 47 | `result-track:3e20de3c85c8942c5126c7be34b4e12554457891390a372b9179cbc823029310` |
| 5 | `lemma` | [logDeriv_div](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-div--23a19ebc4fb2fd03eccb201f.md) | 52 | `result-track:23a19ebc4fb2fd03eccb201fbdfc14ff75a9f233597906c0d91a96d55a0d08e7` |
| 6 | `lemma` | [logDeriv_pow](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-pow--48176b55b80e356e18d82377.md) | 57 | `result-track:48176b55b80e356e18d82377e0c0d2f7cc5ecf4df7d563aeba1b642d63413847` |
| 7 | `lemma` | [logDeriv_eq_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-eq-zero--1ebec27bbe9a9beba87b42d1.md) | 66 | `result-track:1ebec27bbe9a9beba87b42d1fbbc9b247bedd445e743b4453b43e5d724e82953` |
| 8 | `lemma` | [logDeriv_multisetProd](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-multisetprod--a902aba2ba7ec76fa1927b8c.md) | 70 | `result-track:a902aba2ba7ec76fa1927b8cfc0ded5e217994d4fb7bd81fbb1f6be73fc14dd3` |
| 9 | `lemma` | [logDeriv_prod](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-prod--05d4c73ba77d3f75e5d10971.md) | 82 | `result-track:05d4c73ba77d3f75e5d10971efb07205f3e00c331932b18aa1d17dcd5ac82db2` |
| 10 | `lemma` | [logDeriv_prod_of_eq_zero](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-prod-of-eq-zero--a1e12500806cc90083803b5b.md) | 85 | `result-track:a1e12500806cc90083803b5b707c777adacc155996403c87069814c86500c22a` |
| 11 | `lemma` | [logDeriv_algebraMap](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/logderiv-algebramap--dff432d2aa30752c3e0c56e7.md) | 90 | `result-track:dff432d2aa30752c3e0c56e7b740cdebc9aa802fa95d1f2d2c704b0056f932bf` |
| 12 | `lemma` | [_root_.GRWTSK.Algebra.FieldTheory.LogDeriv.Variantaa4bf7629bd2d5150494c3b1714f7058a2befb671b81bd1af3638bd9bb76bfb0.algebraMap.coe_logDeriv](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/root-grwtsk-algebra-fieldtheory-logderiv-variantaa4bf7629bd2d5150494c3b1--ed2ab3213f183fa61910b973.md) | 97 | `result-track:ed2ab3213f183fa61910b9730042e5f325f061f53fc5d0465d3e03905d8ecef0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/instance--c32d8c54650d819622f2e1b5.md) | 103 | `declaration-track:c32d8c54650d819622f2e1b5241ac6e55d5a11e752466357e495f8e302808524` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/instance--0b4235a639e6b785a9c168fa.md) | 129 | `declaration-track:0b4235a639e6b785a9c168faf469fbbd1d9026093e72359506c385332d88280b` |
| 15 | `def` | [differentialFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/differentialfinitedimensional--7c86fee2108316acfe6e576a.md) | 144 | `declaration-track:7c86fee2108316acfe6e576a7bd4fbdf4c76b58be68d945638c278545cbb3cc6` |
| 16 | `lemma` | [differentialAlgebraFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/differentialalgebrafinitedimensional--6c068123e1d18c38c83456dd.md) | 154 | `result-track:6c068123e1d18c38c83456ddac35df53aece7e1fb9f37d331307ae92dde63aa9` |
| 17 | `def` | [uniqueDifferentialAlgebraFiniteDimensional](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/uniquedifferentialalgebrafinitedimensional--126e4aec03b4b8de379ad3c9.md) | 169 | `declaration-track:126e4aec03b4b8de379ad3c9c10cc641ea7339e115428f3c0350d23d03a9316d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/instance--eb20bda58f05093b3f2e49a3.md) | 190 | `declaration-track:eb20bda58f05093b3f2e49a30d6a4d7010a9464f74e46474a6a068f1783a46cb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/instance--a81bee26b8b0ea8c56cdfebf.md) | 193 | `declaration-track:a81bee26b8b0ea8c56cdfebf45355be4d2f9220e0a98cefd1b3144c130bb3d1a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/FieldTheory/Basic/Variant71130e63eb2de5c1b3d767140afb68dc59d96e25f82117a3eb8583581ef67399.lean/declarations/instance--e1b4ca912207bb52eedbe8de.md) | 196 | `declaration-track:e1b4ca912207bb52eedbe8de814e82e4c8e08189e094e32a9349a4c5cd89d213` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
