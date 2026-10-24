# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Ring.Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powMulProdOneSubPow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/powmulprodonesubpow--25346a120dd1f3c4ee3a66c8.md) | 54 | `declaration-track:25346a120dd1f3c4ee3a66c82230fbcb1c206fcceb0da3c86f561e21181b9d61` |
| 2 | `def` | [aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/aux--185523bddcf458ed468fd93f.md) | 60 | `declaration-track:185523bddcf458ed468fd93fd510e7884fbaad16e100a86a554278bb5c27481a` |
| 3 | `theorem` | [aux_sub_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/aux-sub-aux--a8712bf937acfd868a0b1d3f.md) | 66 | `result-track:a8712bf937acfd868a0b1d3ff6caa83441e95252e88cd3bf0acc17e5c438d3a6` |
| 4 | `theorem` | [tsum_powMulProdOneSubPow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/tsum-powmulprodonesubpow--511ac1c6ed94ec1d3222b089.md) | 79 | `result-track:511ac1c6ed94ec1d3222b0896b1a91387de32af2bca9a1f284a4ced3f5b30df1` |
| 5 | `theorem` | [tprod_one_sub_pow_eq_powMulProdOneSubPow_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/tprod-one-sub-pow-eq-powmulprodonesubpow-zero--129138dc39d591a9ba1b4088.md) | 101 | `result-track:129138dc39d591a9ba1b4088ba1dadad9efa92618ddbcc230ff42d2e5e021147` |
| 6 | `theorem` | [tprod_one_sub_pow_eq_powMulProdOneSubPow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/tprod-one-sub-pow-eq-powmulprodonesubpow--6b4c658063249c3adfc2b577.md) | 126 | `result-track:6b4c658063249c3adfc2b577c65e1f80144aa3380f0079b217b405b5e63d835b` |
| 7 | `theorem` | [tprod_one_sub_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/declarations/tprod-one-sub-pow--3e7e7babdd0f546dac7a79ab.md) | 154 | `result-track:3e7e7babdd0f546dac7a79abf123b790051934101d4252f5bb36c1a0a981e80a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
