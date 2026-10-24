# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f751942735e94b8ad98135b407600e809176067",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f751942735e94b8ad98135b407600e809176067`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WeilCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeilTestSpace](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weiltestspace--695e72e5bc27f741e5713852.md) | 30 | `declaration-track:695e72e5bc27f741e5713852012b0e894eb6e1e20cd17eee10b3a41d339c63bd` |
| 2 | `abbrev` | [Vector](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/vector--43c51d1fcfa65c4bab7baf10.md) | 44 | `declaration-track:43c51d1fcfa65c4bab7baf104c30ad60e7dff981af5b549f8270c5b600708750` |
| 3 | `def` | [binding](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/binding--0365c1d49e6d39a6a1c4ca15.md) | 50 | `declaration-track:0365c1d49e6d39a6a1c4ca1580e6549de2609d2f109d9b460807da61b2fa9891` |
| 4 | `structure` | [WeilHermitianForm](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weilhermitianform--3ac952613dcb1e6c1eda35a8.md) | 62 | `declaration-track:3ac952613dcb1e6c1eda35a887cb31e732624ee75fae1a08401d330a2a5ebae5` |
| 5 | `def` | [diagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/diagonal--0f2682bf8997c4276e1818a2.md) | 80 | `declaration-track:0f2682bf8997c4276e1818a272c3d5511b130045dc2171f795542b0be41d6107` |
| 6 | `def` | [PositiveDiagonal](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/positivediagonal--5441c176b2aa993444fdc0fe.md) | 87 | `declaration-track:5441c176b2aa993444fdc0fe9b2d7105bfab16baf70f7afd5d3fb9fc942f9888` |
| 7 | `structure` | [WeilCriterionSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weilcriterionsource--e77ba80849228283f3821350.md) | 97 | `declaration-track:e77ba80849228283f3821350db995cb83aff67d81b6a49ab735d041f6532a0e2` |
| 8 | `structure` | [WeilPositivityImpliesRH](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weilpositivityimpliesrh--7df0f65327ffba478d252d8b.md) | 107 | `declaration-track:7df0f65327ffba478d252d8b6b48e276bc3073f727229232a848627aca793db2` |
| 9 | `structure` | [RHImpliesWeilPositivity](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/rhimpliesweilpositivity--cf9e351d50361d9c6875387c.md) | 116 | `declaration-track:cf9e351d50361d9c6875387ca90c533accfe1ab5f23dc35690db2e3aee4c1ff0` |
| 10 | `structure` | [WeilPositivityIffRH](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weilpositivityiffrh--f947893aedd6ded0bfa7b338.md) | 125 | `declaration-track:f947893aedd6ded0bfa7b338eaac4e785fa6eae6a93f3e6154f84f48a6ab6eaf` |
| 11 | `def` | [toForward](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/toforward--2e517e25606ea5ab991579c7.md) | 136 | `declaration-track:2e517e25606ea5ab991579c7b95fc973fa32042601124ff5624937e8f5b4103c` |
| 12 | `def` | [toReverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/toreverse--cc06d0a664c27527acd931cc.md) | 146 | `declaration-track:cc06d0a664c27527acd931ccb64c076b0e2c2c3fd795914824d03033a77840ee` |
| 13 | `def` | [WeilPositivityImpliesRH.localProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weilpositivityimpliesrh-localprofile--8bb6b5e10b52ecd3ebdee5eb.md) | 158 | `declaration-track:8bb6b5e10b52ecd3ebdee5eb8d33319c8909f6acf38fdb87180a3b8dc0e16721` |
| 14 | `def` | [WeilPositivityIffRH.localProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/weilpositivityiffrh-localprofile--dd570db34c226f2076de0cfd.md) | 166 | `declaration-track:dd570db34c226f2076de0cfd8ec6c74129f2fd36de0c6b1e98b9893c24567906` |
| 15 | `theorem` | [negativeWitness_of_not_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/negativewitness-of-not-rh--85e7a5515f86be7e618f5068.md) | 176 | `result-track:85e7a5515f86be7e618f50686b2fad1c8b3257368d0d1617d3180263bfbc016d` |
| 16 | `theorem` | [not_positiveDiagonal_of_negativeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/not-positivediagonal-of-negativewitness--1f9815c495be81770b729b4e.md) | 192 | `result-track:1f9815c495be81770b729b4e0f3985cde549fac075aa662f79c6b55236964d5d` |
| 17 | `theorem` | [not_rh_of_negativeWitness](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/not-rh-of-negativewitness--baed242c2bc44170049c5d39.md) | 202 | `result-track:baed242c2bc44170049c5d39e3c2823fc8ec98f97981e66b788876ef6bdac070` |
| 18 | `structure` | [PositiveNormalizationTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/positivenormalizationtransport--8697403f3c15888357fb9d81.md) | 213 | `declaration-track:8697403f3c15888357fb9d8170a26a24f1a728afda0aca54d5d4c0c9222dda5d` |
| 19 | `theorem` | [sourcePositive_of_repoPositive](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/sourcepositive-of-repopositive--d04d3efccae4d42be0e10f8f.md) | 233 | `result-track:d04d3efccae4d42be0e10f8f6854d8be058badc4174df8bff731c239b4b8789c` |
| 20 | `theorem` | [rh_of_repoPositive](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/rh-of-repopositive--4459847a5438bb416fc2a5c6.md) | 253 | `result-track:4459847a5438bb416fc2a5c6a688159485f74c63fe5d62da90c9f493da3c1e04` |
| 21 | `def` | [toCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/tocriterion--2f89780f3883f0fcece25af3.md) | 268 | `declaration-track:2f89780f3883f0fcece25af30a22076cd55883d58f32d4e2791b26a3d98f66ee` |
| 22 | `theorem` | [positiveScalar_preserves_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/positivescalar-preserves-nonnegative--7abf97a08f26c1d9fc1f8088.md) | 287 | `result-track:7abf97a08f26c1d9fc1f808895165e10a075ab54b25f593e1403d2ff148a3af5` |
| 23 | `theorem` | [negativeScalar_reverses_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilCriterion.lean/declarations/negativescalar-reverses-positive--695d0430a2face0d8e736829.md) | 294 | `result-track:695d0430a2face0d8e7368298581bd5eabaa02c8003d5002011d993806fb1e22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
