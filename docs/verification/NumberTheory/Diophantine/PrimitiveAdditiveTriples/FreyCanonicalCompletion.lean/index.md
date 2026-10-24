# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "085820f4f70348c977aae1c6ee50442992dba867",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `085820f4f70348c977aae1c6ee50442992dba867`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAdicQuotients.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.RingTheory.AdicCompletion.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Canonical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/canonical--38d05f413b85f8fa443cf6f5.md) | 26 | `declaration-track:38d05f413b85f8fa443cf6f52569bf4a8e0e03f1ee4983471950656e2d57230c` |
| 2 | `def` | [canonicalProjection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/canonicalprojection--6c3e4e2f63a824c7a58b98c9.md) | 29 | `declaration-track:6c3e4e2f63a824c7a58b98c984eb85b0eed08372db9333b3301f0c0f2e6a0fa2` |
| 3 | `theorem` | [canonicalProjection_transition](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/canonicalprojection-transition--21a81b894b198730f811b652.md) | 34 | `result-track:21a81b894b198730f811b652515dcb712e25b45dbf415b7ed63adae52608c261` |
| 4 | `def` | [toLimit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/tolimit--5675ce92e17a03d558e289a4.md) | 46 | `declaration-track:5675ce92e17a03d558e289a40d8bf98ef66e36898bb2f64f7c6661f054374eb8` |
| 5 | `theorem` | [toLimit_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/tolimit-projection--b2840ddf850776d28e752bb3.md) | 56 | `result-track:b2840ddf850776d28e752bb366c1a7d32344786485c63af853ee233c47b913da` |
| 6 | `def` | [returnLevel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/returnlevel--068cb068319f0b0ce3817193.md) | 62 | `declaration-track:068cb068319f0b0ce381719378e685aa1da3b0e61a827704fd119ae1d20f4c55` |
| 7 | `theorem` | [returnLevel_compatible](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/returnlevel-compatible--b76c942313e7c88d4561f082.md) | 68 | `result-track:b76c942313e7c88d4561f0820eb2b61ce2ea004029dc1b01079d70977bae6c00` |
| 8 | `theorem` | [returnLevel_succ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/returnlevel-succ--230276247339a56a2c99264b.md) | 87 | `result-track:230276247339a56a2c99264b593384428edac0616272e505be4298225f68c46f` |
| 9 | `def` | [fromLimit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/fromlimit--0656bc7e0362d9dcc8ca99a5.md) | 95 | `declaration-track:0656bc7e0362d9dcc8ca99a5276d3e92a9f3f8e85ca4af7c28d5f4e44302ce38` |
| 10 | `theorem` | [fromLimit_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/fromlimit-projection--e3a375c861c4da877dec8900.md) | 99 | `result-track:e3a375c861c4da877dec8900036c1cd962e326d9c0e6285b60d013bd67adbca6` |
| 11 | `theorem` | [toLimit_fromLimit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/tolimit-fromlimit--7b077f5f598bede3f3bd6dd8.md) | 106 | `result-track:7b077f5f598bede3f3bd6dd8dc683fc17eaa503da3b57d9723cffe215a442e74` |
| 12 | `theorem` | [fromLimit_toLimit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/fromlimit-tolimit--1ef30a146862f833cf35cecf.md) | 113 | `result-track:1ef30a146862f833cf35cecf24f58a70d30b4609d8dffe3813788eacff9e4500` |
| 13 | `def` | [adicLimitEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/adiclimitequiv--e391dbfb9e68f2779aad4b82.md) | 127 | `declaration-track:e391dbfb9e68f2779aad4b820b94e25f6eb4ab66d3c308810b40903d6ec5370f` |
| 14 | `theorem` | [toLimit_of_coordinate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/tolimit-of-coordinate--b61bad320123642c905ce655.md) | 137 | `result-track:b61bad320123642c905ce655a1744cfa2053bfc8efcc35d0aa0466d7d3458a52` |
| 15 | `def` | [adicSeriesEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/adicseriesequiv--55cc37c8be1099759b187145.md) | 149 | `declaration-track:55cc37c8be1099759b187145cf5f8b921eba0d5462fe78ad02d37379b4be28e1` |
| 16 | `theorem` | [adicSeries_projection](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/adicseries-projection--c105da79e365c0ec8a44ab67.md) | 155 | `result-track:c105da79e365c0ec8a44ab677f864c678bd368391ab1f4c3de2492177b68e946` |
| 17 | `theorem` | [adicSeries_filtration](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/adicseries-filtration--363d80db01005e1d4c0c93fd.md) | 164 | `result-track:363d80db01005e1d4c0c93fd93d20850eddc625f400c547cc60d4cc6c733d7f6` |
| 18 | `theorem` | [adicSeries_y](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/adicseries-y--dea6e78cac8f372562f59204.md) | 179 | `result-track:dea6e78cac8f372562f59204f53cb8609166ac94d28736f9e699cf34945da5d0` |
| 19 | `abbrev` | [FreyCanonicalSectionCompletion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/freycanonicalsectioncompletion--8ccd009c083e5824aafab650.md) | 201 | `declaration-track:8ccd009c083e5824aafab65046c3f5477135b578767a77e38bff7b1669db7e4d` |
| 20 | `def` | [PrimitiveAdditiveTriple.freyCanonicalSectionCompletionEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/primitiveadditivetriple-freycanonicalsectioncompletionequiv--48f6b91db08a495b3f21208d.md) | 206 | `declaration-track:48f6b91db08a495b3f21208dd14aa416fe35429728ba5e68b34395ecf0d7bdd2` |
| 21 | `theorem` | [PrimitiveAdditiveTriple.freyCanonicalSectionCompletion_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalCompletion.lean/declarations/primitiveadditivetriple-freycanonicalsectioncompletion-agrees--7036f695dac70bf96a47b43e.md) | 214 | `result-track:7036f695dac70bf96a47b43e8e4e008b57cfada32bf0e25f8ceb828c617d7a95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
