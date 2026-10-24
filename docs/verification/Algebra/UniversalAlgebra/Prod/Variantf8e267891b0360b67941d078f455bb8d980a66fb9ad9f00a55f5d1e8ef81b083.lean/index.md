# Verification target: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9b56d44cecda343b060b49c1120f570932d9ad3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9b56d44cecda343b060b49c1120f570932d9ad3`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [algebra](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/algebra--f34ba70cd306c3c29ff6208f.md) | 35 | `declaration-track:f34ba70cd306c3c29ff6208f8c9524f5e01ea38f44e93112b3d1a670d8d80815` |
| 2 | `theorem` | [algebraMap_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/algebramap-apply--16465cac94ecd74fd365689a.md) | 49 | `result-track:16465cac94ecd74fd365689a7efce96416e36128d1365bc7b625b075d246bd5d` |
| 3 | `def` | [fst](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/fst--07f3abeddcd4b40c199fb3ad.md) | 59 | `declaration-track:07f3abeddcd4b40c199fb3adac5c018d62af7d656322a33c756551ab436fedc7` |
| 4 | `def` | [snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/snd--81be5ee1880268aeaa50c18a.md) | 63 | `declaration-track:81be5ee1880268aeaa50c18a98a15208e034b68cb5f0105bd7638b4334e74c43` |
| 5 | `theorem` | [fst_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/fst-apply--52626336ef1fcb3232457256.md) | 69 | `result-track:52626336ef1fcb3232457256bf88e5d9af2994a1f221c575fa0a309d277a2a72` |
| 6 | `theorem` | [snd_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/snd-apply--b37943d1386387ba0a69a943.md) | 72 | `result-track:b37943d1386387ba0a69a943620ab9c751a41d945e4296e8b9b7a93d91d365e8` |
| 7 | `def` | [prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/prod--1e0f608b38049f02c31614a9.md) | 78 | `declaration-track:1e0f608b38049f02c31614a95ec44614233b71df758eb64af47db42e2429bd25` |
| 8 | `theorem` | [coe_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/coe-prod--2e4df257a082bfee7f337de4.md) | 84 | `result-track:2e4df257a082bfee7f337de4569742e1fdf4543ca5285962507d67283d33a8cb` |
| 9 | `theorem` | [fst_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/fst-prod--151981a740438c4e639aa2ae.md) | 88 | `result-track:151981a740438c4e639aa2ae58299a6cd988f71419f1d5dba41acbc97028ce3f` |
| 10 | `theorem` | [snd_prod](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/snd-prod--a8b51767834a7a53a44fefd0.md) | 91 | `result-track:a8b51767834a7a53a44fefd0075b0b58d474e0a5621d7b2f70fb61701ee3d692` |
| 11 | `theorem` | [prod_fst_snd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/prod-fst-snd--7fa47cd6955fcdb747b36104.md) | 94 | `result-track:7fa47cd6955fcdb747b361045437785cb79e3882e91b4ec9fdd9ac3aa51b572b` |
| 12 | `theorem` | [prod_comp](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/prod-comp--11aed4af0631a3cae1f7dca5.md) | 96 | `result-track:11aed4af0631a3cae1f7dca5687c00dfcd2483bcc748fd84a8787ae6fb6382e5` |
| 13 | `def` | [prodEquiv](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/prodequiv--79f3229c7f79add6a5554572.md) | 103 | `declaration-track:79f3229c7f79add6a555457231e94b227c49eb83ca9f1c36768bb2bf37f1d3af` |
| 14 | `def` | [prodMap](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/prodmap--cf850d6e934f288c2d8d8f47.md) | 110 | `declaration-track:cf850d6e934f288c2d8d8f476a15ed51bcfd8c6abeabfe5e82e6b849e36bec6d` |
| 15 | `def` | [prodUnique](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/produnique--92619097ed7e533462f1500f.md) | 122 | `declaration-track:92619097ed7e533462f1500ffec2bd048dff98ac0e498f6fabe98a7518c138b1` |
| 16 | `def` | [uniqueProd](../../../../../mathematics/Algebra/UniversalAlgebra/Prod/Variantf8e267891b0360b67941d078f455bb8d980a66fb9ad9f00a55f5d1e8ef81b083.lean/declarations/uniqueprod--b3373d5903c5ac50288a19d6.md) | 132 | `declaration-track:b3373d5903c5ac50288a19d66daa588727d912f2ec970c4b62f9f8dff97166cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
