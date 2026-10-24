# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySectionJetEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "801e2dbabe8916a3c98f9547a2e3a64de03b8539",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `801e2dbabe8916a3c98f9547a2e3a64de03b8539`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetQuotient.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetCharts`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreySectionJetRing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/freysectionjetring--61e54d719b5ccbd6a313ed2d.md) | 19 | `declaration-track:61e54d719b5ccbd6a313ed2dbcae201c5fc4d26a3bacabcbd7865e9927850229` |
| 2 | `theorem` | [PrimitiveAdditiveTriple.freySectionJet_root](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjet-root--7079c2112c633b6de3440ab1.md) | 24 | `result-track:7079c2112c633b6de3440ab1ed1f7a567bc01b75598c6b97df9d5aa514162dcb` |
| 3 | `theorem` | [PrimitiveAdditiveTriple.freySectionJet_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjet-derivative--b6d35e40f50e46d99844e24b.md) | 30 | `result-track:b6d35e40f50e46d99844e24b48d1c0e267700b6b430e47777db139b35237589c` |
| 4 | `theorem` | [PrimitiveAdditiveTriple.freySectionJet_quadratic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjet-quadratic--9dbf2aeec593c6081ebb8955.md) | 40 | `result-track:9dbf2aeec593c6081ebb8955843a04f54ee31c50f4b1a66fcd5029b5ff737d07` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freySectionJet_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjet-inverse--c13d0041c8834e11a7f3f42b.md) | 50 | `result-track:c13d0041c8834e11a7f3f42b90de2fc0818a7ff56aaa1480c290410975e35d28` |
| 6 | `def` | [PrimitiveAdditiveTriple.freySectionJetEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjetequiv--a8e6b43e38ca9143b2692ce5.md) | 60 | `declaration-track:a8e6b43e38ca9143b2692ce55a96a7b29583fdd24c1e2fe4224a60d3c3748036` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freySectionJetEquiv_symm_parameter](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjetequiv-symm-parameter--da9aac1088af01c8419d4087.md) | 68 | `result-track:da9aac1088af01c8419d408792d9a510b2561c5ddea23baba932f68d22d1465f` |
| 8 | `theorem` | [PrimitiveAdditiveTriple.freySectionJetEquiv_x](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjetequiv-x--860dca339c5da8eacbb56ec7.md) | 77 | `result-track:860dca339c5da8eacbb56ec7f4a51332a9cd513e18cd4564eadab1c9358994dc` |
| 9 | `def` | [PrimitiveAdditiveTriple.freySectionJetTruncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjettruncate--4d8d3b71d493d27745ac44e5.md) | 98 | `declaration-track:4d8d3b71d493d27745ac44e512215b97f587b09c620d7c3063d9de8708bb0d56` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freySectionJetEquiv_truncate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySectionJetEquiv.lean/declarations/primitiveadditivetriple-freysectionjetequiv-truncate--4c9164459b8ff196b87d06bd.md) | 104 | `result-track:4c9164459b8ff196b87d06bdaa260ee677f590400870a245f845ed0483339c6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
