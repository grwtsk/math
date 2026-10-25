# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Random.Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f134aa64f918a0a7c8e64aeb1d461d3c73e840e6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f134aa64f918a0a7c8e64aeb1d461d3c73e840e6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Extra` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [RandomGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/randomgen--e6ee345298c2059d94b937fc.md) | 21 | `declaration-track:e6ee345298c2059d94b937fcd009b15be3e012a466a3918cd299dd94901bb753` |
| 2 | `structure` | [StdGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/stdgen--f95baf79b43931fb9df308fa.md) | 36 | `declaration-track:f95baf79b43931fb9df308fa6971be1efe0d838ec13e644207993b182904a7ee` |
| 3 | `def` | [mkStdGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/mkstdgen--37939e4fbbd27fa4f979eef3.md) | 41 | `declaration-track:37939e4fbbd27fa4f979eef3f60c5a65db8e413e2ae7f8c2ad793427855dc587` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/instance--b5cb9eeae665b91bf7bda3eb.md) | 47 | `declaration-track:b5cb9eeae665b91bf7bda3eb751893556578d975a97c9334e549bc42c76e62bf` |
| 5 | `def` | [stdRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/stdrange--588db45bcc3abd7aee87248d.md) | 50 | `declaration-track:588db45bcc3abd7aee87248d944ac76b50c13591b7332a392a113ade4e317d26` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/instance--04e70120e1232f008ed864e3.md) | 52 | `declaration-track:04e70120e1232f008ed864e3194f59b87bdaa8d7c66b5a96cd6b2b867598559a` |
| 7 | `def` | [stdNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/stdnext--970ff36a3ed6937f94e14347.md) | 58 | `declaration-track:970ff36a3ed6937f94e14347867ec8d839e785e6a021c61faff5529b564866d9` |
| 8 | `def` | [stdSplit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/stdsplit--b690171614e4e2dd3c879758.md) | 73 | `declaration-track:b690171614e4e2dd3c8797584dc0156fc0917faf88d1808de68609ce88d63813` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/instance--298b7bfcbc57d7b6f9a03470.md) | 82 | `declaration-track:298b7bfcbc57d7b6f9a034704fab9f0cf30e1ead21779502abc2ba0dc230ce70` |
| 10 | `def` | [randNatAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/randnataux--a5aec39a744e048c1baaf7a5.md) | 94 | `declaration-track:a5aec39a744e048c1baaf7a526327057bb3befb4d496e1e68319b047c428a852` |
| 11 | `def` | [randNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/randnat--754704131023707dc35cee68.md) | 102 | `declaration-track:754704131023707dc35cee682ee5f2da404246339a9ccde2d4015eb28b747ff4` |
| 12 | `def` | [randBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/randbool--cbeec4f20013e73fa107ea5d.md) | 120 | `declaration-track:cbeec4f20013e73fa107ea5d56ccf89e70f6ee0da1aeb27bdcabd25b1766fabb` |
| 13 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/initialize--be3030a5fb98bd3162dfc585.md) | 124 | `declaration-track:be3030a5fb98bd3162dfc58551903a21e0452caad5aba5743c44548025f16b2e` |
| 14 | `def` | [IO.setRandSeed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/io-setrandseed--0b19d7376a1f9bf48d0fd5ad.md) | 131 | `declaration-track:0b19d7376a1f9bf48d0fd5ad7b008fc95cfe7f6cd40b3d5de7c947f706125e91` |
| 15 | `def` | [IO.rand](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Random/Variant10bc81cac764ae9d426e141954af5a3ba21f89acd9130b437db39e01059a6ec2.lean/declarations/io-rand--8de39003692bd7df6f42fe93.md) | 140 | `declaration-track:8de39003692bd7df6f42fe93bc936ad9fc6443323fa4c78cc65c92d37e6acb51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
