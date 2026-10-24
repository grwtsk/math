# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PathClass.Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ff7e4abb8af6197daf309067654a33eeee58baa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ff7e4abb8af6197daf309067654a33eeee58baa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.Bit` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [EndpointClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/declarations/endpointclass--c816e6ded48318d93dbc2ba4.md) | 21 | `declaration-track:c816e6ded48318d93dbc2ba4b78ebf2feef4fa95be1ac7a0ef861333eb1aefa0` |
| 2 | `def` | [ofEndpoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/declarations/ofendpoints--c8bd5deb8fb8c016a19b7e28.md) | 30 | `declaration-track:c8bd5deb8fb8c016a19b7e28fd0423499d793e06c55140cb996f219347976053` |
| 3 | `def` | [lastBit?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/declarations/lastbit--cda5bdb9524a7f183d38129c.md) | 38 | `declaration-track:cda5bdb9524a7f183d38129c053c289d11fbeb8d14fc23b72f978078993d6e81` |
| 4 | `def` | [endpointClassOfBits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/declarations/endpointclassofbits--965296211d06f0b4927c10d3.md) | 43 | `declaration-track:965296211d06f0b4927c10d3cc4a15b38d29d26dc954586d902d26d3fc404925` |
| 5 | `theorem` | [lastBit?_cons_ne_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/declarations/lastbit-cons-ne-none--ab056454a73b81f39bd6cf4c.md) | 47 | `result-track:ab056454a73b81f39bd6cf4c14e8624f8f6fbff77637c9ffb2dfd95074bdfb2c` |
| 6 | `theorem` | [endpointClass_depends_only_on_endpoints](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PathClass/Variant5bb06107b0f1813fc7692d7c5a5fa31e56f78e48e062039679b67f1a953a444b.lean/declarations/endpointclass-depends-only-on-endpoints--e4bdbc69e0cc49a2b5c9f7b0.md) | 55 | `result-track:e4bdbc69e0cc49a2b5c9f7b0b308ecbe80c3399c72780f3b875fd246b80a69ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
