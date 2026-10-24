# Verification target: GRWTSK.Algebra.MPS.Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a52b211a8ba9b02bc5e1923e6aeba80615053ada",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/index.md) · [Full source](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a52b211a8ba9b02bc5e1923e6aeba80615053ada`.

Source path: `GRWTSK/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.State` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenMPS](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/openmps--4c72b9a31226f8b9a3f9aa7b.md) | 17 | `declaration-track:4c72b9a31226f8b9a3f9aa7bfde8a45a7f7df3a8bf591cb0253203cf4e3a2ee1` |
| 2 | `def` | [OpenMPS.contract](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/openmps-contract--6bbd08d150a0b41108ae9788.md) | 27 | `declaration-track:6bbd08d150a0b41108ae9788b9d0f2d6cd6e960234ec473773cf8455e573138c` |
| 3 | `def` | [ExactMPSRepresentation](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/exactmpsrepresentation--aebc6919245eb8a25275f535.md) | 39 | `declaration-track:aebc6919245eb8a25275f535bf2b9e8c1255581f8c4445a6e4b74adb8d972e15` |
| 4 | `def` | [tensorL1Distance](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/tensorl1distance--2cd098bdfa50ed34af97dd55.md) | 45 | `declaration-track:2cd098bdfa50ed34af97dd554b6123a1c703e86b9ea2c443fdca3aabe9e9142f` |
| 5 | `structure` | [ApproxMPSRepresentation](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/approxmpsrepresentation--620ff4efe6877f7d2beb5d54.md) | 51 | `declaration-track:620ff4efe6877f7d2beb5d540c211f7863bd04df023f5ac6999f7c3faecdc1b2` |
| 6 | `inductive` | [MPSRepresentationCertificate](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/mpsrepresentationcertificate--36606b3fe4e967dec55e8cf0.md) | 60 | `declaration-track:36606b3fe4e967dec55e8cf0b8abf09d42e558a241498e22278fd0140e8a7b2d` |
| 7 | `def` | [ExactMPSRepresentation.toApprox](../../../../mathematics/Algebra/MPS/Variante1a3f120581cb3e9c50d79421ee1bcb17397d95f00afc527a991dbc1973da148.lean/declarations/exactmpsrepresentation-toapprox--3d0649ee6cacd292dd1128d7.md) | 67 | `declaration-track:3d0649ee6cacd292dd1128d713bc575506e1aece4c691daa83082c2dd4935ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
