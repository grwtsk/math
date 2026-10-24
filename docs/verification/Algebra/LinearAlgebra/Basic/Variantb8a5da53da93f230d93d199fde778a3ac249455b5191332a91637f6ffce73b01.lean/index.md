# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71aeb47f18cbeed6f8e30ec5d14863bbdbe4daa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71aeb47f18cbeed6f8e30ec5d14863bbdbe4daa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Adjugate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charmatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/charmatrix--fa0e89d6b5eee35c8f016206.md) | 55 | `declaration-track:fa0e89d6b5eee35c8f0162068b3cef70cc80bc6b50c1a38922b2b2e83d3f5f4d` |
| 2 | `theorem` | [charmatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/charmatrix-apply--abd658a985d27770b2c9dcbe.md) | 59 | `result-track:abd658a985d27770b2c9dcbe5eff5fdd3be13b9c73e70ae9ace31bdd88279b33` |
| 3 | `theorem` | [charmatrix_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/charmatrix-apply-eq--946bb97d2ecf1134e63e2715.md) | 65 | `result-track:946bb97d2ecf1134e63e271561ef6b7a0f8a242b70819ae4df78b3d9051eff58` |
| 4 | `theorem` | [charmatrix_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/charmatrix-apply-ne--d0b5f23027895fea677ae5f3.md) | 72 | `result-track:d0b5f23027895fea677ae5f33780451eeda2ba45e9f9b2ddd22deb39ea9b9a56` |
| 5 | `theorem` | [matPolyEquiv_charmatrix](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/matpolyequiv-charmatrix--e99d55c06c433854fccbccb7.md) | 78 | `result-track:e99d55c06c433854fccbccb7d116c20fb921f558bb83144578e39951d3b0a2ca` |
| 6 | `theorem` | [charmatrix_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/charmatrix-reindex--214373f8c9c301b105851fa4.md) | 90 | `result-track:214373f8c9c301b105851fa4e25f82676bc143ef2ebf3c6231b6162e2d231b4c` |
| 7 | `def` | [Matrix.charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/matrix-charpoly--ff704073c116aadacf966bf0.md) | 99 | `declaration-track:ff704073c116aadacf966bf096f1fbf11080eeece23d2715b78ac05a6320fb4b` |
| 8 | `theorem` | [Matrix.charpoly_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/matrix-charpoly-reindex--2a596aa4bde92e1fbf0efe3d.md) | 103 | `result-track:2a596aa4bde92e1fbf0efe3ded08e02e5e0ba3503018afb3a5c6bb5618ac5f0b` |
| 9 | `theorem` | [Matrix.aeval_self_charpoly](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantb8a5da53da93f230d93d199fde778a3ac249455b5191332a91637f6ffce73b01.lean/declarations/matrix-aeval-self-charpoly--656cc77cf01564418ff1c148.md) | 117 | `result-track:656cc77cf01564418ff1c1488a196d52cbdd28e65b9e4b68f04e4b1226c3d21c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
