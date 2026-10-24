# Verification target: GRWTSK.Analysis.ComplexAnalysis.BorelCaratheodory.Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a14d2f963a0e93ae640a6e8bf7b101207f41e79",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a14d2f963a0e93ae640a6e8bf7b101207f41e79`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean.json)

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
| 1 | `lemma` | [eq_mul_div_one_add_of_eq_div_sub](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/declarations/eq-mul-div-one-add-of-eq-div-sub--092e8f5a822cce70bf0ed73b.md) | 44 | `result-track:092e8f5a822cce70bf0ed73bb5cc436d5b269c27ff3c81e87296165b39324bfa` |
| 2 | `lemma` | [norm_two_mul_div_one_add_le](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/declarations/norm-two-mul-div-one-add-le--4544ed9f5f09fe736ef5895c.md) | 50 | `result-track:4544ed9f5f09fe736ef5895ca71d62dea7120af39435587d65475370a6fe3b09` |
| 3 | `lemma` | [norm_le_norm_two_mul_sub](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/declarations/norm-le-norm-two-mul-sub--08e6562767246507a0daa05d.md) | 58 | `result-track:08e6562767246507a0daa05d245fe8de359db48d2a6db2564e16eb1c09e77e38` |
| 4 | `lemma` | [schwarz_applied](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/declarations/schwarz-applied--a6d46dc985c2c0284fdeaedd.md) | 66 | `result-track:a6d46dc985c2c0284fdeaedd213d56ca455d0c5caa2d89b93b4553cccf126576` |
| 5 | `theorem` | [borelCaratheodory_zero](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/declarations/borelcaratheodory-zero--170f2d5d46201c884b450a51.md) | 86 | `result-track:170f2d5d46201c884b450a510bcaaee771fa41af238471f0c32607ad8f9d2073` |
| 6 | `theorem` | [borelCaratheodory](../../../../../mathematics/Analysis/ComplexAnalysis/BorelCaratheodory/Variant64de6597808106ff466fa07a47c793d2b792418304b46177c4ac8728b635c31b.lean/declarations/borelcaratheodory--661ef02bea60b4d74bfc1ec5.md) | 109 | `result-track:661ef02bea60b4d74bfc1ec5cfcc6c81597f01d70ea5265b8dc972e8bef36e0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
