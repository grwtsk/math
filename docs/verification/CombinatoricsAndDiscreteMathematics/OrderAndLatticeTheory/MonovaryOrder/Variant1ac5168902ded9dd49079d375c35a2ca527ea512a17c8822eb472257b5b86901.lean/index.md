# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MonovaryOrder.Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c3df235ebf4411d22b4b21a28314065fc0c379f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c3df235ebf4411d22b4b21a28314065fc0c379f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Monotone.Monovary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonovaryOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/monovaryorder--ddcc4ca4c9064798b4c27de6.md) | 26 | `declaration-track:ddcc4ca4c9064798b4c27de6c64dce9d85c7128afdc27978ac6ea024a2361aa5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/instance--a6d5f09a36ebb6a7544fc859.md) | 29 | `declaration-track:a6d5f09a36ebb6a7544fc85958ec641428330e6e571cae907e60e582719aed92` |
| 3 | `lemma` | [monovaryOn_iff_exists_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/monovaryon-iff-exists-monotoneon--3dc33150af6f3a7efe386051.md) | 40 | `result-track:3dc33150af6f3a7efe386051bbc6e29ba0a1c6bca0a34d36708355b66857d218` |
| 4 | `lemma` | [antivaryOn_iff_exists_monotoneOn_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/antivaryon-iff-exists-monotoneon-antitoneon--4fdf6ab8b1eb4aeb3ba8f64e.md) | 53 | `result-track:4fdf6ab8b1eb4aeb3ba8f64e98d8175e298e813e3caf90820e17bfd80f6ed0c7` |
| 5 | `lemma` | [monovaryOn_iff_exists_antitoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/monovaryon-iff-exists-antitoneon--72baa1dd83469ef02e16d5db.md) | 57 | `result-track:72baa1dd83469ef02e16d5dbe61ed9ea0a8239b86a255069c48bf9f541b77273` |
| 6 | `lemma` | [antivaryOn_iff_exists_antitoneOn_monotoneOn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/antivaryon-iff-exists-antitoneon-monotoneon--dfdd07ca43341adf87bb1ede.md) | 62 | `result-track:dfdd07ca43341adf87bb1edec3a482e7032de6cca7f54e43b5ab76c269e40c4b` |
| 7 | `lemma` | [monovary_iff_exists_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/monovary-iff-exists-monotone--1b28aa554e9bb5383c1e9b32.md) | 66 | `result-track:1b28aa554e9bb5383c1e9b32bfce8f3fd48816fd97424b003805730d1ae3196a` |
| 8 | `lemma` | [monovary_iff_exists_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/monovary-iff-exists-antitone--638702fcfd383a034e74471a.md) | 70 | `result-track:638702fcfd383a034e74471a159d50dbcd5c6ae5a7fc7c828486814326bc78dd` |
| 9 | `lemma` | [antivary_iff_exists_monotone_antitone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/antivary-iff-exists-monotone-antitone--789154d53a9368003e36467e.md) | 74 | `result-track:789154d53a9368003e36467ea720daf281d4208bbb44b4729ed616cfe78a06bb` |
| 10 | `lemma` | [antivary_iff_exists_antitone_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant1ac5168902ded9dd49079d375c35a2ca527ea512a17c8822eb472257b5b86901.lean/declarations/antivary-iff-exists-antitone-monotone--80f0d5f67467e05f31cb7a5b.md) | 78 | `result-track:80f0d5f67467e05f31cb7a5bcd69401ca0c83abeb06bc480589b28b1ced0d393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
