# Verification target: GRWTSK.Algebra.LinearAlgebra.Reflection.Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52715a66bf107801e0eea77237313a74930f6b3c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52715a66bf107801e0eea77237313a74930f6b3c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Reflection` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Forall](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/forall--9f2822ecc14d9a13bf108a6d.md) | 52 | `declaration-track:9f2822ecc14d9a13bf108a6d6b7b17eda6e01a74fd38ca1da57328f8405a4655` |
| 2 | `theorem` | [forall_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/forall-iff--373b67545b253835e6e26940.md) | 64 | `result-track:373b67545b253835e6e26940f9d61adc025d7936303e1baebecc6977527893ed` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--91de1173032d770ac1625dcb.md) | 71 | `declaration-track:91de1173032d770ac1625dcbe025363b89fa3ac8b59a2c760fe03f0399f315ff` |
| 4 | `def` | [Exists](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/exists--ada4341f6472dceba4f4cbed.md) | 76 | `declaration-track:ada4341f6472dceba4f4cbed954fc56a9745736896e83515f2c8fdd43c6b477a` |
| 5 | `theorem` | [exists_iff](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/exists-iff--f383374109c207f208435395.md) | 88 | `result-track:f383374109c207f2084353955b9308690131826b55576a6fde59fe7ec64a5668` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--4baf1a3c4ee76d174c34b988.md) | 95 | `declaration-track:4baf1a3c4ee76d174c34b98806307599fd2744dd04af78f9ee913930286fbed8` |
| 7 | `def` | [transposeᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/transpose--dbc867bc2cc3490e4681a3a0.md) | 100 | `declaration-track:dbc867bc2cc3490e4681a3a08f702ba817374206cf3e3816b8b2c8218aae9a36` |
| 8 | `theorem` | [transposeᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/transpose-eq--3d156a3f17edfc6eae7c01ab.md) | 112 | `result-track:3d156a3f17edfc6eae7c01abfac1db279be47e20ea892308986b5b2b795c759f` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--9419bd7ec468d4446c9d66a2.md) | 124 | `declaration-track:9419bd7ec468d4446c9d66a2a6c3d7a543d92a7020de6c526a30980fa168b557` |
| 10 | `def` | [dotProductᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/dotproduct--d654001c44293d2fc220e179.md) | 128 | `declaration-track:d654001c44293d2fc220e1795b3056a1554648dfc7290046d4ed2babf927fca5` |
| 11 | `theorem` | [dotProductᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/dotproduct-eq--82e22465d82499bbbf86a9e3.md) | 140 | `result-track:82e22465d82499bbbf86a9e3e2a9fcd5a128f781f65ed96d26a6e9fc1b0ac265` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--661da817b685137b667aa266.md) | 146 | `declaration-track:661da817b685137b667aa2660dceb65292e55e95ea1a4173bf6507d06619b101` |
| 13 | `def` | [mulᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/mul--0c8ee920ff560ad2d3955f6c.md) | 150 | `declaration-track:0c8ee920ff560ad2d3955f6c3e88982cb19876b9716f5eb155eef4193316f30f` |
| 14 | `theorem` | [mulᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/mul-eq--44206c752bb35bbd471dc998.md) | 167 | `result-track:44206c752bb35bbd471dc998f95ba7b763978797f1b298ef02ea9831f79762d9` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--c3f83b971d17783269d7cb1e.md) | 173 | `declaration-track:c3f83b971d17783269d7cb1e6d4d6454936b843a46bb3212b0ed99117ab6af90` |
| 16 | `def` | [mulVecᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/mulvec--0eee0e9739d96780d06edf80.md) | 180 | `declaration-track:0eee0e9739d96780d06edf8056d55bd4220c6c707e1dab50c65d150f0cd7e365` |
| 17 | `theorem` | [mulVecᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/mulvec-eq--b88b6662d3c92565e22d31f8.md) | 193 | `result-track:b88b6662d3c92565e22d31f84078e57568e8ddba297dd6f55538749bbc36c728` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--5e0f2cf50bc816177ec7d7a8.md) | 199 | `declaration-track:5e0f2cf50bc816177ec7d7a8d04bfe2e657daed4573f4cdf547817b9f11c0ef7` |
| 19 | `def` | [vecMulᵣ](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/vecmul--9e909d993f9b723eea5881e4.md) | 204 | `declaration-track:9e909d993f9b723eea5881e4c207fa15cf88671eb70ec7f53656d2a09604636c` |
| 20 | `theorem` | [vecMulᵣ_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/vecmul-eq--8eeccfa107ac1fdf8306dbb6.md) | 217 | `result-track:8eeccfa107ac1fdf8306dbb6856e5d51a61349819ee5acaf141ce021cabc0794` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--d518459571a615d040d44f0a.md) | 223 | `declaration-track:d518459571a615d040d44f0a8e250a94c88a4b830f3ada1d4c8eb81f28292e93` |
| 22 | `def` | [etaExpand](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/etaexpand--0b8d21257f70768cb8a3dbe1.md) | 228 | `declaration-track:0b8d21257f70768cb8a3dbe1b0d5e4b8ea567f03ab501d48dbc809dc144a1d0c` |
| 23 | `theorem` | [etaExpand_eq](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/etaexpand-eq--0ddb92a1d184ae8d1bc2d5cd.md) | 240 | `result-track:0ddb92a1d184ae8d1bc2d5cdf7114deac94b8e3800e396f5abb493c71146ad9c` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Reflection/Variant16925611931fa3053ef70128002cde587d11b34a8aa3b049b2c8090e9edb7540.lean/declarations/example--46631dabde22811d4adbee65.md) | 244 | `declaration-track:46631dabde22811d4adbee65ada731272ac1b06d901be2c2991b206d73ab2337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
