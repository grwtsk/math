# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleWalshCylinder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fa626fa92ed25a1951617ede80a114be3543e27",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fa626fa92ed25a1951617ede80a114be3543e27`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.FiniteSum.WalshCylinder`](../../../../../mathematics/Analysis/FiniteSums/WalshCylinder.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Liouville` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouvilleParityBit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvilleparitybit--b80e1eb13582323b7349b40a.md) | 42 | `declaration-track:b80e1eb13582323b7349b40a6f95840eb31a5399d8a1b031c87b64e846081699` |
| 2 | `theorem` | [liouvilleParityBit_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvilleparitybit-zero--775f939e084428aa79821412.md) | 47 | `result-track:775f939e084428aa7982141273e9420b70d5f42b23bd34e11b7ba754a37882ab` |
| 3 | `theorem` | [liouville_zero_not_binary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouville-zero-not-binary--7586afc328ae2cdc74a7192a.md) | 53 | `result-track:7586afc328ae2cdc74a7192aa293c6711a99eee65e4703588aab3d4ed9ecdb6c` |
| 4 | `theorem` | [bitSign_liouvilleParityBit_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/bitsign-liouvilleparitybit-of-ne-zero--9edd035c5a8e519508fdf804.md) | 62 | `result-track:9edd035c5a8e519508fdf804e8905182ddeeab77afb930646ea2447db11ef521` |
| 5 | `def` | [liouvilleWindowBit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvillewindowbit--a79a56acd90ee1ef9aebfc81.md) | 74 | `declaration-track:a79a56acd90ee1ef9aebfc81d7e7cacad6639a77950f24daffad60391b0ccccf` |
| 6 | `theorem` | [bitSign_liouvilleWindowBit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/bitsign-liouvillewindowbit--a0a8794dc49fcfe3fc154218.md) | 79 | `result-track:a0a8794dc49fcfe3fc1542183648c53db632e7b3110166d9f75553ae36ffdcae` |
| 7 | `def` | [liouvilleFiniteMoment](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvillefinitemoment--8009feaba325055133970c89.md) | 87 | `declaration-track:8009feaba325055133970c89114619cc9116dc30f267f1060d78903473048d18` |
| 8 | `def` | [liouvillePatternCount](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvillepatterncount--667c1eb519bdc22dcae1e9a5.md) | 94 | `declaration-track:667c1eb519bdc22dcae1e9a57fafab3f3a7301c5b571b1c3b1618bbe74ac8bc5` |
| 9 | `theorem` | [finiteMoment_liouvilleWindowBit](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/finitemoment-liouvillewindowbit--c24c6e117f41a37a9cb4e73d.md) | 100 | `result-track:c24c6e117f41a37a9cb4e73dcd0aff5d0f7b2542a2315d7d2c733fefca6fc1c2` |
| 10 | `theorem` | [liouvilleFiniteMoment_empty](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvillefinitemoment-empty--0b9c6331288400fac5a398b4.md) | 114 | `result-track:0b9c6331288400fac5a398b427a902435ee0c8893459642710f538619506f162` |
| 11 | `theorem` | [liouvillePatternCount_walsh](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleWalshCylinder.lean/declarations/liouvillepatterncount-walsh--e68a3f5cd3839a34fa73bb23.md) | 123 | `result-track:e68a3f5cd3839a34fa73bb235058910a7709e251a6b6619c30d362ae506dd17e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
