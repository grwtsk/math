# Verification target: GRWTSK.Algebra.MinImports.Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d6658f77b19fd7ecc0fb3f65e72178bc771d08e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d6658f77b19fd7ecc0fb3f65e72178bc771d08e`.

Source path: `GRWTSK/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.NormNum.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Attr` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [XX.YY](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/xx-yy--937c7db6f0cbeaa4e8af6287.md) | 23 | `result-track:937c7db6f0cbeaa4e8af6287b3db174e38e19b015a6028d0333cecdb4762a13e` |
| 2 | `def` | [xxx](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/xxx--029245dcf17589a6ccca8ad1.md) | 29 | `declaration-track:029245dcf17589a6ccca8ad1302a63f5736a787b9c03efe3b20e7601a6408c1f` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/instance--88cef0f9cf2e030e75b2bfb5.md) | 36 | `declaration-track:88cef0f9cf2e030e75b2bfb52950e72d276c29b69c196b2e038b41009a809108` |
| 4 | `instance` | [withName](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/withname--77d9dfcdf136c369c19079e0.md) | 41 | `declaration-track:77d9dfcdf136c369c19079e0c921be6ec16e01db0020c7a6bf590036d382298a` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/instance--ccaba874c8e5a0c8c4678d0a.md) | 46 | `declaration-track:ccaba874c8e5a0c8c4678d0a56157fec41af7701706412b0829d9d3bc74bd024` |
| 6 | `lemma` | [uses_norm_num](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/uses-norm-num--818adbc21ea7f21386f922bc.md) | 72 | `result-track:818adbc21ea7f21386f922bccc385bf5cc2d269f9be9f44974ddb43aaf71cd8a` |
| 7 | `lemma` | [hi](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/hi--aa0332fd5d66ed15066b8fef.md) | 87 | `result-track:aa0332fd5d66ed15066b8fef88e3a30442a5e176c694e387f49b18d1c4a255a1` |
| 8 | `def` | [confusableName](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/confusablename--bfb2247420bba702feb9860a.md) | 94 | `declaration-track:bfb2247420bba702feb9860a195e2769a961fe8aa8a69a345ee024bf2943c836` |
| 9 | `def` | [confusableName](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/confusablename--39a4ac94873798fb06873d84.md) | 110 | `declaration-track:39a4ac94873798fb06873d84aa29d391224e2d17c1ef1cada6f90ee7b6091d10` |
| 10 | `theorem` | [propose_to_move_this_theorem](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/propose-to-move-this-theorem--52c6e9058b552464fa513049.md) | 192 | `result-track:52c6e9058b552464fa5130494e35f54280a1f007ea30d982db1e3feb19ede5c3` |
| 11 | `def` | [dont_propose_to_move_this_def](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/dont-propose-to-move-this-def--82ee0f42f3287a7945c3c630.md) | 195 | `declaration-track:82ee0f42f3287a7945c3c630bb6fdc81d3117b16cb5ecfd390562c684b7e92ff` |
| 12 | `def` | [propose_to_move_this_def](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/propose-to-move-this-def--1ffaa47335a9a48c0339843d.md) | 203 | `declaration-track:1ffaa47335a9a48c0339843ddbb0de4b2c2b245cc8f671ef759cbda0f0dda020` |
| 13 | `theorem` | [theorem_with_local_def](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/theorem-with-local-def--8bfa6f6c714ad9fe08c37985.md) | 207 | `result-track:8bfa6f6c714ad9fe08c379854d1834e0080253636af16e7151937e90cef80bda` |
| 14 | `theorem` | [theorem_with_multiple_dependencies](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/theorem-with-multiple-dependencies--58d2c6d719c69092da1269cc.md) | 211 | `result-track:58d2c6d719c69092da1269cca537af6f8af2810926e5c474c2a65fcca5c2b7fa` |
| 15 | `theorem` | [private_theorem](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/private-theorem--a87900843c3dd3690dfe25cc.md) | 217 | `result-track:a87900843c3dd3690dfe25ccb58116808b59ae55b569edb65ffb5652ae49a052` |
| 16 | `theorem` | [propose_to_move_this_private_theorem](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/propose-to-move-this-private-theorem--f90fd53a61fdcdb92ee338a5.md) | 226 | `result-track:f90fd53a61fdcdb92ee338a59b320832da5b98dde6b64c28143b59cadd24f813` |
| 17 | `def` | [private_def](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/private-def--84ef2b899690f02b2fcb3d04.md) | 230 | `declaration-track:84ef2b899690f02b2fcb3d0454992b27bbed348e7d21e39d5b5225bb5d232211` |
| 18 | `def` | [propose_to_move_this_private_def](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/propose-to-move-this-private-def--1e1094c85b6b8841a5e643de.md) | 240 | `declaration-track:1e1094c85b6b8841a5e643de7d5af24c1d7bcdeefd7e2ef43cc6701892e47e62` |
| 19 | `structure` | [DontProposeToMoveThisStructure](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/dontproposetomovethisstructure--735db3921ea8c9623f0fc1f3.md) | 245 | `declaration-track:735db3921ea8c9623f0fc1f35c26bce1e18e77a4c24a3c58e20a959c43d46908` |
| 20 | `inductive` | [DontProposeToMoveThisInductive](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/dontproposetomovethisinductive--0edf747a19adbb46cc877971.md) | 248 | `declaration-track:0edf747a19adbb46cc8779718b32877c114a3c3fe59af2eb3fbbc46584a752de` |
| 21 | `structure` | [ProposeToMoveThisStructure](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/proposetomovethisstructure--ecd7a8fb6a197f23c93b679c.md) | 260 | `declaration-track:ecd7a8fb6a197f23c93b679c37d48814eb17672d114b3c5b0531041b428f43fa` |
| 22 | `inductive` | [ProposeToMoveThisInductive](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/proposetomovethisinductive--4c5f4ceb5963bf10f3ef349a.md) | 268 | `declaration-track:4c5f4ceb5963bf10f3ef349ae8c092d3578bb13b5334e08d61d4ec7d66528592` |
| 23 | `theorem` | [theorem_with_local_inductive](../../../../mathematics/Algebra/MinImports/Variant4f1d45c92294e46a7cd4abc8090ba1c4385db963fe507fd9c10acb1c61a4f650.lean/declarations/theorem-with-local-inductive--eb2598f480c9abb4a29f5e9d.md) | 274 | `result-track:eb2598f480c9abb4a29f5e9d87196f416a13fdc169f1c74b1326248a33fd7553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
