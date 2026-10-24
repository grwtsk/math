# Verification target: GRWTSK.Analysis.AbelRuffini.Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69ebfe2a86845d9aaf45c123838043f5f28f28c4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69ebfe2a86845d9aaf45c123838043f5f28f28c4`.

Source path: `GRWTSK/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Polynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.AbelRuffini` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.Criterion` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Int.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.RootsOfUnity.Minpoly` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Φ](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/anonymous--5f359e56ad8593f42c95bcf5.md) | 50 | `declaration-track:5f359e56ad8593f42c95bcf51b863c7bcfce31b74d95e9737adfd38b703613c9` |
| 2 | `theorem` | [map_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/map-phi--b0aea83e78678c3bb440db08.md) | 56 | `result-track:b0aea83e78678c3bb440db081f5207aae39c7ee1464e5bda7a246e9a78bd744e` |
| 3 | `theorem` | [coeff_zero_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/coeff-zero-phi--b44d7d9766703b86752c4649.md) | 59 | `result-track:b44d7d9766703b86752c46492934eb77d3ada23239cfd65d199a0b59df2260da` |
| 4 | `theorem` | [coeff_five_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/coeff-five-phi--d13222e04fe4efcb7eda849c.md) | 62 | `result-track:d13222e04fe4efcb7eda849c194abbb966af3f9ed00aef1b4b6a691c273da03a` |
| 5 | `theorem` | [degree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/degree-phi--7e2a796adda9794b99620ee7.md) | 67 | `result-track:7e2a796adda9794b99620ee76ab41c290c7a0bb0878d1b1f88351d574e2023ac` |
| 6 | `theorem` | [natDegree_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/natdegree-phi--d804d9312c3c963cb5897f7b.md) | 74 | `result-track:d804d9312c3c963cb5897f7b56f65b1e02868901b8cb0f64c8f32cde845bfdd8` |
| 7 | `theorem` | [leadingCoeff_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/leadingcoeff-phi--d5b235a8f5bb952177186eed.md) | 77 | `result-track:d5b235a8f5bb952177186eed64d3f38ded525913bad149352fca78f6515304a8` |
| 8 | `theorem` | [monic_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/monic-phi--e1b6ac478dd27d36b5248beb.md) | 80 | `result-track:e1b6ac478dd27d36b5248beb6fc306527dabad4ec011f3bde06ef51d4d32c73c` |
| 9 | `theorem` | [irreducible_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/irreducible-phi--d5ea2d852eda52151e6d0a8c.md) | 83 | `result-track:d5ea2d852eda52151e6d0a8cd4dbe3923fc38537770b861cfb8763feb1fd0cc0` |
| 10 | `theorem` | [real_roots_Phi_le](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/real-roots-phi-le--afca6543f380df3b150e5472.md) | 105 | `result-track:afca6543f380df3b150e547252a72b94ca5cccf2b2bdab584679a08b6e212a3d` |
| 11 | `theorem` | [real_roots_Phi_ge_aux](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/real-roots-phi-ge-aux--bd6ad0154d25a807ed7aa842.md) | 115 | `result-track:bd6ad0154d25a807ed7aa842b8867fc6d2e5f29808faff418c628e2d67829a3a` |
| 12 | `theorem` | [real_roots_Phi_ge](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/real-roots-phi-ge--2be7f5a59defde7224764bd0.md) | 144 | `result-track:2be7f5a59defde7224764bd0b1433bd711f2457d11560d775217b3694375bb33` |
| 13 | `theorem` | [complex_roots_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/complex-roots-phi--787e03f364a24130f8f195d3.md) | 153 | `result-track:787e03f364a24130f8f195d3b39b2a108d7e65f71db8dc97fe911984abfba795` |
| 14 | `theorem` | [gal_Phi](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/gal-phi--c1d3cbe590737e99a3595937.md) | 156 | `result-track:c1d3cbe590737e99a35959373365d7568919403c88001264422d21f8dad14986` |
| 15 | `theorem` | [not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/not-solvable-by-rad--4b5733d26c0991b5b3958e1e.md) | 165 | `result-track:4b5733d26c0991b5b3958e1e09707ce7198fffa65989ba04b449b7f631749d80` |
| 16 | `theorem` | [not_solvable_by_rad'](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/not-solvable-by-rad--e21a57aa19220ec3b79918b5.md) | 174 | `result-track:e21a57aa19220ec3b79918b56c910c150c98285d668f81af41a1bf128f982930` |
| 17 | `theorem` | [exists_not_solvable_by_rad](../../../../mathematics/Analysis/AbelRuffini/Variante7607c6fbcb4fc8281309d84f9a41590496800905bac367ff1e33e688d0d76e4.lean/declarations/exists-not-solvable-by-rad--9ac29b6bcb50921ed372bf48.md) | 178 | `result-track:9ac29b6bcb50921ed372bf48a815260d8d9bdfd788da0ac83e42aed52c0ff526` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
