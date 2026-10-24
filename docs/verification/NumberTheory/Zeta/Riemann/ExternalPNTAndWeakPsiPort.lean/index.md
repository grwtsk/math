# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndWeakPsiPort

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eefb528165ad0cc8bbf186f331e60fbfa5d50f18",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eefb528165ad0cc8bbf186f331e60fbfa5d50f18`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndChebyshevThetaPort`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndChebyshevThetaPort.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExternalPNTAndWeakPsiRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/externalpntandweakpsirecord--d8681c9755198b77205511c8.md) | 54 | `declaration-track:d8681c9755198b77205511c84385886d97e56d148c199d974c0c23f41c527b8f` |
| 2 | `def` | [externalPNTAndWeakPsiSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/externalpntandweakpsisource--f8a7d571958f85d1e932dbdf.md) | 67 | `declaration-track:f8a7d571958f85d1e932dbdf13bf74949a0733bd312d3638bd0495505c5ba629` |
| 3 | `def` | [externalPNTAndInclusiveMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/externalpntandinclusivemangoldt--2893145a4cd28b79d0ea2679.md) | 81 | `declaration-track:2893145a4cd28b79d0ea2679d732741e421d17ebf8330a4799e1dda80e63e004` |
| 4 | `theorem` | [externalPNTAndInclusiveMangoldt_eq_psi_natCast](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/externalpntandinclusivemangoldt-eq-psi-natcast--7604a07b756a6bc6cd26d62e.md) | 86 | `result-track:7604a07b756a6bc6cd26d62ef554d16fdf69e82b5bb3e312bfdd6a39c26f4899` |
| 5 | `def` | [ExternalPNTAndWeakPNTInclusive](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/externalpntandweakpntinclusive--d8f654260f2fa5edd9d646c8.md) | 100 | `declaration-track:d8f654260f2fa5edd9d646c8475e7ff9966786339f3cc5082cd10a7253e1af32` |
| 6 | `theorem` | [chebyshevSqrt_isLittleO_id](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/chebyshevsqrt-islittleo-id--fdded64c5941e34bb7629101.md) | 107 | `result-track:fdded64c5941e34bb762910142007587a9b9fa613937fb6d9b4d8b820d92de4a` |
| 7 | `theorem` | [externalPNTAndWeakInclusive_to_thetaPNT](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/externalpntandweakinclusive-to-thetapnt--68d813d41c539c16f368ea5a.md) | 128 | `result-track:68d813d41c539c16f368ea5af68c9bcd1610145606bfa49b47661168dedca258` |
| 8 | `theorem` | [no_integerPsiCapacity_of_externalWeakPNT](../../../../../mathematics/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/declarations/no-integerpsicapacity-of-externalweakpnt--e775240219f3d0196a994e2a.md) | 187 | `result-track:e775240219f3d0196a994e2ab326d35f840fc19eba88474e0d7aac8ffecaae14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
