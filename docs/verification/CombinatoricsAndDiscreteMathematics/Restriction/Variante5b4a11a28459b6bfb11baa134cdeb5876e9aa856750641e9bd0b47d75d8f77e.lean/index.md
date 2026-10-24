# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Restriction.Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "163c535d74cdbdddd4630105f42509279177d377",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `163c535d74cdbdddd4630105f42509279177d377`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Update` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/restrictle--cf956b3e5d70f8a1ae11bfd5.md) | 35 | `declaration-track:cf956b3e5d70f8a1ae11bfd5477f293a2d093a0734d62bda56c6cbb49f66ba55` |
| 2 | `lemma` | [restrictLe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/restrictle-apply--21346e6db01e26e386f27d8b.md) | 38 | `result-track:21346e6db01e26e386f27d8b9255198fa8273bc0288c2e70f26b56389885d799` |
| 3 | `def` | [restrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/restrictle--da6e50cf15ba08523fe4375e.md) | 42 | `declaration-track:da6e50cf15ba08523fe4375e2d9974686f47f3d64dfccfa7793a30514da9e25d` |
| 4 | `lemma` | [restrictLe₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/restrictle-apply--5d06d0268a151ac2934ba407.md) | 45 | `result-track:5d06d0268a151ac2934ba407beb51b313e554630bd59ba7a5d11c5e7f20ea507` |
| 5 | `theorem` | [restrictLe₂_comp_restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/restrictle-comp-restrictle--ce2217d68180a62c64a8dae1.md) | 48 | `result-track:ce2217d68180a62c64a8dae1d960ed7120850d583be78c67ce09b7581ec1803f` |
| 6 | `theorem` | [restrictLe₂_comp_restrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/restrictle-comp-restrictle--d9a4fa957daf84afa9242ce0.md) | 51 | `result-track:d9a4fa957daf84afa9242ce04c233050f2136549070688f7670c9637b9ab1959` |
| 7 | `lemma` | [dependsOn_restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/dependson-restrictle--e42fd2644088c45ccef87899.md) | 54 | `result-track:e42fd2644088c45ccef8789957ea158ea4807a529cf7e5ec50ae08110274e7f7` |
| 8 | `def` | [frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle--e6b4166ed12655380f8e0f78.md) | 66 | `declaration-track:e6b4166ed12655380f8e0f788008cdbc9150dcabc4e806bb48be939f01f29eb3` |
| 9 | `lemma` | [frestrictLe_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle-apply--e9bffcbd01e8ce1ca126a783.md) | 69 | `result-track:e9bffcbd01e8ce1ca126a7839ff25a9edce6ca01bc3ea7bc824121eee4ff4639` |
| 10 | `def` | [frestrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle--c30a4bbbe22d529fce5a5326.md) | 73 | `declaration-track:c30a4bbbe22d529fce5a53266f3fb0ba517c16c1d497e723570d70bb50757ab5` |
| 11 | `lemma` | [frestrictLe₂_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle-apply--e4499e3140cb35d5936abe0c.md) | 76 | `result-track:e4499e3140cb35d5936abe0c9faefc2818ceca245721be002b3c1ba86cca75ac` |
| 12 | `theorem` | [frestrictLe₂_comp_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle-comp-frestrictle--756971a3ec0a8568a0158015.md) | 79 | `result-track:756971a3ec0a8568a015801554c17d9c86e8d43374186ab5cb1a7572824ac175` |
| 13 | `theorem` | [frestrictLe₂_comp_frestrictLe₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle-comp-frestrictle--c448991f70f37f5f262d7881.md) | 82 | `result-track:c448991f70f37f5f262d78817f4b0177dc543d00f26b126ed099682eed0e2c2a` |
| 14 | `theorem` | [piCongrLeft_comp_restrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/picongrleft-comp-restrictle--224d5890462838b8008a5f99.md) | 85 | `result-track:224d5890462838b8008a5f996e61a3da58eaa0f980c0db8d251e9e6e2798a7f2` |
| 15 | `theorem` | [piCongrLeft_comp_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/picongrleft-comp-frestrictle--875cfb7479e1dce1e21addde.md) | 89 | `result-track:875cfb7479e1dce1e21addde5c5524a880cf558f94eb0441c72db5b733f9faa3` |
| 16 | `lemma` | [frestrictLe_updateFinset_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle-updatefinset-of-le--da3104bf1d0f195448b78b8e.md) | 99 | `result-track:da3104bf1d0f195448b78b8ee72cf11ad660744d5c052c73af597180cdb5f82a` |
| 17 | `lemma` | [frestrictLe_updateFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/frestrictle-updatefinset--8c27c3655c3ff2707676a8e1.md) | 103 | `result-track:8c27c3655c3ff2707676a8e1297f34aa21cf5b7c1660f41a25c9ab421e4bb556` |
| 18 | `lemma` | [updateFinset_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/updatefinset-frestrictle--f1ec735828f828258f5fa7e1.md) | 107 | `result-track:f1ec735828f828258f5fa7e13c05fafd9a9cfc9bba9449165b37b5a239c8dccf` |
| 19 | `lemma` | [dependsOn_frestrictLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Restriction/Variante5b4a11a28459b6bfb11baa134cdeb5876e9aa856750641e9bd0b47d75d8f77e.lean/declarations/dependson-frestrictle--c67cb5046d4f6db0ff9622b4.md) | 112 | `result-track:c67cb5046d4f6db0ff9622b40286296cffc01a8a75ce04043e8ccfb315d06179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
