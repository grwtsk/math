# Verification target: GRWTSK.Algebra.FiniteField.GF128.Arithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e91a85ed59e081d99cb112be85bcfa5ebc30c610",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FiniteField/GF128/Arithmetic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e91a85ed59e081d99cb112be85bcfa5ebc30c610`.

Source path: `GRWTSK/Algebra/FiniteField/GF128/Arithmetic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FiniteField/GF128/Arithmetic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.FiniteField.GF128.Bitwise`](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Bitwise.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [word_zero_xor](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/word-zero-xor--31a5070d134b0b425666fc24.md) | 9 | `result-track:31a5070d134b0b425666fc24916dc5f6b2369d54d2924769042727ec3eee52b5` |
| 2 | `theorem` | [word_xor_zero](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/word-xor-zero--fe8a188253aebd764ea829fc.md) | 10 | `result-track:fe8a188253aebd764ea829fc91e99a35f460410f7480e60e1b612c0e217f1342` |
| 3 | `def` | [iter](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter--7ee4be8ae528efa4ea45b44b.md) | 12 | `declaration-track:7ee4be8ae528efa4ea45b44b66e2affd52e99eacf6f14a9d03c741089bcb37ce` |
| 4 | `theorem` | [iter_double](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter-double--38c5583beab89558c6324315.md) | 16 | `result-track:38c5583beab89558c6324315182dc58419bf76f31b12d37d6b6b40bbd148049a` |
| 5 | `theorem` | [iter_linear](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter-linear--ef83c2784547e120925e179c.md) | 21 | `result-track:ef83c2784547e120925e179cde85c667b5670135bc9bb65480221d0845f0c9ec` |
| 6 | `theorem` | [basis_bits](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/basis-bits--455ebac39ae1a878e93bf901.md) | 30 | `result-track:455ebac39ae1a878e93bf901c40e83d16f2044413538eac97085cbed8b5f305d` |
| 7 | `theorem` | [basis_low_succ](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/basis-low-succ--cd1558feb1350a23475313c9.md) | 43 | `result-track:cd1558feb1350a23475313c941c278d5727d98a70098bdac9b1317a585723c17` |
| 8 | `theorem` | [basis_shift_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/basis-shift-right--225302e6e78466a1508db6ec.md) | 48 | `result-track:225302e6e78466a1508db6ec814bc3fbb3702a97bf5226bb7a570cf09f4c63f7` |
| 9 | `theorem` | [mulFuel_basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mulfuel-basis--57ab70f99db6bcaf59660593.md) | 61 | `result-track:57ab70f99db6bcaf5966059334ff1567db60dd73ab4545d37b258738eee8e596` |
| 10 | `theorem` | [mul_basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mul-basis--374774b20e252a46bd08df24.md) | 80 | `result-track:374774b20e252a46bd08df24ea78edd40f92e1e27f0d3988bc97726a89838898` |
| 11 | `theorem` | [double_basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/double-basis--671072b94f9f0da208ae0a9c.md) | 83 | `result-track:671072b94f9f0da208ae0a9c1ca480b6271537502c0edbb1d01f66db063a74ff` |
| 12 | `theorem` | [iter_one_basis](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter-one-basis--894c4eb12898f9d3d6f8278b.md) | 90 | `result-track:894c4eb12898f9d3d6f8278b5da0609f5cb5a76c712ec9e2412f4a80a42f89dd` |
| 13 | `theorem` | [iter_comm](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter-comm--5e06c37b000006f9b602f267.md) | 96 | `result-track:5e06c37b000006f9b602f267485009eb06271cea9080070c9bd1b7abd292c444` |
| 14 | `def` | [reduction](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/reduction--60692853d89429f62cf015ed.md) | 103 | `declaration-track:60692853d89429f62cf015ed817fbe5c47128033f1813ea4107d0fb165a174dc` |
| 15 | `theorem` | [reduction_linear](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/reduction-linear--429156aa3274d4beaa691507.md) | 105 | `result-track:429156aa3274d4beaa6915070344aa9ee41cf1ee3953a0abc53101059ec1d46e` |
| 16 | `theorem` | [reduction_iter](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/reduction-iter--7e8471405d707b12fe608710.md) | 113 | `result-track:7e8471405d707b12fe608710611f92e6ec391f4085755011b90bb3d3079e1a45` |
| 17 | `theorem` | [iter128_one](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter128-one--f194c0b08a8ce8ddcebe89c9.md) | 117 | `result-track:f194c0b08a8ce8ddcebe89c93f7f4621b6cad6da2e5b8351ad747acc299c1118` |
| 18 | `theorem` | [reduction_one](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/reduction-one--4ac53f64a6ea3ad70148f442.md) | 122 | `result-track:4ac53f64a6ea3ad70148f442898afd917351538568eef4faefe41cdf0bb738c2` |
| 19 | `theorem` | [iter_modulus](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/iter-modulus--ca41e085563fe1b4079abcf3.md) | 125 | `result-track:ca41e085563fe1b4079abcf350b6cb5f8e2af6cdd2e2fd1e52ddf6d09bc20499` |
| 20 | `theorem` | [mul_double_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mul-double-right--e78728a86f777e5e180cbfe2.md) | 133 | `result-track:e78728a86f777e5e180cbfe23e648d1fd31298c711e3a83554f5f445356875f7` |
| 21 | `theorem` | [mul_iter_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mul-iter-right--e30838dae48a787b97c033e6.md) | 167 | `result-track:e30838dae48a787b97c033e609eda2a66bfe3ffc9d3f956415c6602d7f761d19` |
| 22 | `theorem` | [mul_assoc](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mul-assoc--784281c82caae71771656952.md) | 174 | `result-track:784281c82caae717716569524d5764d87054d4c53b98de423dc3aa513f4f3070` |
| 23 | `theorem` | [mul_one_left](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mul-one-left--a072ff65c95a97f681fa44b4.md) | 189 | `result-track:a072ff65c95a97f681fa44b4bd42e520bc2e1e11214d6174a514bcbdccdaf48f` |
| 24 | `theorem` | [mul_one_right](../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/GF128/Arithmetic.lean/declarations/mul-one-right--b2693709bc5ab98d227dff42.md) | 196 | `result-track:b2693709bc5ab98d227dff4254c65ca7dfc38d3e14ebe54dffcb0f6e223dd746` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
