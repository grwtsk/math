# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2383ebf23e12ef26d169739a69846be0b434d0ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2383ebf23e12ef26d169739a69846be0b434d0ad`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pretransitive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Function.Surjective.mulActionLeft](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/function-surjective-mulactionleft--9cb9dc2a1321ef2fdd301d9c.md) | 28 | `declaration-track:9cb9dc2a1321ef2fdd301d9cd29a587bc32ab33503d3c9c3ac7b4326df5f4a50` |
| 2 | `abbrev` | [compHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/comphom--b8351abd733824919e0852e1.md) | 44 | `declaration-track:b8351abd733824919e0852e1b76af733af71508196a260a67faea3dfdfbd17f3` |
| 3 | `lemma` | [compHom_smul_def](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/comphom-smul-def--3b288d675cd6097587045c47.md) | 56 | `result-track:3b288d675cd6097587045c47d9774ace43e5cc6622fb8eb0a1795d0dc994389e` |
| 4 | `lemma` | [isPretransitive_compHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/ispretransitive-comphom--ad4fc09e4a2df1ffe787e675.md) | 64 | `result-track:ad4fc09e4a2df1ffe787e675869204e24b4dc05e444e3d3e89321e38ec67c818` |
| 5 | `lemma` | [IsPretransitive.of_compHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/ispretransitive-of-comphom--6745787d18bb66137baae5e7.md) | 75 | `result-track:6745787d18bb66137baae5e702c7d7aac31fd633012185fa52e5a10485724876` |
| 6 | `def` | [MonoidHom.smulOneHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/monoidhom-smulonehom--c9472a3920640b78830735ff.md) | 89 | `declaration-track:c9472a3920640b78830735ff2de0999a3bd40acc270c07a0cee3dd8a68932279` |
| 7 | `def` | [monoidHomEquivMulActionIsScalarTower](../../../../../mathematics/Algebra/GroupTheory/Hom/Variantbdb923ad6e4e46e3be32b299b323efc4564a316441ab453c04a12ae61281b699.lean/declarations/monoidhomequivmulactionisscalartower--a1d9cc9b8059ef8460680bad.md) | 100 | `declaration-track:a1d9cc9b8059ef8460680badceb25af27229c54f42ac9cc9231cf1c19aebd624` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
