# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Represents.Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb59b3ae31916a68348516dacc3d7c743ce9d30",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb59b3ae31916a68348516dacc3d7c743ce9d30`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkCounting` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Represents](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/represents--3347bf768f16a5875830fd80.md) | 28 | `declaration-track:3347bf768f16a5875830fd805b5e7961bbfd3465692e41f1afe6aec0ae26b7e8` |
| 2 | `lemma` | [image_out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/image-out--fd502aa8f747eeeec0f1f954.md) | 35 | `result-track:fd502aa8f747eeeec0f1f954a28602fa3bbe282b0f8f0f66d88dae1a69da3aed` |
| 3 | `lemma` | [existsUnique_rep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/existsunique-rep--06bc96d242624ae0dbe4fa76.md) | 42 | `result-track:06bc96d242624ae0dbe4fa762df9dada48d43c0fd92e5d8261443530bc3f024f` |
| 4 | `lemma` | [exists_inter_eq_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/exists-inter-eq-singleton--ce2d899306a869b0fb360b49.md) | 48 | `result-track:ce2d899306a869b0fb360b497d93d316c952613bd5f35f1400ddd5c5eceac45e` |
| 5 | `lemma` | [disjoint_supp_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/disjoint-supp-of-notmem--06e7ac04832f096a9f04743e.md) | 52 | `result-track:06e7ac04832f096a9f04743ee6aedd5b1944446b25551e0495025d9e55b62042` |
| 6 | `lemma` | [ncard_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/ncard-inter--8ecc25c307256d652dcc740c.md) | 61 | `result-track:8ecc25c307256d652dcc740c447526ca068049d1f7fb07a8b229f6da8b2144e3` |
| 7 | `lemma` | [ncard_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/ncard-eq--9e98d24d4805caeec0e5faf4.md) | 65 | `result-track:9e98d24d4805caeec0e5faf454d6409f3c7d74f757193edce6bab49ed35c98e7` |
| 8 | `lemma` | [ncard_sdiff_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/ncard-sdiff-of-mem--f5732b8b65be2f48c4ca38ab.md) | 68 | `result-track:f5732b8b65be2f48c4ca38ab5c60af8db94914772336ed2d2fe1d0a2bd07645f` |
| 9 | `lemma` | [ncard_sdiff_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/ncard-sdiff-of-notmem--4ef45aae52a8197db1e99205.md) | 74 | `result-track:4ef45aae52a8197db1e99205ac7a7561ad21d91891fc24f9094f6c5a079d2e89` |
| 10 | `lemma` | [ConnectedComponent.even_ncard_supp_sdiff_rep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Represents/Variant8689585929de66d9586ded628844a09f749c6a84b41b315b92de915ab837d354.lean/declarations/connectedcomponent-even-ncard-supp-sdiff-rep--27874de0977bf6e0622fd317.md) | 82 | `result-track:27874de0977bf6e0622fd317866c1235136900f5cd1f1246b81688fc23762221` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
