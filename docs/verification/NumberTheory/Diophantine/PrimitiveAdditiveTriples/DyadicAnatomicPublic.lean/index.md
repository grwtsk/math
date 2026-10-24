# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceacfa076cbe11d34e5624ef3a0c43316afa4088",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceacfa076cbe11d34e5624ef3a0c43316afa4088`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicCover`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicCover.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [supportProduct_dvd_monomial_public](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/declarations/supportproduct-dvd-monomial-public--de267725b27a546e3e54230c.md) | 17 | `result-track:de267725b27a546e3e54230cd29dd3456dba7a448184d08fb5b67c24e1801708` |
| 2 | `theorem` | [carrierA_dvd_totalA](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/declarations/carriera-dvd-totala--f9b4bfb0e682c80f5801f10b.md) | 24 | `result-track:f9b4bfb0e682c80f5801f10b3df336d6f8488150d721b2cece7bdca4abe55f21` |
| 3 | `theorem` | [carrierB_dvd_totalB](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/declarations/carrierb-dvd-totalb--c4f5bb78971931d3aa40b898.md) | 28 | `result-track:c4f5bb78971931d3aa40b8983e07d935fcc0da3a83869cfbb14a7988a8b85701` |
| 4 | `theorem` | [carrierC_dvd_totalC](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/declarations/carrierc-dvd-totalc--9c48dee27ab9207831fc4f02.md) | 32 | `result-track:9c48dee27ab9207831fc4f020a16af94fa7fc7404e4c66f2cf828b722e781186` |
| 5 | `theorem` | [residual_le_cap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DyadicAnatomicPublic.lean/declarations/residual-le-cap--0e8ca5ae7bfb9d937c61b55c.md) | 36 | `result-track:0e8ca5ae7bfb9d937c61b55ccfcb62944eef7ba385685acf716b7976735aa7d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
