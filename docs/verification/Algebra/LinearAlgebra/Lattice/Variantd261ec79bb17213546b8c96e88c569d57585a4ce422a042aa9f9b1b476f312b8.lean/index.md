# Verification target: GRWTSK.Algebra.LinearAlgebra.Lattice.Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11a3fbc9c897916b6b025056a1d23dc9b2de136",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11a3fbc9c897916b6b025056a1d23dc9b2de136`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Localization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/islattice--ad9bb253251e0f49505cf36c.md) | 70 | `declaration-track:ad9bb253251e0f49505cf36c80b466f25f629c601037dac6aee0bf5a9dc70869` |
| 2 | `instance` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/finite--2de6ce126a1fe7b5bc2aa904.md) | 85 | `declaration-track:2de6ce126a1fe7b5bc2aa904e27e8109edfb43db435518e31d88fea6e8ffa98d` |
| 3 | `instance` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/smul--acfb10295e9410046eadce8a.md) | 90 | `declaration-track:acfb10295e9410046eadce8af49ce947db0075eeaeff309cb2aa8419a8d0f90d` |
| 4 | `lemma` | [of_le_of_isLattice_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/of-le-of-islattice-of-fg--23eabc1093e230c097928376.md) | 103 | `result-track:23eabc1093e230c0979283761d85ed451312e72971e2eff8c274e58382725cde` |
| 5 | `instance` | [sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/sup--4bf3fabc25ff7f2978eae280.md) | 109 | `declaration-track:4bf3fabc25ff7f2978eae2807527ede791d9fe4877cf4954e999c39d2a579b08` |
| 6 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsLattice.Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.Submodule.span_range_eq_top_of_injective_of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/root-grwtsk-algebra-linearalgebra-islattice-variant7e632529ea2e0ec1a2a1e--460eb519f9310c730445fb92.md) | 119 | `result-track:460eb519f9310c730445fb927d7e067d7c258a2cad6839010a1aba49848f1321` |
| 7 | `def` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsLattice.Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.Basis.extendOfIsLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/root-grwtsk-algebra-linearalgebra-islattice-variant7e632529ea2e0ec1a2a1e--9e2cf5cf51568b2eb50518a7.md) | 140 | `declaration-track:9e2cf5cf51568b2eb50518a799a5c06fceb077499b4287e465329e4114a1cff8` |
| 8 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.IsLattice.Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.Basis.extendOfIsLattice_apply](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/root-grwtsk-algebra-linearalgebra-islattice-variant7e632529ea2e0ec1a2a1e--a11a8c6f9a1bec8450a74f12.md) | 154 | `result-track:a11a8c6f9a1bec8450a74f128081803a3ccb9ca023dc35fd260067fae5f7cfb1` |
| 9 | `lemma` | [of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/of-rank-le--ab0996d55f9281313d098595.md) | 163 | `result-track:ab0996d55f9281313d098595b704b64c182355fae577715c0b7f3cb9dee3a8e7` |
| 10 | `instance` | [free](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/free--c001fe7a87181417f890d86b.md) | 174 | `declaration-track:c001fe7a87181417f890d86b368b17037aac790df56d8e06757ccd3b364212bf` |
| 11 | `lemma` | [rank'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/rank--c04711ad51543a528a3e6df7.md) | 180 | `result-track:c04711ad51543a528a3e6df7e4c42ee37be5b5df07a4c22fa41c0e3180d5144a` |
| 12 | `lemma` | [rank_of_pi](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/rank-of-pi--b8fb8049f491247132b8b1b3.md) | 186 | `result-track:b8fb8049f491247132b8b1b3d2285963897477eefedfdf11c317038994dc4cc9` |
| 13 | `lemma` | [finrank_of_pi](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/finrank-of-pi--4cf4a30f557f299b82cd2579.md) | 192 | `result-track:4cf4a30f557f299b82cd2579a9ee55e69742e7427187b3b9ad92b18c20d71a8b` |
| 14 | `instance` | [inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variantd261ec79bb17213546b8c96e88c569d57585a4ce422a042aa9f9b1b476f312b8.lean/declarations/inf--b870f1c3595a7ba2caab6942.md) | 197 | `declaration-track:b870f1c3595a7ba2caab69429d6901034b7b15aaf6d8b1769617ca75fff4da46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
