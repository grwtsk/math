# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TMFFraming.Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e38cc6b58927a43bc451efbfd4b23be8917bebf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e38cc6b58927a43bc451efbfd4b23be8917bebf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TMFContract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/declarations/tmfcontract--3ec6bc88c4fbb039a30e930e.md) | 18 | `declaration-track:3ec6bc88c4fbb039a30e930edb533478d78b7fb6b421cf0974617f02f3927631` |
| 2 | `structure` | [WittenGenusWitness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/declarations/wittengenuswitness--48f8c6c70cdfa0ed9dfa04cb.md) | 26 | `declaration-track:48f8c6c70cdfa0ed9dfa04cb8f7037377a18c682b4d31cdb0f1c010b97e17a16` |
| 3 | `structure` | [TMFTorsionFraming](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/declarations/tmftorsionframing--0575dc9c6a1ffd54f8ab338d.md) | 32 | `declaration-track:0575dc9c6a1ffd54f8ab338dc0f03be570345236b5c7cdb42be9db278b0c62b9` |
| 4 | `theorem` | [tmf_has_witten_genus](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/declarations/tmf-has-witten-genus--c82db5fd114238dedfff79a9.md) | 40 | `result-track:c82db5fd114238dedfff79a9f420773a241255e8ac29a228b7ab4e766e5bc833` |
| 5 | `theorem` | [tmf_framing_trivialized](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TMFFraming/Variant0eb62f0725721bb496be3a4660850a303893ffbb345643231a602a3cb0074843.lean/declarations/tmf-framing-trivialized--ed2c356f0acd3eee4b783703.md) | 45 | `result-track:ed2c356f0acd3eee4b783703a79ac41b09981d94cd5566a7ac6842cb5195a245` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
