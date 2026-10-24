# Verification target: GRWTSK.Algebra.AlgebraicClosure.Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e9e534da228d65a181c54805e278e4d0dc068b",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e9e534da228d65a181c54805e278e4d0dc068b`.

Source path: `GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Normal.Closure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Algebraic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/algebraicclosure--8dd1ed56b1b8db1b90b16452.md) | 36 | `declaration-track:8dd1ed56b1b8db1b90b16452d136f927846be703351923924e4ecaecc8ec5f47` |
| 2 | `theorem` | [algebraicClosure_toSubalgebra](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/algebraicclosure-tosubalgebra--523339256e7e410420b3c81f.md) | 41 | `result-track:523339256e7e410420b3c81ffa141d5d7bac5a27cc051ba39a0b7aa1d69b2908` |
| 3 | `theorem` | [mem_algebraicClosure_iff'](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/mem-algebraicclosure-iff--e09e458d1829eb36444f59f5.md) | 46 | `result-track:e09e458d1829eb36444f59f55c6c6ad0dd1c1813a03ab41b6d65e8ac42761b21` |
| 4 | `theorem` | [mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/mem-algebraicclosure-iff--9ab378414299f3dd98a9f7e6.md) | 51 | `result-track:9ab378414299f3dd98a9f7e638bd381e84a8144fd8b293396aea960ad10bba77` |
| 5 | `theorem` | [map_mem_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/map-mem-algebraicclosure-iff--8a3032cfbf304d0b966518cd.md) | 56 | `result-track:8a3032cfbf304d0b966518cddea32f61f7b794a005411c52d9218883c4a3662b` |
| 6 | `theorem` | [comap_eq_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/comap-eq-of-alghom--4857e5e82988355ef2af86c2.md) | 64 | `result-track:4857e5e82988355ef2af86c2cd1cf98789af0b35553e9e2ddb6752e88e810724` |
| 7 | `theorem` | [map_le_of_algHom](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/map-le-of-alghom--fca4f5ef49069a6bcba7082b.md) | 71 | `result-track:fca4f5ef49069a6bcba7082b31432723c1d9bcbe6494eb2113c3ef04c458c157` |
| 8 | `theorem` | [map_eq_of_algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/map-eq-of-algebraicclosure-eq-bot--91f339dd0661bc766f98e442.md) | 79 | `result-track:91f339dd0661bc766f98e4423aec5dbed11ae782ed5aec2ad6278a1db0e00e83` |
| 9 | `theorem` | [map_eq_of_algEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/map-eq-of-algequiv--12d4f102e59bfc6071e2338e.md) | 89 | `result-track:12d4f102e59bfc6071e2338e83fe739aac504897fcc704ed047bdbd48c9cb4d5` |
| 10 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/algequivofalgequiv--00db8c6c6ea509fc3d26a0e0.md) | 96 | `declaration-track:00db8c6c6ea509fc3d26a0e0039c8c27f438415cb81e0cf77ea45ea83b24195e` |
| 11 | `instance` | [isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/isalgebraic--1e7c5a15d4e40d7a97e6c215.md) | 105 | `declaration-track:1e7c5a15d4e40d7a97e6c21516dd40fc9beab3beefcb26ffeabbe19b64c0699a` |
| 12 | `instance` | [isIntegralClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/isintegralclosure--56f7800d56f6dad35eb959b9.md) | 109 | `declaration-track:56f7800d56f6dad35eb959b98d67ff45dd0e542f80631d4a5d7073fe2346b78a` |
| 13 | `theorem` | [Transcendental.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/transcendental-algebraicclosure--421408986d80e28cc42fd130.md) | 114 | `result-track:421408986d80e28cc42fd130ad5143971af24c9976da5fd5d5ded65364119d1c` |
| 14 | `theorem` | [le_algebraicClosure'](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/le-algebraicclosure--7423df71cc81277b6f7717d4.md) | 122 | `result-track:7423df71cc81277b6f7717d4a132421fd952dfee45a29e62a9c08f7f232bc7ac` |
| 15 | `theorem` | [le_algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/le-algebraicclosure--a5640cd30936b2e83fe1952e.md) | 129 | `result-track:a5640cd30936b2e83fe1952e6eea384b373070a2b457687bb7ca644c70390154` |
| 16 | `theorem` | [le_algebraicClosure_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/le-algebraicclosure-iff--aec5a57a47fb0f6a6f620536.md) | 134 | `result-track:aec5a57a47fb0f6a6f6205364fa832802ec1010e8e73ffd946f6dd5d257b5cfc` |
| 17 | `theorem` | [algebraicClosure_eq_bot](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/algebraicclosure-eq-bot--4786e01e6d4c0eb00ccec8be.md) | 144 | `result-track:4786e01e6d4c0eb00ccec8be508c29e45cda7473df02fb8e5cde4d5991a9c1d0` |
| 18 | `theorem` | [normalClosure_eq_self](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/normalclosure-eq-self--75ec7c8b65e755ffc6b408e7.md) | 150 | `result-track:75ec7c8b65e755ffc6b408e7d261989433411a17a6a281dbf3ce6c860ca0b44c` |
| 19 | `theorem` | [IsAlgClosed.algebraicClosure_eq_bot_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/isalgclosed-algebraicclosure-eq-bot-iff--5411b93ab640e2404b9574be.md) | 160 | `result-track:5411b93ab640e2404b9574bee97313b3311572ea30177c155fb84a287ef0ba55` |
| 20 | `theorem` | [IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/intermediatefield-isalgebraic-adjoin-iff-isalgebraic--642ee548c0e47b16a4f5db4c.md) | 171 | `result-track:642ee548c0e47b16a4f5db4c9b0de5e16b440128a16a60aeb8abec420ac01bfd` |
| 21 | `instance` | [isAlgClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/isalgclosure--8db757a810192ffc575b0faa.md) | 180 | `declaration-track:8db757a810192ffc575b0faa4b2551cf1a4fc212da2eff91029fa150f980e12b` |
| 22 | `theorem` | [eq_top_iff](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/eq-top-iff--ab8f03b1b51db59944100dda.md) | 186 | `result-track:ab8f03b1b51db59944100dda7e57fa3e58ee8673e777944e0da2832266aad41b` |
| 23 | `theorem` | [le_restrictScalars](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/le-restrictscalars--3c054eff404673e756daf78c.md) | 192 | `result-track:3c054eff404673e756daf78caa78931eaba1eb1ffe61cecb4f7689981fceacfd` |
| 24 | `theorem` | [eq_restrictScalars_of_isAlgebraic](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/eq-restrictscalars-of-isalgebraic--91ef411c3199345cb44aaaca.md) | 198 | `result-track:91ef411c3199345cb44aaaca4e7d933d8275f18c4b88db75a08fd203763bdab9` |
| 25 | `theorem` | [adjoin_le](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/adjoin-le--7a61dc07dab50ea0eeeceb72.md) | 205 | `result-track:7a61dc07dab50ea0eeeceb72938c38ca7901d50cfbeb59d430672772cfe3b6a5` |
| 26 | `theorem` | [Splits.algebraicClosure](../../../../mathematics/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean/declarations/splits-algebraicclosure--3a38f5f16a6f20ef2224b16f.md) | 216 | `result-track:3a38f5f16a6f20ef2224b16f222129f65e3c20fa3a89bff9bc5f4488b8488db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
