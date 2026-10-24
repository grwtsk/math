# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Zorn.Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec50c5d66868eeed110ed13809f397202f1fc5f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec50c5d66868eeed110ed13809f397202f1fc5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLattice.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximal_of_chains_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/exists-maximal-of-chains-bounded--5068a1a01be84349d55a8547.md) | 72 | `result-track:5068a1a01be84349d55a8547550f27d068026c80f64ea3c972b612558ed3d97d` |
| 2 | `theorem` | [exists_maximal_of_nonempty_chains_bounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/exists-maximal-of-nonempty-chains-bounded--66b32b3200d99f0a8b32ba65.md) | 86 | `result-track:66b32b3200d99f0a8b32ba6526af2229cf1ac4a9916f59f3b5f6eb6e6d105500` |
| 3 | `theorem` | [zorn_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-le--83a4677f4e1d180247c3937d.md) | 99 | `result-track:83a4677f4e1d180247c3937d3e7b07bd0eab93ca9662fe4f9a8e35fbc378278d` |
| 4 | `theorem` | [zorn_le_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-le-nonempty--cee644c86b04b1db66d04f14.md) | 102 | `result-track:cee644c86b04b1db66d04f14b5f0d4788db4e225c9d47be9b7c484081ea24fcc` |
| 5 | `theorem` | [zorn_le₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-le--f94758a96b8947abf0663fb2.md) | 106 | `result-track:f94758a96b8947abf0663fb2b372a468642fec204c39049140b2e1d6e02bb7a4` |
| 6 | `theorem` | [zorn_le_nonempty₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-le-nonempty--c5c0f81962db007128e94031.md) | 118 | `result-track:c5c0f81962db007128e940317123a81606d2c64647ae962fec585b5896222155` |
| 7 | `theorem` | [zorn_le_nonempty_Ici₀](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-le-nonempty-ici--68b17cfffefdcd2e4fd08f2a.md) | 129 | `result-track:68b17cfffefdcd2e4fd08f2ae4fde897b14a81b3fba2a591de49e92acc9e0776` |
| 8 | `theorem` | [zorn_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-subset--aefefb5d35136a62b12e019a.md) | 139 | `result-track:aefefb5d35136a62b12e019ac7a63165e00a16dbbd1fba5573242656654c71ef` |
| 9 | `theorem` | [zorn_subset_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-subset-nonempty--c6040dc4b045e3222aaf5b73.md) | 143 | `result-track:c6040dc4b045e3222aaf5b736445748ded284709029b2904fb2561c34e3bf965` |
| 10 | `theorem` | [zorn_superset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-superset--6aa296ee2f505324e57f7850.md) | 148 | `result-track:6aa296ee2f505324e57f7850ecfdfa27022d6530205708fc27770b983f5b5c7a` |
| 11 | `theorem` | [zorn_superset_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/zorn-superset-nonempty--882cf2105f069cb025ddb149.md) | 152 | `result-track:882cf2105f069cb025ddb149e985837a0ad64019fabf454ffe4f889824dd6d28` |
| 12 | `theorem` | [IsChain.exists_maxChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/ischain-exists-maxchain--628de2c0a9136c4f37b6fa1a.md) | 159 | `result-track:628de2c0a9136c4f37b6fa1acca43a7b1694dbfc47a1fc2d4a2a37324bd372d8` |
| 13 | `lemma` | [_root_.IsChain.exists_subset_flag](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/root-ischain-exists-subset-flag--7d6150b5865e3bd094b9dcdf.md) | 180 | `result-track:7d6150b5865e3bd094b9dcdfec2a10bd984e54f4e2fbb5fbb65ca8b471fd4f5f` |
| 14 | `lemma` | [exists_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/exists-mem--0f336495d6d3ac04a695b63e.md) | 183 | `result-track:0f336495d6d3ac04a695b63e1a51e957b46b5348b35cf553384e5e3f046192e6` |
| 15 | `lemma` | [exists_mem_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/exists-mem-mem--d831766c33e180df49e533f3.md) | 187 | `result-track:d831766c33e180df49e533f33ab6871f8fdd6a7f4c11164cc149401fed84c0ec` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant443e53bdcec3972a986043330f86bd5347951e18cca19172fc4fe28f54c89a08.lean/declarations/instance--37c893b8f950c08bd754d074.md) | 190 | `declaration-track:37c893b8f950c08bd754d074d7c5b51e115c85634aefa23226833fc9af8ee68e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
