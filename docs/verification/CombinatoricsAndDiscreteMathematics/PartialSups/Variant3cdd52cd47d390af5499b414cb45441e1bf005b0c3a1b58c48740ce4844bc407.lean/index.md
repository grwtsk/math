# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PartialSups.Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e7a0e55ee431198a67930ee6876ffa04f9a95f1",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e7a0e55ee431198a67930ee6876ffa04f9a95f1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups--67e6657bb65badc58e60f74a.md) | 54 | `declaration-track:67e6657bb65badc58e60f74a7c1dbbbd7fbaab05bb89bd28b15b0c604e059616` |
| 2 | `theorem` | [partialSups_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-zero--5af9c66d2eb4ee6f978d2af4.md) | 60 | `result-track:5af9c66d2eb4ee6f978d2af4097b407d8aa0090504c6e9ea1412e29c70234118` |
| 3 | `theorem` | [partialSups_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-succ--d02ffdedea7d043bc65c499f.md) | 65 | `result-track:d02ffdedea7d043bc65c499fe5e6f3802546fa1b41d4ded2d5c3c10d3713f916` |
| 4 | `theorem` | [le_partialSups_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/le-partialsups-of-le--9808da8016dea5cb3ac61971.md) | 70 | `result-track:9808da8016dea5cb3ac61971d5bb29a4d872590195425a33b55363c302be5c77` |
| 5 | `theorem` | [le_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/le-partialsups--70295fe17a65065475f8d3f7.md) | 78 | `result-track:70295fe17a65065475f8d3f7967c94b4e83a7886b5128f4603812fcfb5c1f261` |
| 6 | `theorem` | [partialSups_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-le--cd0023aa67fa8791d7f5c2df.md) | 81 | `result-track:cd0023aa67fa8791d7f5c2df460b02a599850726bc71902d626a9763234fccd3` |
| 7 | `theorem` | [bddAbove_range_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/bddabove-range-partialsups--60fbd4b5adda2f345fd0843b.md) | 89 | `result-track:60fbd4b5adda2f345fd0843b38bfd0ed564ff1d3bd3d8f6f201a1ce8df239082` |
| 8 | `theorem` | [Monotone.partialSups_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/monotone-partialsups-eq--9d2e84f750912ad61c468b6c.md) | 100 | `result-track:9d2e84f750912ad61c468b6c64b769216a5d981a09ba6eb601a2493c7f804ddb` |
| 9 | `theorem` | [partialSups_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-mono--2c9a00366a0ff27aa4329fb3.md) | 107 | `result-track:2c9a00366a0ff27aa4329fb36b6f24c4e8c0a9cff30d4a18b9931c099d6caa84` |
| 10 | `def` | [partialSups.gi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-gi--d88842a6e0ea04261de24a3f.md) | 116 | `declaration-track:d88842a6e0ea04261de24a3ffd17f517ef28ff681b530df95b53c88f3a21b400` |
| 11 | `theorem` | [partialSups_eq_sup'_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-eq-sup-range--0ed3f536115632a494fbdfcc.md) | 127 | `result-track:0ed3f536115632a494fbdfccb34b8bb270854c6e10c53de51d22d6ecdcb21571` |
| 12 | `theorem` | [partialSups_eq_sup_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-eq-sup-range--da9baa33e172fd7000afaf96.md) | 138 | `result-track:da9baa33e172fd7000afaf96ff97a6f9a20bb6615e40b6bae8ad873ba2ad5c5d` |
| 13 | `theorem` | [partialSups_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-disjoint-of-disjoint--59b10fe4def582bec44c3f0c.md) | 148 | `result-track:59b10fe4def582bec44c3f0c4cc47bd5ed37617e47ab34d5dd8664b96c6498e4` |
| 14 | `theorem` | [partialSups_eq_ciSup_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-eq-cisup-iic--b20dbc6b4ab0a1197c66158b.md) | 160 | `result-track:b20dbc6b4ab0a1197c66158bf6894c08dd4dcbae1af9ce521fb85d9e749a1a35` |
| 15 | `theorem` | [ciSup_partialSups_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/cisup-partialsups-eq--9b5ebb8c525006bf4faefa8c.md) | 167 | `result-track:9b5ebb8c525006bf4faefa8c9faa5d9f8d556cf21c0ac0a34a75361de920d514` |
| 16 | `theorem` | [partialSups_eq_biSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/partialsups-eq-bisup--9740cbe424594c4f439b5427.md) | 181 | `result-track:9740cbe424594c4f439b54279a3d4f3601222008e6d8ecaba9deb5967f8b8c14` |
| 17 | `theorem` | [iSup_partialSups_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/isup-partialsups-eq--9df5ca58174b403a9e65bbb1.md) | 186 | `result-track:9df5ca58174b403a9e65bbb105bdaf113f4809cd4cf38e92d19725fe35cf158b` |
| 18 | `theorem` | [iSup_le_iSup_of_partialSups_le_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/isup-le-isup-of-partialsups-le-partialsups--5e5b62cd80a63ebcce9795a2.md) | 190 | `result-track:5e5b62cd80a63ebcce9795a29ebf618bf7837d28305e4dccf296d680e4e57286` |
| 19 | `theorem` | [iSup_eq_iSup_of_partialSups_eq_partialSups](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PartialSups/Variant3cdd52cd47d390af5499b414cb45441e1bf005b0c3a1b58c48740ce4844bc407.lean/declarations/isup-eq-isup-of-partialsups-eq-partialsups--96fbb49a24f70f3d4f5acad1.md) | 196 | `result-track:96fbb49a24f70f3d4f5acad1fcc6e93f09ae2370e7305144f99af2807560b6dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
