# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueZero.Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdfd8c1733c6f2bb04ae400598292d37eb595bff",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdfd8c1733c6f2bb04ae400598292d37eb595bff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.ArgumentPrinciple` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasSimpleZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/hassimplezero--0cc6bb167e6a5e0aa0c1f6df.md) | 20 | `declaration-track:0cc6bb167e6a5e0aa0c1f6dfdc8e03e47bb124d6defb775db148c98cbfd17162` |
| 2 | `structure` | [UniqueZeroCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/uniquezerocertificate--c2cc2b80093be69dfffb4c46.md) | 26 | `declaration-track:c2cc2b80093be69dfffb4c46c67a66e9390d68a173c7dcc26a21d142f6c6e89f` |
| 3 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/zero--eb7c11e5ae890fad39f645e3.md) | 39 | `declaration-track:eb7c11e5ae890fad39f645e3bdaff22f35c74037b43c1508f2d307b9c3f34ec9` |
| 4 | `theorem` | [zero_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/zero-spec--b58fb226b5ccc6de2fa82147.md) | 54 | `result-track:b58fb226b5ccc6de2fa8214742550ef961ed555bac28e69052e30e61223505f9` |
| 5 | `theorem` | [zero_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/zero-mem--a0fc643a897c9c55b154d675.md) | 71 | `result-track:a0fc643a897c9c55b154d675da985ba2d81f4c586c3fae9d217715d2f548f7b7` |
| 6 | `theorem` | [xi_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/xi-zero--f54c227047a8c87e32c0ae02.md) | 82 | `result-track:f54c227047a8c87e32c0ae026809c8fb5fa0d239f645750d6a3dce06fed4868c` |
| 7 | `theorem` | [unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/unique--463869c9bf458eb51c2c72be.md) | 93 | `result-track:463869c9bf458eb51c2c72be8f6966d4e8dd3a37119971d9cead5d76d6bf7807` |
| 8 | `theorem` | [multiplicity_eq_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/multiplicity-eq-one--ae3593b4d2b85908c062a052.md) | 123 | `result-track:ae3593b4d2b85908c062a05273bb429dfed5f930f9110b01b3b7182d462e0e4d` |
| 9 | `theorem` | [simple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/simple--33fd069c78aeab86348706cf.md) | 161 | `result-track:33fd069c78aeab86348706cf0aa095360e7a0e0abd55a0ca7e3283457016cbb6` |
| 10 | `theorem` | [countOne_implies_unique_simple_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/countone-implies-unique-simple-zero--6fce1e452d7468899272a4e4.md) | 178 | `result-track:6fce1e452d7468899272a4e4cc941053d1b85694b9699f5df7e1437d18d1b502` |
| 11 | `theorem` | [uniqueZero_simple](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueZero/Variantf797319cf195e653ed435b3c5ea01a7b70c291bd8a4033d6235d83ddc9cee0e2.lean/declarations/uniquezero-simple--bbfbd84c8bcf29c4a207d208.md) | 206 | `result-track:bbfbd84c8bcf29c4a207d208a27e29c7f219ffe43310b022d23f10437ef416d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
