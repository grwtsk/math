# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Percolation.Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1182bcc3f4abdc453fb8b89ff42dd1eee70abb8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1182bcc3f4abdc453fb8b89ff42dd1eee70abb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PercolationProfile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/percolationprofile--ae69a111f8fdc3e6e4911299.md) | 15 | `declaration-track:ae69a111f8fdc3e6e49112994274d186d3d9b1931832f4838666e4db62dacb75` |
| 2 | `def` | [percolate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/percolate--aae3a187d37232f91b369d0c.md) | 30 | `declaration-track:aae3a187d37232f91b369d0c24e6cd2677d40bcfa43cdfbd711e78223e5a2573` |
| 3 | `theorem` | [percolate_inflationary](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/percolate-inflationary--27aff320c4d8cde6a7d938df.md) | 37 | `result-track:27aff320c4d8cde6a7d938df760255d2ea6d82d6a838439ae5ea449368bd82b3` |
| 4 | `inductive` | [EffectiveStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/effectivestep--a2534f41a2b5540e21879a96.md) | 46 | `declaration-track:a2534f41a2b5540e21879a96a745eb2f570f20cd9a0951487a11d9e7a121b098` |
| 5 | `structure` | [StabilizationCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/stabilizationcertificate--5c3e616e43bc3f28cfce19fa.md) | 51 | `declaration-track:5c3e616e43bc3f28cfce19fa3216ae060a75ceeb900806e945a6100c48d2dba1` |
| 6 | `def` | [terminalIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/terminalideal--110995b7a4bfb0fb95dceb97.md) | 67 | `declaration-track:110995b7a4bfb0fb95dceb97cbd2a14583988ae054f9a888a8ffce77478e65a0` |
| 7 | `theorem` | [terminalIdeal_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/terminalideal-closed--7235071627f72d4961904e4b.md) | 74 | `result-track:7235071627f72d4961904e4b57c74fba0bc92d4a1fc81f33936e0fe88874340a` |
| 8 | `theorem` | [terminalIdeal_least](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean/declarations/terminalideal-least--220ee9eb0820fb75f9f48cad.md) | 83 | `result-track:220ee9eb0820fb75f9f48cad8a3e7db49fd801a6ded8c60d44e1a874e254cdad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
