# Verification target: GRWTSK.Algebra.GroupTheory.IterateAct.Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0017968410b2f33eac77bca7f859c7c50327fe91",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0017968410b2f33eac77bca7f859c7c50327fe91`.

Source path: `GRWTSK/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IterateAddAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/declarations/iterateaddact--e0f40c50ec912deab63be5aa.md) | 28 | `declaration-track:e0f40c50ec912deab63be5aaacd9e11e3aa347dd03cdec07f9b663106a29484c` |
| 2 | `structure` | [IterateMulAct](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/declarations/iteratemulact--7a2738edb7695525ab833c83.md) | 34 | `declaration-track:7a2738edb7695525ab833c8365059020be15ba7bdbf811333e736afa3998c8bc` |
| 3 | `instance` | [instCountable](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/declarations/instcountable--a3290084e6a8cb1075b283d7.md) | 43 | `declaration-track:a3290084e6a8cb1075b283d7581a9bd49376d64a8477026072902dc9ba50bcdf` |
| 4 | `instance` | [instCommMonoid](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/declarations/instcommmonoid--b20ea483ae6f4c147e173874.md) | 47 | `declaration-track:b20ea483ae6f4c147e173874eda1aa6ebfc5c9c0846587670c275b333b2d8bd7` |
| 5 | `instance` | [instMulAction](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/declarations/instmulaction--c0e33277564e4785fb352533.md) | 59 | `declaration-track:c0e33277564e4785fb352533267b9ccfda3e163b1516378b91233319d733b038` |
| 6 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/GroupTheory/IterateAct/Variantbdd8bba3e0325fe8e9d08ecf9780cae1cb00b7cc79edd6a61ad5aeb78b514e36.lean/declarations/mk-smul--c406b75270ecba27f3b1f794.md) | 65 | `result-track:c406b75270ecba27f3b1f794df60be3f8b5673b79adab91c187b4e6181e6013a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
