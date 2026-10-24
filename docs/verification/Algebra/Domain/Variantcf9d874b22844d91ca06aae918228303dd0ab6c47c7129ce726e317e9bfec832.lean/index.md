# Verification target: GRWTSK.Algebra.Domain.Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3c3235ed4e54e6d62783a0f8053ed591ec3439c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/index.md) · [Full source](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3c3235ed4e54e6d62783a0f8053ed591ec3439c`.

Source path: `GRWTSK/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.Identities` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shift](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/shift--095b5bec07fed5eae6972740.md) | 55 | `declaration-track:095b5bec07fed5eae69727408cbbc4c27cbfdd91a7dbcd74f03edc68aef82cd1` |
| 2 | `theorem` | [shift_coeff](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/shift-coeff--5a63bc1cb23acf3283f2fd37.md) | 58 | `result-track:5a63bc1cb23acf3283f2fd37550c21121be14541d9f0d966249f970491c34196` |
| 3 | `theorem` | [verschiebung_shift](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/verschiebung-shift--69fb3caba7548b8a6aa0cfba.md) | 63 | `result-track:69fb3caba7548b8a6aa0cfbac8c930e646f9fb979e7a861a81e3f25adbd2e387` |
| 4 | `theorem` | [eq_iterate_verschiebung](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/eq-iterate-verschiebung--dbc354a7af92b60e15b51368.md) | 72 | `result-track:dbc354a7af92b60e15b51368efd7c19b21d494ae89d6bc11e4a5517335665dfe` |
| 5 | `theorem` | [verschiebung_nonzero](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/verschiebung-nonzero--bedabd05ca0ccb9fa8b3e9d9.md) | 80 | `result-track:bedabd05ca0ccb9fa8b3e9d9df3e79356ef8c240bb8bcbf450024379b5786ad7` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/instance--9dabec2aa9e07ad3373af13c.md) | 102 | `declaration-track:9dabec2aa9e07ad3373af13c94d5d623ad38f5f9283bd4cf9e20323957636958` |
| 7 | `instance` | [instIsDomain](../../../../mathematics/Algebra/Domain/Variantcf9d874b22844d91ca06aae918228303dd0ab6c47c7129ce726e317e9bfec832.lean/declarations/instisdomain--bbb5313ee1f3ecfb6c6f18a6.md) | 113 | `declaration-track:bbb5313ee1f3ecfb6c6f18a6944f946369614e692a2a0553a1b6aafb3e7d8f0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
