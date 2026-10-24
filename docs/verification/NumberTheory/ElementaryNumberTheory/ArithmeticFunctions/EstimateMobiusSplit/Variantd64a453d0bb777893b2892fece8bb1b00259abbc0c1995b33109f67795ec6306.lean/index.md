# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EstimateMobiusSplit.Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2281b04e7f2a7670fe857ce156dc43ea63c798e0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2281b04e7f2a7670fe857ce156dc43ea63c798e0`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedPrimeWeight](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/closedprimeweight--7c900532e43d0e9a9ec9d8e8.md) | 39 | `declaration-track:7c900532e43d0e9a9ec9d8e8e3504f1496fda5d121d8d2b8c85f348328abb77c` |
| 2 | `def` | [mobiusLogTerm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/mobiuslogterm--a680918447de152e28b0f604.md) | 45 | `declaration-track:a680918447de152e28b0f604966f3590677e735a491db2c4f4c51db15a81753f` |
| 3 | `theorem` | [vonMangoldt_eq_mobius_log_convolution](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/vonmangoldt-eq-mobius-log-convolution--0231b5587f0b800c982a15b3.md) | 50 | `result-track:0231b5587f0b800c982a15b34d1b034812b28d7db23a509ecdaca06a3d92c7ea` |
| 4 | `def` | [mobiusClosedPrimeMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/mobiusclosedprimemoment--30a1916baf8baad15556889c.md) | 64 | `declaration-track:30a1916baf8baad15556889c64aebfddeffe980eb883888154f081a17190dabd` |
| 5 | `theorem` | [closedPrimeMoment_eq_mobius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/closedprimemoment-eq-mobius--73882e519d3ba1648ca21d58.md) | 70 | `result-track:73882e519d3ba1648ca21d5825710b1ed6324ce02386374c1691abb88684ed9e` |
| 6 | `def` | [smallDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/smalldivisormobiusmoment--471b2a2de54b94efb434d14c.md) | 84 | `declaration-track:471b2a2de54b94efb434d14c1e3ee05b93cb2e1e1687bf9d79c20fb4712b75d6` |
| 7 | `def` | [largeDivisorMobiusMoment](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/largedivisormobiusmoment--1420667723631bfbac77866b.md) | 92 | `declaration-track:1420667723631bfbac77866b462aea2e156d4278d6a9929b5826bcc73f5913d4` |
| 8 | `theorem` | [mobiusClosedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/mobiusclosedprimemoment-eq-small-add-large--2daec9f29c9023e49c222f2f.md) | 101 | `result-track:2daec9f29c9023e49c222f2f03b4d966b06737235c1c8ac4c37941004ef9fd9f` |
| 9 | `theorem` | [closedPrimeMoment_eq_small_add_large](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/closedprimemoment-eq-small-add-large--4b1d35fa9c860a02742e247a.md) | 123 | `result-track:4b1d35fa9c860a02742e247af869cdc4e056a395f37de4ecf168a4f7040f5371` |
| 10 | `theorem` | [primeSmoothDefect_eq_mobius_split](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/primesmoothdefect-eq-mobius-split--9c2069ba2ecdbb8bb80e066a.md) | 133 | `result-track:9c2069ba2ecdbb8bb80e066acddb87086b654ce0bb22fc1c9b19123c33e0fa3c` |
| 11 | `theorem` | [largeDivisorMobiusMoment_boundary_excluded](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/largedivisormobiusmoment-boundary-excluded--002f1dd2cc9147ee13d142fa.md) | 145 | `result-track:002f1dd2cc9147ee13d142fac2f51b1320778153de240a79fc47024a44264df6` |
| 12 | `def` | [MobiusSplitCheckpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/mobiussplitcheckpoint--c68c5d75c10340efa42c9fc1.md) | 154 | `declaration-track:c68c5d75c10340efa42c9fc19610b5ea6245602518b8c54d4a16a9fcd7e4ac77` |
| 13 | `theorem` | [mobius_split_checkpoint](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/EstimateMobiusSplit/Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306.lean/declarations/mobius-split-checkpoint--498d74400e914a76fcdf2f77.md) | 165 | `result-track:498d74400e914a76fcdf2f77c22c2a3031454c8802ebbd42886d274b280595a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
