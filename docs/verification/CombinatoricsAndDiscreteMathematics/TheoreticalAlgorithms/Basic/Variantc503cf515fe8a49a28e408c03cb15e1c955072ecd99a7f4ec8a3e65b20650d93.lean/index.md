# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7899d67cfdd07e1b2421807d89098aad22d70a1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7899d67cfdd07e1b2421807d89098aad22d70a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.UInt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [allDiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/alldiff--35e417da172b3d99149fd19c.md) | 23 | `declaration-track:35e417da172b3d99149fd19c43691d1633fdd1b84dbe54fa870da9a5919eb5a9` |
| 2 | `def` | [uset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/uset--56b32dae1ae2f891721f2239.md) | 30 | `declaration-track:56b32dae1ae2f891721f2239c023f09c5b70de93259d44825e313eadb81bfd98` |
| 3 | `theorem` | [USize.succ_toNat_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/usize-succ-tonat-of-lt--56bd17a3724ed841385a0b33.md) | 33 | `result-track:56bd17a3724ed841385a0b33e07ca63056435fe7c8921eeddafac664a6b9c6d9` |
| 4 | `def` | [scanlMFast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanlmfast--6598461c2789f8cd923980db.md) | 43 | `declaration-track:6598461c2789f8cd923980db3cf7b88f666adb1c892f45da631e62d1d3c9cea3` |
| 5 | `def` | [scanlMUnsafe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanlmunsafe--7767a8cc11ba3dc1672e24e2.md) | 67 | `declaration-track:7767a8cc11ba3dc1672e24e2ed2727ba1984613940897bf9962451b42fd36426` |
| 6 | `def` | [scanlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanlm--cf4bbba8ba623fc50a795778.md) | 75 | `declaration-track:cf4bbba8ba623fc50a795778ad28863bf05d74642b06726dd59c0f2c136d7d32` |
| 7 | `def` | [scanrMFast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanrmfast--81cd80ce963641dbc3a65ebd.md) | 89 | `declaration-track:81cd80ce963641dbc3a65ebda3a38c9f7cd2d975d06886fc6e54a09025822d6c` |
| 8 | `def` | [scanrMUnsafe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanrmunsafe--ed50626d560917af818d03a9.md) | 112 | `declaration-track:ed50626d560917af818d03a9c3d7e0912e5b99909944db471750179c0ebcd3d0` |
| 9 | `def` | [scanrM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanrm--dd771ac85f6718bb6b4f6b7e.md) | 120 | `declaration-track:dd771ac85f6718bb6b4f6b7e8346f50fa7b2dbb9ee5e6baeb118e1c5527809f2` |
| 10 | `def` | [scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanl--df017e05cebaae8115de3308.md) | 137 | `declaration-track:df017e05cebaae8115de33082443d5461293bf75711cc860e2518ceecbbaa29f` |
| 11 | `def` | [scanr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc503cf515fe8a49a28e408c03cb15e1c955072ecd99a7f4ec8a3e65b20650d93.lean/declarations/scanr--6f65bcc3864b629b6afa0cdc.md) | 144 | `declaration-track:6f65bcc3864b629b6afa0cdcac84e8e8fd4d78fffa2a5c96487618f913ab80c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
