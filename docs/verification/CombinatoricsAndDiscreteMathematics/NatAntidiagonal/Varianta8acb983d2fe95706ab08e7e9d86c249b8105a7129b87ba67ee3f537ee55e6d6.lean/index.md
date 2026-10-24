# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4a037559f0b86a711d85b284f878a1165649818",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4a037559f0b86a711d85b284f878a1165649818`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NatAntidiagonal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple--c7257545b8daa2d982ac9e04.md) | 71 | `declaration-track:c7257545b8daa2d982ac9e045b9dcdcc771baee3d544370475ed1128f8062542` |
| 2 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-zero--cd9aa9c4bf1929bf75528802.md) | 80 | `result-track:cd9aa9c4bf1929bf755288028536eca709dcb83586e94160b750f6b7c001c9b4` |
| 3 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-succ--7cb109ab389bbabc9eb6a1ac.md) | 85 | `result-track:7cb109ab389bbabc9eb6a1acce5eaf24df887085ee6200dbecb50abd86b7ed28` |
| 4 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/mem-antidiagonaltuple--402d71081508b4d8f0d3f5df.md) | 89 | `result-track:402d71081508b4d8f0d3f5df04618dea2705c4b330630d8d6ff9971450cd321c` |
| 5 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/nodup-antidiagonaltuple--f01758794471864bd067f52e.md) | 106 | `result-track:f01758794471864bd067f52e4943df50546de43830c3b75f1c6c9535961ba410` |
| 6 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-right--8c220197777620cde8fd9e73.md) | 132 | `result-track:8c220197777620cde8fd9e73d5d6f4f8492108639d15b1d805eb8183f0edb12a` |
| 7 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-one--5f0dd499beb0d9dc7292c986.md) | 141 | `result-track:5f0dd499beb0d9dc7292c98639f2970a1b666e19b5732278874ba69a187ce2ea` |
| 8 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-two--434e51ff5a0e88ceead98579.md) | 152 | `result-track:434e51ff5a0e88ceead9857982c161a1d3a20dc0e5f03deca5251f83fbe214d4` |
| 9 | `theorem` | [antidiagonalTuple_pairwise_pi_lex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-pairwise-pi-lex--0c61a074c423c9358a5bed28.md) | 160 | `result-track:0c61a074c423c9358a5bed2816e46445da6156d28cc80c885b2f23a7655f9aa2` |
| 10 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple--1a3580275efa385b8e4096a4.md) | 192 | `declaration-track:1a3580275efa385b8e4096a4d08463f96b93db3a79347bbf692ac883df438271` |
| 11 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-zero--96947174ad5db3373e47abd3.md) | 197 | `result-track:96947174ad5db3373e47abd3c5ea6eca0efbf2fb6aa361386ede3d48d9de474f` |
| 12 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-succ--15c3e8196d29a8ca58a85493.md) | 202 | `result-track:15c3e8196d29a8ca58a85493b9fae7319ad33efc79d12e707a6fea44211441f1` |
| 13 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/mem-antidiagonaltuple--b2b805080f4b0f83e73471e1.md) | 206 | `result-track:b2b805080f4b0f83e73471e1cbc5f461357f0426de7563507ee2fe9d7dedafb2` |
| 14 | `theorem` | [nodup_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/nodup-antidiagonaltuple--a82426e1d4c08b3917962e04.md) | 211 | `result-track:a82426e1d4c08b3917962e043ee6a6892d13ef960959f0d17e7e15abf1e27ee7` |
| 15 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-right--d6101f43ea48e3f6aa01a678.md) | 215 | `result-track:d6101f43ea48e3f6aa01a67870ba0eff0390f3200d8c3a7e01ee917b7fceb4b0` |
| 16 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-one--78b69ba5475a75771e37c3d1.md) | 220 | `result-track:78b69ba5475a75771e37c3d18ad32e638b20a859bf2b3427acd1a1c8074f5a98` |
| 17 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-two--ff00cb545c2e09df9ac3f440.md) | 224 | `result-track:ff00cb545c2e09df9ac3f44033257fc1a572c52fb20536500890979f680236a6` |
| 18 | `def` | [antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple--86c6ce0e06d3bd9b950194f7.md) | 237 | `declaration-track:86c6ce0e06d3bd9b950194f70dac1eb536cdd5ac73dc57b5d31bbde2e1172959` |
| 19 | `theorem` | [antidiagonalTuple_zero_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-zero--0ddaf2584a205512f779b767.md) | 242 | `result-track:0ddaf2584a205512f779b7678af309143d97058b19de49bccfcd4815e49fd9d1` |
| 20 | `theorem` | [antidiagonalTuple_zero_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-succ--6930882e218f3e0c70e061dd.md) | 247 | `result-track:6930882e218f3e0c70e061dd87383faf1fc8531847d72c303bd2fd7cc99ef244` |
| 21 | `theorem` | [mem_antidiagonalTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/mem-antidiagonaltuple--4f73c5ef7bffafc3ab535ee3.md) | 251 | `result-track:4f73c5ef7bffafc3ab535ee39b2d10e1bb5929b47a3b3309b83662206d4cbd3a` |
| 22 | `theorem` | [antidiagonalTuple_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-zero-right--845f4c0c48a4cb0b1aa2f6cc.md) | 256 | `result-track:845f4c0c48a4cb0b1aa2f6cc668c7d46a3ffb87271ab5a239b4eaf3216d5114c` |
| 23 | `theorem` | [antidiagonalTuple_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-one--8dfff4517c9a5ffb894e94dc.md) | 261 | `result-track:8dfff4517c9a5ffb894e94dc3c5dd9632fa8bc676a9d3bb8a3c5b0143f34d7b6` |
| 24 | `theorem` | [antidiagonalTuple_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/antidiagonaltuple-two--f5a0db8d3e46eefb3f7647d8.md) | 265 | `result-track:f5a0db8d3e46eefb3f7647d84f6cd0cac1a74e51c19a5f412faed976505adcf1` |
| 25 | `def` | [sigmaAntidiagonalTupleEquivTuple](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NatAntidiagonal/Varianta8acb983d2fe95706ab08e7e9d86c249b8105a7129b87ba67ee3f537ee55e6d6.lean/declarations/sigmaantidiagonaltupleequivtuple--aa73e39986008d876135a45d.md) | 277 | `declaration-track:aa73e39986008d876135a45dd36aa8152398fb5f746b8509466779a9902e8884` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
