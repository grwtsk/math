# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Induction.Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "104921414dd16935e4c06e95e2f608090ed1eb8c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `104921414dd16935e4c06e95e2f608090ed1eb8c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reverseRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/reverserecon--9e28aed341975a967e115d09.md) | 18 | `declaration-track:9e28aed341975a967e115d09f7eb0a11f2fd66d9d442c73ee7b75a19512998bd` |
| 2 | `theorem` | [reverseRecOn_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/reverserecon-nil--90f82a1947bc7ed020146cd1.md) | 33 | `result-track:90f82a1947bc7ed020146cd1aa147ccfcfbaa820d11e86b09c3c43c253e3bcb3` |
| 3 | `theorem` | [reverseRecOn_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/reverserecon-concat--d509cb11acea44d0255651ce.md) | 39 | `result-track:d509cb11acea44d0255651ce372f80f64a1439f7eca313a3dc10a0a9ea60d118` |
| 4 | `def` | [bidirectionalRec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/bidirectionalrec--38b66e01e585f7966f36d228.md) | 64 | `declaration-track:38b66e01e585f7966f36d228c547894d3d9e7333b9e368097e8467c67c2edc42` |
| 5 | `theorem` | [bidirectionalRec_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/bidirectionalrec-nil--2d1a9f34c028dece244b36ec.md) | 77 | `result-track:2d1a9f34c028dece244b36ec383a1f660aa93401b93ee8e3d929064b715dc0e0` |
| 6 | `theorem` | [bidirectionalRec_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/bidirectionalrec-singleton--df919049e7835a7689648116.md) | 84 | `result-track:df919049e7835a7689648116dfd167b32941fd75ebaeb776a4dd8b4955c6b2c9` |
| 7 | `theorem` | [bidirectionalRec_cons_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/bidirectionalrec-cons-append--f4a24665733d39af37d4619d.md) | 91 | `result-track:f4a24665733d39af37d4619d16cb2b03c5e431c507eb3fcbd481be9c8f5914bf` |
| 8 | `abbrev` | [bidirectionalRecOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Induction/Variant4c4608a89c7729021e1e34664a4524abdcbc0620ab2105fac4114d75c18d5192.lean/declarations/bidirectionalrecon--175fc10c95bbb7bb4140e99a.md) | 115 | `declaration-track:175fc10c95bbb7bb4140e99a49f1416e56f3313ccabdf4f27cbaef4891b19898` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
