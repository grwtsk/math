# Verification target: GRWTSK.Algebra.SafePoly.Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/index.md) · [Full source](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a54bb16a5618a26f1fc0cab87c961d30aa7cc4c`.

Source path: `GRWTSK/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.EvalNum` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyChar](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/applychar--6d4567aedb260a0dff1d5a93.md) | 26 | `declaration-track:6d4567aedb260a0dff1d5a93c59f8666be3770c8ae3586f3bef12b87d5adb00b` |
| 2 | `def` | [addConst](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/addconst--e5c6f1a3cd15331303f9ce37.md) | 32 | `declaration-track:e5c6f1a3cd15331303f9ce375737cab0e6516e82cfbf313f27c5dbd4a41df402` |
| 3 | `def` | [mulConst](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/mulconst--28238f931d1ce4b2595db4d3.md) | 35 | `declaration-track:28238f931d1ce4b2595db4d33d8fec3e8d939b9282b1ef8ce4674bb1e80f5392` |
| 4 | `def` | [mulMon](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/mulmon--511ecf76b988db58a89408a6.md) | 38 | `declaration-track:511ecf76b988db58a89408a64fd30d96d01518c91d072f8607962e6f4797c884` |
| 5 | `def` | [combine](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/combine--4587338269cce03c476e0b03.md) | 41 | `declaration-track:4587338269cce03c476e0b03fcf8f1d8c22aed59a22533a34d0aa4a3c0b4809f` |
| 6 | `def` | [mul](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/mul--209425bc9e2c2325ff56d20f.md) | 57 | `declaration-track:209425bc9e2c2325ff56d20f039ad8921b5a4a63abc672d6c31f45beb1cc35b4` |
| 7 | `def` | [pow](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/pow--0dc30caa43583730ca5e2277.md) | 67 | `declaration-track:0dc30caa43583730ca5e2277ce01fb1d02b2a12a3d94e184e9b0ddb1a6950a74` |
| 8 | `def` | [toPoly](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/topoly--5267e4c1a4c8b974f1f5dacd.md) | 74 | `declaration-track:5267e4c1a4c8b974f1f5dacdd66ccc075aaf98153f18574ef2e2295a36596a27` |
| 9 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Expr.toPolyM?](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--18b1d05ce12cc44765a7bb57.md) | 97 | `declaration-track:18b1d05ce12cc44765a7bb57040a75fb24af732bb69978701778eeb59a89026f` |
| 10 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.mulConstM](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--d21f9c792558082697557edc.md) | 100 | `declaration-track:d21f9c792558082697557edc89dd352069c0b726db361e515afc51c3fff31e3c` |
| 11 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.mulMonM](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--ee9f86e8b8c029827d575657.md) | 103 | `declaration-track:ee9f86e8b8c029827d57565743c0c662295d6241324b874fea74e2eb396ed44b` |
| 12 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.mulM](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--28191aa09ae5141fee612ae5.md) | 106 | `declaration-track:28191aa09ae5141fee612ae5d99b202810aee54705adf73278ef6cdb6ada9170` |
| 13 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.combineM](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--349fbfe408215890f860c577.md) | 109 | `declaration-track:349fbfe408215890f860c57766773f90d7f1e551f8f49956901ebfb6c073726b` |
| 14 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.spolM](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--5822d2024cab93094f7ed5be.md) | 112 | `declaration-track:5822d2024cab93094f7ed5becd4d8000ccf28e82e2d9a4a8542a33daa4c03865` |
| 15 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Mon.findInvNumeralVar?](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--7f1a6be923c15be3a7ca0986.md) | 128 | `declaration-track:7f1a6be923c15be3a7ca09866dd74263bfa7d13b241402f16f7d13a023c44de5` |
| 16 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.findInvNumeralVar?](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--aa6f540429f56b4c4ecdb519.md) | 139 | `declaration-track:aa6f540429f56b4c4ecdb519ccb12afb5790fe91aa42b0c2171ec35c72c0771d` |
| 17 | `structure` | [SimpResult](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/simpresult--5b134e853a92458cf962fec6.md) | 152 | `declaration-track:5b134e853a92458cf962fec61df084de10e7b00be3a19916b43d2bf9b74c2b7c` |
| 18 | `def` | [_root_.GRWTSK.Algebra.SimpResult.Variant0bacb3263503365ec3b86ca1e41e6864d5d49dc1d53adeb5b216f9938e211e9a.Lean.Grind.CommRing.Poly.simpM?](../../../../mathematics/Algebra/SafePoly/Variant08d87b52cbd0600d6a5e59fc43654d4418740424f51e98f41939c4d2c212ec7a.lean/declarations/root-grwtsk-algebra-simpresult-variant0bacb3263503365ec3b86ca1e41e6864d5--a67d8afbf9db17a50e2433ce.md) | 173 | `declaration-track:a67d8afbf9db17a50e2433ce0bb603a08e8c5187c80d0f88becf9e09b99e51c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
