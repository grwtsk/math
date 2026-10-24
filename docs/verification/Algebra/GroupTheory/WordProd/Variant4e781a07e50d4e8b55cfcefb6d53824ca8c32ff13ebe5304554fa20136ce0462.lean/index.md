# Verification target: GRWTSK.Algebra.GroupTheory.WordProd.Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a71249754e9d94a1b1a2604c8c5e6c08eb0630f8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a71249754e9d94a1b1a2604c8c5e6c08eb0630f8`.

Source path: `GRWTSK/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean.json)

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
| 1 | `def` | [wordProd](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod--2b0677ccf03ff848aded5651.md) | 51 | `declaration-track:2b0677ccf03ff848aded56519035628bc795961aecca12c6b59f13ab276ff09a` |
| 2 | `theorem` | [wordProd_surjective](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod-surjective--52e819a0f814d5028032f91f.md) | 54 | `result-track:52e819a0f814d5028032f91f8ab4bfde808abcae74e3fbadb2ee644511a3d449` |
| 3 | `lemma` | [wordProd_nil](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod-nil--cf9978b8937905ba72ca9d2c.md) | 58 | `result-track:cf9978b8937905ba72ca9d2cf87bd93e6a3c36f2745b38f7e6b2db1169783d96` |
| 4 | `lemma` | [wordProd_singleton](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod-singleton--f20fa45b397c8e83f3b52520.md) | 62 | `result-track:f20fa45b397c8e83f3b525209f7e67a40706340e09d21571eac76d731d5337fc` |
| 5 | `lemma` | [wordProd_cons](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod-cons--71cdb9b4908d6e903beb2bbd.md) | 65 | `result-track:71cdb9b4908d6e903beb2bbd78b87e17381d3cf4fc8b9a9578b2fc4ee8835be3` |
| 6 | `lemma` | [wordProd_append](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod-append--4d25b288a285be19e570f6e7.md) | 68 | `result-track:4d25b288a285be19e570f6e7251337e1650c052e8a10f9e622412b95535cc870` |
| 7 | `lemma` | [wordProd_invRev](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant4e781a07e50d4e8b55cfcefb6d53824ca8c32ff13ebe5304554fa20136ce0462.lean/declarations/wordprod-invrev--778f56f563da63c38032f36b.md) | 71 | `result-track:778f56f563da63c38032f36bb0aac8230e30438a2c58ccde3ce2d123d2c68df8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
