# Verification target: GRWTSK.Geometry.Hodge.GlobalRationalHodgeStatement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d536ee14a0ac5fab97d6696b6d9212faeadb5907",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/GlobalRationalHodgeStatement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d536ee14a0ac5fab97d6696b6d9212faeadb5907`.

Source path: `GRWTSK/Geometry/Hodge/GlobalRationalHodgeStatement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/GlobalRationalHodgeStatement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../mathematics/Geometry/Hodge/RationalCycleCellular.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Index](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/index--3984c97a803bf5440cd269ec.md) | 11 | `declaration-track:3984c97a803bf5440cd269ec5de36a846767af6072bec922d10265bbfeb9a869` |
| 2 | `structure` | [Family](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/family--10aa4ac161db3e2bda33b5d2.md) | 21 | `declaration-track:10aa4ac161db3e2bda33b5d267cd6f9742707e435f536dbbdd814966e3a9a5d3` |
| 3 | `def` | [GlobalStatement](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/globalstatement--597c212faa3c80429672f66b.md) | 35 | `declaration-track:597c212faa3c80429672f66b35a7008a839ce18eabaa32a2e644fd5586af2921` |
| 4 | `def` | [localData](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/localdata--b450c45f1447679f8302a560.md) | 39 | `declaration-track:b450c45f1447679f8302a560795f17fa89c9264bf8389f1302b323b5792244f5` |
| 5 | `theorem` | [local_surjective](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/local-surjective--55219ccf446f94094c994b75.md) | 44 | `result-track:55219ccf446f94094c994b7506fb8b1fcfad26779fa720eb6a78378646883633` |
| 6 | `theorem` | [cycleWitness](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/cyclewitness--1fe6ba0e4db59b0a246a0325.md) | 50 | `result-track:1fe6ba0e4db59b0a246a032534612f801b872674c4b190599caeace4e8eaa4b7` |
| 7 | `structure` | [SourceBoundTheorem](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/sourceboundtheorem--477ff9dea398f5753e2d872b.md) | 59 | `declaration-track:477ff9dea398f5753e2d872bc15bdf0193d10ef0ef0eb8d274f906d862140b41` |
| 8 | `def` | [localTheorem](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/localtheorem--cbc3205244a2b248bcd7ee27.md) | 68 | `declaration-track:cbc3205244a2b248bcd7ee27aff4559152e66103df820164fc2a28ff316c98f1` |
| 9 | `theorem` | [cycleWitness](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/cyclewitness--5f619f92bc2cbfc6856f8e12.md) | 77 | `result-track:5f619f92bc2cbfc6856f8e12afd8a98bef2ec920067a9588b62170de9411f52b` |
| 10 | `def` | [identityFamily](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/identityfamily--750f0feab524c2cbb32ac41d.md) | 87 | `declaration-track:750f0feab524c2cbb32ac41db605c1042a2ddcc8dbfac1e733b5ab58383167e5` |
| 11 | `theorem` | [identityFamily_global](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/identityfamily-global--e7080fba291a060beec8d82c.md) | 96 | `result-track:e7080fba291a060beec8d82ce8d47032da4545a09695cdbab4d0b726c7aa1b14` |
| 12 | `def` | [identityGlobalTheorem](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/identityglobaltheorem--1d2496b3f8bd4fa7075103bd.md) | 101 | `declaration-track:1d2496b3f8bd4fa7075103bd0790a0b40e92b953dae8deca92bb4966bac03929` |
| 13 | `theorem` | [identity_local_surjective](../../../../mathematics/Geometry/Hodge/GlobalRationalHodgeStatement.lean/declarations/identity-local-surjective--9e4ea92368e4e2c5c9f0252f.md) | 110 | `result-track:9e4ea92368e4e2c5c9f0252f8279f5a108f388114c9e7d66d0e37989c45ea1e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
