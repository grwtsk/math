# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatModuleNorm.Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b4b1d163692971bbc6b0eb454763e06a0fc7c11",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b4b1d163692971bbc6b0eb454763e06a0fc7c11`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.AC` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Int.LemmasAux` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.denoteN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/expr-denoten--b295c896464490cdb1c153d7.md) | 25 | `declaration-track:b295c896464490cdb1c153d7788e1b24026b7b957714ee5e47ad48520168827b` |
| 2 | `inductive` | [Poly.NonnegCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-nonnegcoeffs--7895a4a76f85e9bcf6459e35.md) | 32 | `declaration-track:7895a4a76f85e9bcf6459e3517a370c70ca9445f2b42895e40c8e272f4f7eba8` |
| 3 | `def` | [Poly.denoteN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten--b6a41b90cb351c3e56834aec.md) | 36 | `declaration-track:b6a41b90cb351c3e56834aecb65785649b29766e839c1b0180968d8b045776b4` |
| 4 | `theorem` | [Poly.denoteN_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-nil--0cfa2bf017fd9b14f2177a6a.md) | 45 | `result-track:0cfa2bf017fd9b14f2177a6a4599a598d0b2417a18efa85f5787edec50cc9790` |
| 5 | `theorem` | [Poly.denoteN_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-add--1b4aabe2bf66f80fb1b5963b.md) | 47 | `result-track:1b4aabe2bf66f80fb1b5963b55783e730a2ebdd8c90c5ab217777e8a8e01409b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/instance--63493692370ee71fd62f421a.md) | 60 | `declaration-track:63493692370ee71fd62f421a65b01a0df9cb59b51eb7984ae480ef92796181e8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/instance--5f2b2a9c168ed19e56cf1db5.md) | 63 | `declaration-track:5f2b2a9c168ed19e56cf1db568cb408920379552c2ea8fb9af293587f5b2a41b` |
| 8 | `theorem` | [Poly.denoteN_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-insert--205923be228cb5bfe6e40220.md) | 66 | `result-track:205923be228cb5bfe6e40220d1e5ded2d83eff629a7eafca49b05c20ae839e2f` |
| 9 | `theorem` | [Poly.denoteN_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-append--1dd1d9c3531d3361f3cb2419.md) | 85 | `result-track:1dd1d9c3531d3361f3cb2419d55725e9fb2dfeaad55b2ad3d9a7473461caef5b` |
| 10 | `theorem` | [Poly.denoteN_combine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-combine--98da962b982a67ff91ab56ad.md) | 93 | `result-track:98da962b982a67ff91ab56ad1e55609e6d8214f6bff97083533d74fd2cf2b30a` |
| 11 | `theorem` | [Poly.denoteN_mul'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-mul--f457e9edf04bba796e415038.md) | 117 | `result-track:f457e9edf04bba796e4150388346600e8b8ab055a79012bfa2cc3ff3b6a3fa4a` |
| 12 | `theorem` | [Poly.denoteN_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-denoten-mul--a9ed0b88a9b3e9d2edf46623.md) | 127 | `result-track:a9ed0b88a9b3e9d2edf466239e4f1804e9a317bc65eb3da703e3be4dad5fb158` |
| 13 | `def` | [Expr.toPolyN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/expr-topolyn--02be18484f1f7c353bc5aceb.md) | 133 | `declaration-track:02be18484f1f7c353bc5aceb79308a6152037f65c18e233b402523940c39f8a4` |
| 14 | `theorem` | [Poly.mul'_Nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-mul-nonneg--0faff0af52c7f672305e04df.md) | 140 | `result-track:0faff0af52c7f672305e04df04e2982f109ba4eedf2f072e299235e10905b562` |
| 15 | `theorem` | [Poly.mul_Nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-mul-nonneg--661e63dc1c8c5d6e74e08c33.md) | 151 | `result-track:661e63dc1c8c5d6e74e08c33c3426ded46bdeb03c77b0e93153ac91226da40de` |
| 16 | `theorem` | [Poly.append_Nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-append-nonneg--50feeffbcf03175b3eb1cc76.md) | 157 | `result-track:50feeffbcf03175b3eb1cc762b0d4a2f1b485d679a1901db0db0a7296bd19eab` |
| 17 | `theorem` | [Poly.combine_Nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/poly-combine-nonneg--632e898e327fe3b3bda7c68c.md) | 161 | `result-track:632e898e327fe3b3bda7c68c8f2402db696eabde919ed85c47ec9cb79320d646` |
| 18 | `theorem` | [Expr.toPolyN_Nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/expr-topolyn-nonneg--075ee204dcffc6c51435c592.md) | 181 | `result-track:075ee204dcffc6c51435c592b875e478ce694c3c62ce792906ece1b503364b30` |
| 19 | `theorem` | [Expr.denoteN_toPolyN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/expr-denoten-topolyn--cc6cdb7abc82757404e0bc46.md) | 187 | `result-track:cc6cdb7abc82757404e0bc4617106aef040d242190099586201c59e77aa1ea77` |
| 20 | `def` | [eq_normN_cert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/eq-normn-cert--b186c2e32973db81dc19fd6c.md) | 192 | `declaration-track:b186c2e32973db81dc19fd6ccff9014998516658224fa3764c7f75343421a9cb` |
| 21 | `theorem` | [eq_normN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatModuleNorm/Variantc65c6fb91ab2c71f954739214687d313512e56cfa942e3084bec5a11dcc3f777.lean/declarations/eq-normn--f214c1f3626d1fad0f5e18d3.md) | 195 | `result-track:f214c1f3626d1fad0f5e18d3101d765fbe01d5c3898ffa97a15a803c988e5e64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
