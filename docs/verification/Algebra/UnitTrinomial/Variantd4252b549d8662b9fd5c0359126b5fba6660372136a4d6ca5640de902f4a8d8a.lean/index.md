# Verification target: GRWTSK.Algebra.UnitTrinomial.Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a226d8b8035b767644963453525c83d8b208e51",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/index.md) · [Full source](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a226d8b8035b767644963453525c83d8b208e51`.

Source path: `GRWTSK/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Mirror` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trinomial](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial--1bec627f64d314f85263a062.md) | 40 | `declaration-track:1bec627f64d314f85263a06298f1b404b216c5f8aa0ddd772388e39cdc4d56ad` |
| 2 | `theorem` | [trinomial_def](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-def--18db499100023f6ac189831d.md) | 43 | `result-track:18db499100023f6ac189831d0b26fbc1238c3aafd937ba05091b82233eb4597f` |
| 3 | `theorem` | [trinomial_leading_coeff'](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-leading-coeff--9385c15730779c8a3ced9a77.md) | 48 | `result-track:9385c15730779c8a3ced9a7706d38c134ad3e066199fba3ec5d0241690e3ad44` |
| 4 | `theorem` | [trinomial_middle_coeff](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-middle-coeff--fd24eed7f4a096ac6ef9a88b.md) | 53 | `result-track:fd24eed7f4a096ac6ef9a88b2ffca74cb8a4fbf1fc7238c23ee4e4f02f553d2b` |
| 5 | `theorem` | [trinomial_trailing_coeff'](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-trailing-coeff--10512ae61328cad9fc553de0.md) | 58 | `result-track:10512ae61328cad9fc553de0163e9c7384bc1e9bc1fb10ba355a04242988f35e` |
| 6 | `theorem` | [trinomial_natDegree](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-natdegree--cf1f9e8c7ace0194892793fd.md) | 63 | `result-track:cf1f9e8c7ace0194892793fd72ca84330492127a0f6e6ccb8d7538e84e5865c8` |
| 7 | `theorem` | [trinomial_natTrailingDegree](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-nattrailingdegree--96a4fad78b8c78b05702fc0c.md) | 76 | `result-track:96a4fad78b8c78b05702fc0cd5649c2a5b25f5cb5c7cdc4f954a17040a45349f` |
| 8 | `theorem` | [trinomial_leadingCoeff](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-leadingcoeff--bffb56c4218e545f68e3dfe5.md) | 89 | `result-track:bffb56c4218e545f68e3dfe5ef6af5b26707e428d3ab87cadf695ff3f47307eb` |
| 9 | `theorem` | [trinomial_trailingCoeff](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-trailingcoeff--50825afba9ca0a939b4f78b0.md) | 93 | `result-track:50825afba9ca0a939b4f78b022b156b8dd68981bbd798a05c8017aa262931d8a` |
| 10 | `theorem` | [trinomial_monic](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-monic--d790ad65da25f75aab6ec32f.md) | 97 | `result-track:d790ad65da25f75aab6ec32ff5827efe09236cc7774df6bcbac838220c366675` |
| 11 | `theorem` | [trinomial_mirror](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-mirror--a8548dd533a62f3d10e4e734.md) | 101 | `result-track:a8548dd533a62f3d10e4e7345fb5bd8945a3c7f0c59380fd43f0ab9ede56848e` |
| 12 | `theorem` | [trinomial_support](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trinomial-support--ae5735a93ed682aa36ce7d5a.md) | 110 | `result-track:ae5735a93ed682aa36ce7d5a3bed87a0d2d408a8accc7155d7b373c28f63c143` |
| 13 | `def` | [IsUnitTrinomial](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/isunittrinomial--36b82a9e3a73cd2d242fbb60.md) | 119 | `declaration-track:36b82a9e3a73cd2d242fbb60122201bc298c23fb119253ab3adfa74f8efce659` |
| 14 | `theorem` | [not_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/not-isunit--c691a1b3859342799a143d6e.md) | 126 | `result-track:c691a1b3859342799a143d6e6ce00a697e13626a7299c5a6e52f8eb2dc7edb5c` |
| 15 | `theorem` | [card_support_eq_three](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/card-support-eq-three--1804eec3a382ed0d0a78ad9e.md) | 133 | `result-track:1804eec3a382ed0d0a78ad9ea8fafd05593b937cce0ad53f12659e56f1473866` |
| 16 | `theorem` | [ne_zero](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/ne-zero--e01c3b65e5aee389d0b5256b.md) | 137 | `result-track:e01c3b65e5aee389d0b5256bfbcb21a73b8ba6944c966c147dfeb7e4f2a88c42` |
| 17 | `theorem` | [coeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/coeff-isunit--ab8ed7fe0b5e5b48cc6ad6f3.md) | 141 | `result-track:ab8ed7fe0b5e5b48cc6ad6f3f70e023fe91db892f861d71398b3dc2aa0d36700` |
| 18 | `theorem` | [leadingCoeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/leadingcoeff-isunit--6669a7b972b88c21f169257d.md) | 151 | `result-track:6669a7b972b88c21f169257de9026b8873f60cfb206b81a536e285e065d60cb1` |
| 19 | `theorem` | [trailingCoeff_isUnit](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/trailingcoeff-isunit--0b7e6d5f6f8b2f58b167d4f3.md) | 154 | `result-track:0b7e6d5f6f8b2f58b167d4f394271297f07bb5e4305e28a0c9d230a3c0189a73` |
| 20 | `theorem` | [isUnitTrinomial_iff](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/isunittrinomial-iff--72d87148461b7a0496823893.md) | 159 | `result-track:72d87148461b7a049682389373b5f9de3eb6e8d4aefdcb6e4a25a85ffd9b906a` |
| 21 | `theorem` | [isUnitTrinomial_iff'](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/isunittrinomial-iff--84b469d467308358f4437703.md) | 174 | `result-track:84b469d467308358f4437703ce6ac26a5f7cfab8cc6b96acc77d304c6a7bf9fa` |
| 22 | `theorem` | [isUnitTrinomial_iff''](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/isunittrinomial-iff--9fc0119dedfb822339e82b39.md) | 195 | `result-track:9fc0119dedfb822339e82b399d895fef3b33eed2b643d5447e1b76249dfaeaf6` |
| 23 | `theorem` | [irreducible_aux1](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/irreducible-aux1--9032f7e3c305e66f7a7d267b.md) | 201 | `result-track:9032f7e3c305e66f7a7d267b19d436d321168d633ed21ae593291f08f1798227` |
| 24 | `theorem` | [irreducible_aux2](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/irreducible-aux2--4b98272c0fecc3bdbb1e31bd.md) | 235 | `result-track:4b98272c0fecc3bdbb1e31bdf89ea364173eba385db41cbfe93ad1694be66d99` |
| 25 | `theorem` | [irreducible_aux3](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/irreducible-aux3--ef47d3fce993eacc1ecb088a.md) | 253 | `result-track:ef47d3fce993eacc1ecb088a05caac2a7f659cb93c59a11625e9237a8687b130` |
| 26 | `theorem` | [irreducible_of_coprime](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/irreducible-of-coprime--020cd7d992bade037218b7b3.md) | 281 | `result-track:020cd7d992bade037218b7b313b315453eac40e1b270696303ad22425f7ae952` |
| 27 | `theorem` | [irreducible_of_isCoprime](../../../../mathematics/Algebra/UnitTrinomial/Variantd4252b549d8662b9fd5c0359126b5fba6660372136a4d6ca5640de902f4a8d8a.lean/declarations/irreducible-of-iscoprime--0125d4a9f0a7fd1d8c4bbc58.md) | 314 | `result-track:0125d4a9f0a7fd1d8c4bbc589c9843201657f34a71db6a1987bf43326f1250bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
