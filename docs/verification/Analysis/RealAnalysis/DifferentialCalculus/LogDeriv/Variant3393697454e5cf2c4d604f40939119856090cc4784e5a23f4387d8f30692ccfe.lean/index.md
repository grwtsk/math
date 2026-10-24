# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LogDeriv.Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbbdc49fa7636d6f7e4adb9c0c4aae35cef78257",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbbdc49fa7636d6f7e4adb9c0c4aae35cef78257`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.ZPow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv--ff58706d67328a9f0f5fb2d3.md) | 27 | `declaration-track:ff58706d67328a9f0f5fb2d3ca03b113c6b802d4119676869e521d6215576116` |
| 2 | `theorem` | [logDeriv_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-apply--69405c38dc3d699ac0a89d0f.md) | 30 | `result-track:69405c38dc3d699ac0a89d0f1fdcf9cae241e5c169867e143c1b46fdc599fd94` |
| 3 | `lemma` | [logDeriv_eq_zero_of_not_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-eq-zero-of-not-differentiableat--ca62c0ab29bf3a020a0f439c.md) | 32 | `result-track:ca62c0ab29bf3a020a0f439c3d5d9c34baa9ee26649e600c288311b846738b43` |
| 4 | `theorem` | [logDeriv_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-id--d6e9c3f7a202ec191c6d8fa7.md) | 37 | `result-track:d6e9c3f7a202ec191c6d8fa74be4aeef8943059edd68f19158829dd782624892` |
| 5 | `theorem` | [logDeriv_id'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-id--4fdabe3a7bf30c404ab3610f.md) | 40 | `result-track:4fdabe3a7bf30c404ab3610f9ae9d36b16ade8d40c9a6731cb990a0483995adb` |
| 6 | `theorem` | [logDeriv_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-const--d184186a8f3de75f4e15e6f4.md) | 43 | `result-track:d184186a8f3de75f4e15e6f4ff754dffdb57620fb5493acb094406d5c05b3ef6` |
| 7 | `theorem` | [logDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-mul--3f0a1a227d9eaa489688e9a8.md) | 47 | `result-track:3f0a1a227d9eaa489688e9a848ceccb28bed73253ca563e4f4517298fcc360d6` |
| 8 | `theorem` | [logDeriv_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-div--06c7b2d516d4cba25b9ce7f0.md) | 53 | `result-track:06c7b2d516d4cba25b9ce7f0b5ce57f2ccba7ec300030605a336991f22b11aeb` |
| 9 | `theorem` | [logDeriv_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-mul-const--5f8bde43f91ef2cf64ff0fbe.md) | 60 | `result-track:5f8bde43f91ef2cf64ff0fbe7025d88b664b3104d87ccfb7e607de3c154e3bd4` |
| 10 | `theorem` | [logDeriv_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-const-mul--2af7ec1fe7b0ffc4a99131a6.md) | 64 | `result-track:2af7ec1fe7b0ffc4a99131a61ab921755e99eb6dfba73bd07a858fa5b510e9cb` |
| 11 | `theorem` | [logDeriv_prod](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-prod--9c39092ff7ad19a1a560af7d.md) | 69 | `result-track:9c39092ff7ad19a1a560af7d1eb4c1ef2336fbed0aaff7458861f3afa3aaf54c` |
| 12 | `lemma` | [logDeriv_fun_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-fun-zpow--7681bce234146d13f011dce8.md) | 83 | `result-track:7681bce234146d13f011dce847fbb91f3367d1e2c551febfea9ad8a667118106` |
| 13 | `lemma` | [logDeriv_fun_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-fun-pow--00b7aba936921f04d2eddc4e.md) | 93 | `result-track:00b7aba936921f04d2eddc4eacf9d584c4dc98abb5f7231d27174559c067b2e4` |
| 14 | `lemma` | [logDeriv_zpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-zpow--ca4d4269ee551424c888a815.md) | 98 | `result-track:ca4d4269ee551424c888a8155228711dda48bd05e11a4115b66a1f12e8227067` |
| 15 | `lemma` | [logDeriv_pow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-pow--dc38b6ae916ef7d494b5d73b.md) | 102 | `result-track:dc38b6ae916ef7d494b5d73b4feca94ddee171a1e358fcb95b7d53c0ff1302bd` |
| 16 | `lemma` | [logDeriv_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-inv--f3b6a459f0b1939bec22cafc.md) | 105 | `result-track:f3b6a459f0b1939bec22cafc3d3b7d543afa35ab820b77be0712502353bf39f9` |
| 17 | `theorem` | [logDeriv_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/LogDeriv/Variant3393697454e5cf2c4d604f40939119856090cc4784e5a23f4387d8f30692ccfe.lean/declarations/logderiv-comp--fac2f476c8a520b1120376de.md) | 108 | `result-track:fac2f476c8a520b1120376de76b11bdd7d01a523833cd4368e4696629bf69521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
