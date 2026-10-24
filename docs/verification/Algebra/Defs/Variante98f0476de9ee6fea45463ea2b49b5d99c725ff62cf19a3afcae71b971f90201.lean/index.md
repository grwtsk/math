# Verification target: GRWTSK.Algebra.Defs.Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7af0b1d75caaee32336ad9b11478f1106ec6732",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7af0b1d75caaee32336ad9b11478f1106ec6732`.

Source path: `GRWTSK/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Normal](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal--6fd5dd3e21d740ae48ee754a.md) | 39 | `declaration-track:6fd5dd3e21d740ae48ee754a8b321ecbe24def5fadbccdabcef08d546646eb59` |
| 2 | `theorem` | [Normal.isIntegral](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-isintegral--ca4172a746879b746efa6237.md) | 44 | `result-track:ca4172a746879b746efa6237fe60d5834e50a6d5a210c2314b83023d12127acf` |
| 3 | `theorem` | [Normal.splits](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-splits--3333156726c28f9c8300520e.md) | 47 | `result-track:3333156726c28f9c8300520ed73a7c31295110e1dc3342b28d5a1c8452ceeaec` |
| 4 | `theorem` | [normal_iff](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-iff--2959fa6d2a6b33a1bc0611b7.md) | 50 | `result-track:2959fa6d2a6b33a1bc0611b71fdf83a3d72a394ae11ef1d0b49076258a7921e0` |
| 5 | `theorem` | [Normal.out](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-out--df59d69a2a94ee724e971b6b.md) | 55 | `result-track:df59d69a2a94ee724e971b6b305e4e1b098d9dd911577141a8f62836fd013835` |
| 6 | `instance` | [normal_self](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-self--b24ab7a301706cc6e14b9f43.md) | 60 | `declaration-track:b24ab7a301706cc6e14b9f430c04bdea291a1bf939985df9c5a552d5ccf7a620` |
| 7 | `theorem` | [Normal.tower_top_of_normal](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-tower-top-of-normal--84fc7b1c208936d34166ff05.md) | 69 | `result-track:84fc7b1c208936d34166ff0548121c1738612a05250b06811ef3fca0272eb36d` |
| 8 | `theorem` | [AlgHom.normal_bijective](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/alghom-normal-bijective--3043e4516d5479199face7b9.md) | 80 | `result-track:3043e4516d5479199face7b94716b5899e41a62c75199d7f617ecfbb71ab29ea` |
| 9 | `theorem` | [Normal.of_algEquiv](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-of-algequiv--7222afcd1bf5b075bb707c4e.md) | 86 | `result-track:7222afcd1bf5b075bb707c4e7d2771b362da0ff592c44e02f4bd23ffce8668a4` |
| 10 | `theorem` | [AlgEquiv.transfer_normal](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-transfer-normal--81eb0ef7c05b88addfcb8092.md) | 92 | `result-track:81eb0ef7c05b88addfcb8092e3e54c91ae580b16310ba866628337e1611cfa06` |
| 11 | `theorem` | [restrictScalars_normal](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/restrictscalars-normal--4b50442621a12f6ef6add305.md) | 103 | `result-track:4b50442621a12f6ef6add305a9c3f6e3015ba88c5103c0f329b6193985ba9aac` |
| 12 | `def` | [AlgHom.restrictNormalAux](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/alghom-restrictnormalaux--f3536bc88fea271267ee84d8.md) | 120 | `declaration-track:f3536bc88fea271267ee84d85c9ad9d32a544b50077fb6e6e366ea9f41a6ad21` |
| 13 | `def` | [AlgHom.restrictNormal](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/alghom-restrictnormal--c9b82f62c163dee4913be94c.md) | 142 | `declaration-track:c9b82f62c163dee4913be94cd72a2eefb74aa58cd6d5d5e0a3da57eae0c2ce23` |
| 14 | `def` | [AlgHom.restrictNormal'](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/alghom-restrictnormal--4d694738b8fd00b647531144.md) | 148 | `declaration-track:4d694738b8fd00b64753114427793df09cbcff0ba99d17feb5ca894a5ad95b81` |
| 15 | `theorem` | [AlgHom.restrictNormal_commutes](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/alghom-restrictnormal-commutes--50607b501a445e53474db8d0.md) | 152 | `result-track:50607b501a445e53474db8d0df31740fb88a324ad6dc09aa0fd2213674b751a0` |
| 16 | `theorem` | [AlgHom.restrictNormal_comp](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/alghom-restrictnormal-comp--a2413659e9fc6abc2001ca61.md) | 158 | `result-track:a2413659e9fc6abc2001ca6197ebb8047012227eaf197d1733ca0810ef37847e` |
| 17 | `def` | [AlgEquiv.restrictNormal](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormal--497e809ea53362b94b5d5fde.md) | 164 | `declaration-track:497e809ea53362b94b5d5fdec065d6ad371f70766e2e43ae578767bef652afc1` |
| 18 | `theorem` | [AlgEquiv.restrictNormal_commutes](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormal-commutes--64d9740d775834bc04b4ae45.md) | 168 | `result-track:64d9740d775834bc04b4ae45ab1cf206c26a3c7a8579064f33e67cd737430f14` |
| 19 | `theorem` | [AlgEquiv.restrictNormal_trans](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormal-trans--52b5e6001e46d6ca1480b264.md) | 172 | `result-track:52b5e6001e46d6ca1480b2645aa41c20b77e1fef535fd027f0b457a6b9222210` |
| 20 | `def` | [AlgEquiv.restrictNormalHom](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormalhom--d69dd4d639752df09da41721.md) | 179 | `declaration-track:d69dd4d639752df09da417218b7344fad4b22e89d93d79bad83e4ec9563a92bb` |
| 21 | `lemma` | [AlgEquiv.restrictNormalHom_apply](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormalhom-apply--54c2c66d2376f87f14c2e1ee.md) | 182 | `result-track:54c2c66d2376f87f14c2e1ee46448d4340873012dc85e2ebe26e47ade1999516` |
| 22 | `def` | [Normal.algHomEquivAut](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/normal-alghomequivaut--50d405b0fcf9584874c9e0c3.md) | 191 | `declaration-track:50d405b0fcf9584874c9e0c3b279e7569ba75cad99fa04763d5572b3884c3287` |
| 23 | `theorem` | [AlgEquiv.restrictNormalHom_id](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormalhom-id--6d58d7965be06e8d43faa3ea.md) | 211 | `result-track:6d58d7965be06e8d43faa3ea545f5f63444b44d66e0706c19d213dc0b9389371` |
| 24 | `theorem` | [AlgEquiv.restrictNormalHom_comp](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormalhom-comp--45493f6ebf91f504424ead55.md) | 226 | `result-track:45493f6ebf91f504424ead55ed29afa732ec349247bb0a4f29fb3c9734e3ec59` |
| 25 | `theorem` | [AlgEquiv.restrictNormalHom_comp_apply](../../../../mathematics/Algebra/Defs/Variante98f0476de9ee6fea45463ea2b49b5d99c725ff62cf19a3afcae71b971f90201.lean/declarations/algequiv-restrictnormalhom-comp-apply--8572af06b357058f5652ae70.md) | 240 | `result-track:8572af06b357058f5652ae70fc538bc5f77b47ba3905e2a57a8d12266392450f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
