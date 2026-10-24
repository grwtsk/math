# Verification target: GRWTSK.Algebra.IsPrimary.Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf1763c8d108f7816c0b6eb525c1d5037c32a353",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf1763c8d108f7816c0b6eb525c1d5037c32a353`.

Source path: `GRWTSK/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IsPrimary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsPrimary](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/declarations/isprimary--a49c65c36ce464f53dd20e8b.md) | 37 | `declaration-track:a49c65c36ce464f53dd20e8b6fbe7a27abf2dbcec108fa23277ce86e4cabc155` |
| 2 | `lemma` | [isPrimary_iff](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/declarations/isprimary-iff--dd8e52227bdb871479486387.md) | 41 | `result-track:dd8e52227bdb87147948638783f0594307b2dd9c1f66347ab558ce032a0e4cf8` |
| 3 | `theorem` | [IsPrime.isPrimary](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/declarations/isprime-isprimary--86e00a29a51cb75bd3c206e9.md) | 47 | `result-track:86e00a29a51cb75bd3c206e974fe00fb8e4b3e9001a9c5609ef740f0d34a3eff` |
| 4 | `theorem` | [isPrime_radical](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/declarations/isprime-radical--95d8e488b1e38c42c8c35fc2.md) | 51 | `result-track:95d8e488b1e38c42c8c35fc22d19fffc92d8fb80f62c16b880d63868947f54d7` |
| 5 | `theorem` | [isPrimary_inf](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/declarations/isprimary-inf--64fe671117e04429a29019c2.md) | 58 | `result-track:64fe671117e04429a29019c2d5866d609542115f04cbc299e8e6468e51118fb2` |
| 6 | `lemma` | [isPrimary_finset_inf](../../../../mathematics/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/declarations/isprimary-finset-inf--a804288dbd26e5f589afa8f1.md) | 72 | `result-track:a804288dbd26e5f589afa8f1d56b48957855413baf9403e882c6bb5feec85d6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
