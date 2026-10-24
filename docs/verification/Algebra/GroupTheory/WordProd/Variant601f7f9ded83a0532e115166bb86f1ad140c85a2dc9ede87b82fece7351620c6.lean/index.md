# Verification target: GRWTSK.Algebra.GroupTheory.WordProd.Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb70a05d2f1a8af2da26945fccab50fd3d141695",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb70a05d2f1a8af2da26945fccab50fd3d141695`.

Source path: `GRWTSK/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean.json)

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
| 1 | `def` | [wordProd](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod--ed02b12818b0f859c020aa26.md) | 43 | `declaration-track:ed02b12818b0f859c020aa26bc4ea351f7dfbf118bad122fbafebaa409317671` |
| 2 | `theorem` | [wordProd_surjective](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod-surjective--948f72098cdb5ea90388b730.md) | 46 | `result-track:948f72098cdb5ea90388b73009ea1f2d357105b004a7e1665e59ce6667d07a47` |
| 3 | `lemma` | [wordProd_nil](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod-nil--0ac7e1929ca1590a96811f18.md) | 50 | `result-track:0ac7e1929ca1590a96811f182d79dfb9077950d0c2de804d5cf2cc3f33be0afd` |
| 4 | `lemma` | [wordProd_singleton](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod-singleton--b82e9f5e0e0d3bc278d2627a.md) | 54 | `result-track:b82e9f5e0e0d3bc278d2627a2c90f4622c4cd53e85ad46175b18415dc7685a45` |
| 5 | `lemma` | [wordProd_cons](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod-cons--e4b05a190552f07be2e18e60.md) | 57 | `result-track:e4b05a190552f07be2e18e608f4e8faa5c6fe992af028c629f04349ec2ae636e` |
| 6 | `lemma` | [wordProd_append](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod-append--0d496f572615746b98f82363.md) | 60 | `result-track:0d496f572615746b98f82363e8b68fed372316ee6dd791f4a591dd0065cd0feb` |
| 7 | `lemma` | [wordProd_invRev](../../../../../mathematics/Algebra/GroupTheory/WordProd/Variant601f7f9ded83a0532e115166bb86f1ad140c85a2dc9ede87b82fece7351620c6.lean/declarations/wordprod-invrev--1274fc43fd8e415fcb958711.md) | 63 | `result-track:1274fc43fd8e415fcb958711874047302598910760a019d5824f60cf5fc38978` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
