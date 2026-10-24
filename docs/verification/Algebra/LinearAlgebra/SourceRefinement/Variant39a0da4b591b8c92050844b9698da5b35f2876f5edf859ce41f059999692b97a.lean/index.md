# Verification target: GRWTSK.Algebra.LinearAlgebra.SourceRefinement.Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c1d20949e9ab886c9506a6351d11a9a2a7f818",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c1d20949e9ab886c9506a6351d11a9a2a7f818`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticDefect` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [retentionMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/retentionmatrix--217b43a4de37d53dc36f7220.md) | 29 | `declaration-track:217b43a4de37d53dc36f72209e520b644e923cd763592ceb91c5499ecfc3814a` |
| 2 | `theorem` | [retentionMatrix_apply](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/retentionmatrix-apply--1b8e9c7319e3a9b5f1f54555.md) | 33 | `result-track:1b8e9c7319e3a9b5f1f5455527959a45f6521063c0761b926d16e65f3ce20ab5` |
| 3 | `theorem` | [retentionMatrix_self](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/retentionmatrix-self--22b9bc7202d77c4ba10b811c.md) | 42 | `result-track:22b9bc7202d77c4ba10b811c610f32e8151201e2fc28767674db04bbaa8b1bba` |
| 4 | `def` | [transportAt](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/transportat--f767a53ebc3ac53f10aaf191.md) | 48 | `declaration-track:f767a53ebc3ac53f10aaf19160d57abe59b138cec84b2ecc305208ff56c9aa89` |
| 5 | `def` | [firstIncrement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/firstincrement--d45a6aa69eebb93c043e7292.md) | 53 | `declaration-track:d45a6aa69eebb93c043e7292019906d875fb3c18ccd8779be675b41fe6cfdb81` |
| 6 | `def` | [secondIncrement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/secondincrement--f77ec7e1f05f5aadf37e1ed3.md) | 56 | `declaration-track:f77ec7e1f05f5aadf37e1ed3d9f634d1634b9f4a740c5ecb69f8a732ffa2eff4` |
| 7 | `theorem` | [first_refinement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/first-refinement--39b13c44d7de27e7ccb6f84d.md) | 58 | `result-track:39b13c44d7de27e7ccb6f84d746cb5b8bdc29b4982be46f06355ba15e941cc0f` |
| 8 | `theorem` | [second_refinement](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/second-refinement--d4cf6e849dd0428d5a1360b2.md) | 62 | `result-track:d4cf6e849dd0428d5a1360b20286aecdf427ae5631198136a2ed074226dfc117` |
| 9 | `theorem` | [firstIncrement_apply](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/firstincrement-apply--aa2202b2c0756cb1f6f142e6.md) | 68 | `result-track:aa2202b2c0756cb1f6f142e670f205e3159ba223a9f202ef796db4efcb900cab` |
| 10 | `theorem` | [secondIncrement_apply](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/secondincrement-apply--fe963f0b4cec9515c6dabf48.md) | 79 | `result-track:fe963f0b4cec9515c6dabf48cd6e78a209d315c5a73b01bbc5f8a1a04bf22394` |
| 11 | `theorem` | [literal_refinement_increment](../../../../../mathematics/Algebra/LinearAlgebra/SourceRefinement/Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a.lean/declarations/literal-refinement-increment--bca60ecb8ecde4634b948a10.md) | 96 | `result-track:bca60ecb8ecde4634b948a103fc891fd4fc77fa963d45657b933b51b2f0bf2e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
