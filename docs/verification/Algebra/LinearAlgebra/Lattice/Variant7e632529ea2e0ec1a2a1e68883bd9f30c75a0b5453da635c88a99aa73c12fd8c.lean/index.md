# Verification target: GRWTSK.Algebra.LinearAlgebra.Lattice.Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f291b5d1fa3752061af0c980c2d2262cc60d0702",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f291b5d1fa3752061af0c980c2d2262cc60d0702`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.Localization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.PID` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/islattice--da495944d0caec2b6fa4f078.md) | 62 | `declaration-track:da495944d0caec2b6fa4f078a140331ff16c05fac9e2c81c9dc63fb8ce722508` |
| 2 | `instance` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/finite--fdad51500dfb1d4fe1ce1e0f.md) | 77 | `declaration-track:fdad51500dfb1d4fe1ce1e0fb9ff9ff30d3903bea93e552003a4d7de2a1614e6` |
| 3 | `instance` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/smul--1453db5f7da33db467c0fd07.md) | 82 | `declaration-track:1453db5f7da33db467c0fd073fc2e9ead9915ecc79759529ba6620efa279129c` |
| 4 | `lemma` | [of_le_of_isLattice_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/of-le-of-islattice-of-fg--254c2b14755a0ddc4397f89c.md) | 95 | `result-track:254c2b14755a0ddc4397f89c5c972ef7e388689896f9854aa72c6bf87f44d702` |
| 5 | `instance` | [sup](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/sup--27bbf800e75648b8bf99721c.md) | 101 | `declaration-track:27bbf800e75648b8bf99721ce5ce7dd21eb5ad41d3e8a9b45934a54004c3f8aa` |
| 6 | `lemma` | [_root_.Submodule.span_range_eq_top_of_injective_of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/root-submodule-span-range-eq-top-of-injective-of-rank-le--50dbb2a126b245ed5069843a.md) | 111 | `result-track:50dbb2a126b245ed5069843a74dfd77f5bf72aa83b03b4a897af02e1be2b7991` |
| 7 | `def` | [_root_.Basis.extendOfIsLattice](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/root-basis-extendofislattice--d90b1bcbb19a5e95cc2284e3.md) | 132 | `declaration-track:d90b1bcbb19a5e95cc2284e31852890892bed4f87bade7db66693bf148da79c8` |
| 8 | `lemma` | [_root_.Basis.extendOfIsLattice_apply](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/root-basis-extendofislattice-apply--46be283360c7c6df2742c3b0.md) | 146 | `result-track:46be283360c7c6df2742c3b0f59c7856097e47e7cca0b4df37e4a858ec7817b0` |
| 9 | `lemma` | [of_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/of-rank-le--a1bcaf53233b7f6cab16e9c0.md) | 155 | `result-track:a1bcaf53233b7f6cab16e9c0eb9616afdd1cf95e5867bb03346450d0e3f0e949` |
| 10 | `instance` | [free](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/free--1e3fb515df9eb6b512eaa752.md) | 166 | `declaration-track:1e3fb515df9eb6b512eaa752d6af26094449f298619309aa316b1ab1d25820c1` |
| 11 | `lemma` | [rank'](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/rank--73b757ce3bb6d3a6ae026b17.md) | 172 | `result-track:73b757ce3bb6d3a6ae026b170476794580e233705f90dcfd7f07a4ad4ff91a43` |
| 12 | `lemma` | [rank_of_pi](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/rank-of-pi--83975231ccfcfb87db380ec7.md) | 178 | `result-track:83975231ccfcfb87db380ec779aae65dfd7c40487d9945a6b7d26399eb4bc682` |
| 13 | `lemma` | [finrank_of_pi](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/finrank-of-pi--2d46d612d2efff36cbd3f60f.md) | 184 | `result-track:2d46d612d2efff36cbd3f60f7623b34f8cc3de6bf996b44a9277bff4e20872aa` |
| 14 | `instance` | [inf](../../../../../mathematics/Algebra/LinearAlgebra/Lattice/Variant7e632529ea2e0ec1a2a1e68883bd9f30c75a0b5453da635c88a99aa73c12fd8c.lean/declarations/inf--de76d11ec23b7394aaec5626.md) | 189 | `declaration-track:de76d11ec23b7394aaec5626f202a1c2b745838809c09eba2a253b030f6038ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
