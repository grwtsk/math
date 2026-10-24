# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.SchurZassenhaus.Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb373081dc6bc8cc74c8ff72f3cfb74ca36d82c4",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb373081dc6bc8cc74c8ff72f3cfb74ca36d82c4`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Sylow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Transfer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuotientDiff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/quotientdiff--271a21c6989171376db3d374.md) | 39 | `declaration-track:271a21c6989171376db3d374602326ba8f81a86829b4398259739a3ec62eb78f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/instance--c091343ed29cc9585c443faf.md) | 46 | `declaration-track:c091343ed29cc9585c443faf465985f4774a66d32095b5247e6d0933a6da3de9` |
| 3 | `theorem` | [smul_diff_smul'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/smul-diff-smul--c9a80e64de11ba2560169725.md) | 50 | `result-track:c9a80e64de11ba2560169725a9a63f27f0baaad7e885961beda327fcf76dd353` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/instance--2ce54899796b5778594be021.md) | 74 | `declaration-track:2ce54899796b5778594be02117303eee9727f03883a3a3acdc9f8c3380d776f6` |
| 5 | `theorem` | [smul_diff'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/smul-diff--b53cbbf40a516baab1c6cdf4.md) | 88 | `result-track:b53cbbf40a516baab1c6cdf4e1cec42e39f564ecfc9983b75f8a8965d1ff19f2` |
| 6 | `theorem` | [eq_one_of_smul_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/eq-one-of-smul-eq-one--50be27baa141687536cbc31d.md) | 99 | `result-track:50be27baa141687536cbc31dd2ed8d724c36914e53a4125044276f1f34f4b8f5` |
| 7 | `theorem` | [exists_smul_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-smul-eq--9b0c71f37f81839b2049235d.md) | 110 | `result-track:9b0c71f37f81839b2049235db152dcf2132a4f5dc7c0d9d1d21b51aec3754f53` |
| 8 | `theorem` | [isComplement'_stabilizer_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/iscomplement-stabilizer-of-coprime--0bebf44d10e2910938742c5b.md) | 122 | `result-track:0bebf44d10e2910938742c5bc3f4387efff9edb8d0255cf83c11bdd5ff712980` |
| 9 | `theorem` | [exists_right_complement'_of_coprime_aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-right-complement-of-coprime-aux--f420a25039da95ccb3ee7d3e.md) | 128 | `result-track:f420a25039da95ccb3ee7d3e7d2a903d6c12e17fc19be479503540b12e7ca7bf` |
| 10 | `theorem` | [step0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step0--2ef4b8b4bd6edcc4c3022129.md) | 168 | `result-track:2ef4b8b4bd6edcc4c30221290fb4e0a756f321f5e9021ef3736835d657baae7a` |
| 11 | `theorem` | [step1](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step1--614b9479f5104c3af6f86166.md) | 173 | `result-track:614b9479f5104c3af6f86166bb4557897211a32a003e4064af64f93541af72aa` |
| 12 | `theorem` | [step2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step2--52f5c3a7a6f53c43430f4426.md) | 196 | `result-track:52f5c3a7a6f53c43430f4426ecd50fd42e61c7da087f5d4a7a231bb541b76e6d` |
| 13 | `theorem` | [step3](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step3--f46a135e426878646dd9acbb.md) | 226 | `result-track:f46a135e426878646dd9acbb79e1ab36e8adead74938189383fa6e5787915ffa` |
| 14 | `theorem` | [step4](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step4--82ec3f113d0a216fa4094cc5.md) | 237 | `result-track:82ec3f113d0a216fa4094cc506e75b6ab62e8872790cfdb253259ea9376da27e` |
| 15 | `theorem` | [step5](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step5--204644cdaad47ec42cb0183f.md) | 241 | `result-track:204644cdaad47ec42cb0183fc0bd69cb2f7f3e40b4a0b5d1f16628b30eaa18d0` |
| 16 | `theorem` | [step6](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step6--b87756aba98898980c92aae0.md) | 246 | `result-track:b87756aba98898980c92aae05db9b972494ebff489ff6249b5229cfa47a167bf` |
| 17 | `theorem` | [step7](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/step7--02892b3dcc232ced32241f75.md) | 255 | `result-track:02892b3dcc232ced32241f7549bf6ab7b03e111d1792ea75a426702fa118306e` |
| 18 | `theorem` | [exists_right_complement'_of_coprime_aux'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-right-complement-of-coprime-aux--45b012537f88de8dc79d9485.md) | 269 | `result-track:45b012537f88de8dc79d94855418d0103803b5e43ce4085878e8c350abb37624` |
| 19 | `theorem` | [exists_right_complement'_of_coprime_of_fintype](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-right-complement-of-coprime-of-fintype--4fbd4c14265ade15be7350c2.md) | 283 | `result-track:4fbd4c14265ade15be7350c2760f694e962b7dc1cd4ab52248386faef267c254` |
| 20 | `theorem` | [exists_right_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-right-complement-of-coprime--a217f80cb83fc03800bf6b58.md) | 291 | `result-track:a217f80cb83fc03800bf6b58d670faf6252c1fee40e49bd11d53b9d7f8b92a39` |
| 21 | `theorem` | [exists_left_complement'_of_coprime_of_fintype](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-left-complement-of-coprime-of-fintype--a89c9c0221b0f57a140e9131.md) | 314 | `result-track:a89c9c0221b0f57a140e91316873e4662260783d2a0556c52339b6834881d15a` |
| 22 | `theorem` | [exists_left_complement'_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/SchurZassenhaus/Variantb821166d1666f3b15a6b5c9d80d1676ab1595806b6d6b1234864ae3c15376548.lean/declarations/exists-left-complement-of-coprime--c87d9a3b90bdb9092c993c54.md) | 322 | `result-track:c87d9a3b90bdb9092c993c54b1764b4ee1f38f830d6c7b4e954fa1ee080e9d89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
