# Verification target: GRWTSK.NumberTheory.Moebius.ExceptionalKernelTwistedMertensFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9e2781b2901de9dd88a09428aff212ede3bf255",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9e2781b2901de9dd88a09428aff212ede3bf255`.

Source path: `GRWTSK/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives`](../../../../mathematics/NumberTheory/Moebius/HalfIndexAffineChowlaTwoNonunitOrbitRepresentatives.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exceptionalKernelTwistedMertensPrefix](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensprefix--c34f0ede589535be0bab5b70.md) | 53 | `declaration-track:c34f0ede589535be0bab5b70bc9ba83ebdfadc1800fdf3b53e1e46668cfa46cf` |
| 2 | `theorem` | [twoKernelShiftCharacter_add](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/twokernelshiftcharacter-add--3607e5225e553d14137153b7.md) | 60 | `result-track:3607e5225e553d14137153b73927a05ce3d7f772521d4b3f27bc9e8bd9a19825` |
| 3 | `theorem` | [twoKernelShiftCharacter_sub_eq_mul](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/twokernelshiftcharacter-sub-eq-mul--5ed02115b8a99a03492dc481.md) | 73 | `result-track:5ed02115b8a99a03492dc481c0cedc0c942b5e8d3c7a6b1494d03b35487a84e9` |
| 4 | `theorem` | [exceptionalKernelTwistedMertensTerm_sq](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensterm-sq--7441f38818f14385ac37c970.md) | 97 | `result-track:7441f38818f14385ac37c97022bf7ac7f79d7751489cedc1c27115db01f16129` |
| 5 | `theorem` | [parityOnePointMobiusFourierDiagonal_kernel_eq_squarefree](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/parityonepointmobiusfourierdiagonal-kernel-eq-squarefree--adef9b59267db6f6bd6b5c31.md) | 113 | `result-track:adef9b59267db6f6bd6b5c31a0986828b19cfa9c27bb46c125f652548a15a2a0` |
| 6 | `theorem` | [twoNonunitExceptionalKernelAggregate_eq_signedFourier](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/twononunitexceptionalkernelaggregate-eq-signedfourier--8d43a24332fbae8564ea8dd8.md) | 128 | `result-track:8d43a24332fbae8564ea8dd83b603f8e96a9329e3a2536f47e6483501d8e28e5` |
| 7 | `theorem` | [twoNonunitExceptionalKernelAggregate_eq_twistedSquare_sub_diagonal](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/twononunitexceptionalkernelaggregate-eq-twistedsquare-sub-diagonal--c23c13299b79b7b96f69258b.md) | 152 | `result-track:c23c13299b79b7b96f69258b9fddc3078c30b18646b5c68925295dd1d9fc7fdc` |
| 8 | `def` | [exceptionalKernelTwistedMertensFrequencyMajorant](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensfrequencymajorant--dd7775d59b8391c41a16df2f.md) | 167 | `declaration-track:dd7775d59b8391c41a16df2fa7bd483e38ce31f3fd93c03107cb0316cb74f075` |
| 9 | `theorem` | [exceptionalKernelTwistedMertensFrequencyMajorant_eq_existing](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensfrequencymajorant-eq-existing--70662933baaf26bdd1312115.md) | 176 | `result-track:70662933baaf26bdd131211508eddb52f250bf9b6be01e37c89e6ffe99685fa4` |
| 10 | `def` | [exceptionalKernelTwistedMertensEndpointMajorant](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensendpointmajorant--fb8e5ee3ee124a4a3119bd04.md) | 189 | `declaration-track:fb8e5ee3ee124a4a3119bd04379ef947d93ef735d754b161b726d67cb44c4083` |
| 11 | `theorem` | [exceptionalKernelTwistedMertensEndpointMajorant_eq_existing](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensendpointmajorant-eq-existing--df714f12730f50eafb2bfb64.md) | 201 | `result-track:df714f12730f50eafb2bfb640f783cb6c1c7c839c620dc988787e9dc1781a902` |
| 12 | `def` | [DyadicTwoKernelTwistedMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/dyadictwokerneltwistedmertenssquarerootenergy--0e96095b24a0589fd4b6a163.md) | 223 | `declaration-track:0e96095b24a0589fd4b6a1631a1843c8e84894e0389496fe8ec733a7652b2677` |
| 13 | `theorem` | [exceptionalKernelTwistedMertensFrequencyMajorant_le](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkerneltwistedmertensfrequencymajorant-le--5895d57550866f4002ecbcea.md) | 239 | `result-track:5895d57550866f4002ecbcea5f504a4c7022cd2e4e5701d4012c090b1ec7dd7d` |
| 14 | `theorem` | [exceptionalKernelBudget_of_twistedMertensSquareRootEnergy](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/exceptionalkernelbudget-of-twistedmertenssquarerootenergy--7be3b98a0e4b5e60c42e547d.md) | 318 | `result-track:7be3b98a0e4b5e60c42e547d1ac19046dbfc34628af079e2b33464032a365b79` |
| 15 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_twoUnit_twistedExceptional_regular](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/naturalscalecongruencel1-of-pointwisemertens-twounit-twistedexceptional--c4c83457e1b9790236464dde.md) | 366 | `result-track:c4c83457e1b9790236464dde3fa074aae77f542e81614007fa6b249ce07cd363` |
| 16 | `structure` | [ToTwoKernelTwistedMertensSquareRootEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/totwokerneltwistedmertenssquarerootenergyadapter--43bc92d19e32e5b3ab63cd35.md) | 379 | `declaration-track:43bc92d19e32e5b3ab63cd35c48840c543873635ce72b187d09f0e1d4f0941e5` |
| 17 | `structure` | [CharacterTwistedMertensSourceData](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/charactertwistedmertenssourcedata--4cd5d72c64b61d5a7a4411a0.md) | 388 | `declaration-track:4cd5d72c64b61d5a7a4411a07d261e5ad8a4b239d46a16dc31cb8a90132daa35` |
| 18 | `def` | [CharacterTwistedMertensSource](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/charactertwistedmertenssource--0e2e48577c1e0e232af6f45d.md) | 399 | `declaration-track:0e2e48577c1e0e232af6f45d1583d8af2f1c9806e1a72178369d38966b07f5a8` |
| 19 | `abbrev` | [CharacterTwistedMertensAdapter](../../../../mathematics/NumberTheory/Moebius/ExceptionalKernelTwistedMertensFactorization.lean/declarations/charactertwistedmertensadapter--59ebbdafb243e14c3094cf2c.md) | 409 | `declaration-track:59ebbdafb243e14c3094cf2c1e91f8c2b576bfa728ee2cc3b8995bebbceebad8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
