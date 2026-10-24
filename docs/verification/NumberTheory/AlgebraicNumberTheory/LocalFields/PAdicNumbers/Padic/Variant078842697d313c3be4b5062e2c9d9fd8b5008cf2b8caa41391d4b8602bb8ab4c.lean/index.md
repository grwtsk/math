# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Padic.Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc8982dc6fb9ddaf2ef5a40c5c1a87c2c2d8f7f6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc8982dc6fb9ddaf2ef5a40c5c1a87c2c2d8f7f6`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DividedPowers.ofInjective](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dividedpowers-ofinjective--b82badc329ff8aea298d1194.md) | 48 | `declaration-track:b82badc329ff8aea298d1194f81dd3143428c234e0b135dd7ae6cf26abef007d` |
| 2 | `def` | [dpow'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dpow--d7cd2426592f673c493b3808.md) | 93 | `declaration-track:d7cd2426592f673c493b380863114f39d8ed6dbed10a1ca7ab11fba648eeff5a` |
| 3 | `lemma` | [dpow'_norm_le_of_ne_zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dpow-norm-le-of-ne-zero--4538e3c972085620048563cc.md) | 95 | `result-track:4538e3c972085620048563cc72e046f0e739c1ae71e695506311d396c635d64a` |
| 4 | `lemma` | [dpow'_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dpow-int--c9e73564c18b15effa0a0f5b.md) | 122 | `result-track:c9e73564c18b15effa0a0f5b5aa9125a3f3665819729ec8ceaef555d178c0e09` |
| 5 | `theorem` | [dpow'_mem](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dpow-mem--c0062a1d7c7c3ef3424d5430.md) | 134 | `result-track:c0062a1d7c7c3ef3424d5430827623d14df43cbfcb7a6d217b0cc5be42cd9070` |
| 6 | `def` | [dividedPowers](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dividedpowers--8a80d445b812e7249354349c.md) | 147 | `declaration-track:8a80d445b812e7249354349ce278961cde1d50c2f70cf2d9a641358a11e115cf` |
| 7 | `lemma` | [dividedPowers_eq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/dividedpowers-eq--3b8412952e00793ea1011833.md) | 163 | `result-track:3b8412952e00793ea1011833c0fecfcc22e7159b871e65dbc9082ebf975d9261` |
| 8 | `lemma` | [coe_dpow_eq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/declarations/coe-dpow-eq--f1e043eec06f0b173ac0e07d.md) | 178 | `result-track:f1e043eec06f0b173ac0e07d85e3e6febda92f7c0bebc85a58c013e2b9ee528e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
