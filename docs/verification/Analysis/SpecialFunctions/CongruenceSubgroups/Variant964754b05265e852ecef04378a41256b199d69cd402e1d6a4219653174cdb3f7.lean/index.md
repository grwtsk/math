# Verification target: GRWTSK.Analysis.SpecialFunctions.CongruenceSubgroups.Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7f05dc25e2f493b7f09b42e6904b9a48640edc8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7f05dc25e2f493b7f09b42e6904b9a48640edc8`.

Source path: `GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SL_reduction_mod_hom_val](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/sl-reduction-mod-hom-val--a061c7ae5f31badf9be9c0e7.md) | 40 | `result-track:a061c7ae5f31badf9be9c0e7b6fa8fba93a6313567923a97097542e0ea342fe4` |
| 2 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma--00048df4c40c385495fac197.md) | 47 | `declaration-track:00048df4c40c385495fac1979b5472a1f29451f397ddabd24b279e328f0df248` |
| 3 | `theorem` | [Gamma_mem'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-mem--2b462eba6b97d6fa439055fd.md) | 51 | `result-track:2b462eba6b97d6fa439055fdce2656117e628bbde1af5224d51aa44084183bad` |
| 4 | `theorem` | [Gamma_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-mem--7d19518c362c548ed6e3f6ac.md) | 56 | `result-track:7d19518c362c548ed6e3f6ac43fa3bfb6885ac3bdfcd3c5b955b11a7f66a4576` |
| 5 | `theorem` | [Gamma_normal](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-normal--be9dce47929a1575e8917f9e.md) | 69 | `result-track:be9dce47929a1575e8917f9e33de8fb9ea77c78678cbb639cab15defe94c181f` |
| 6 | `theorem` | [Gamma_one_top](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-one-top--d78c4073cffed83e0296eb60.md) | 73 | `result-track:d78c4073cffed83e0296eb60ecf03d441ba93a01adb4aecc39d1e85946fb386f` |
| 7 | `theorem` | [Gamma_zero_bot](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-zero-bot--a127b77c74d3877d1324fce3.md) | 78 | `result-track:a127b77c74d3877d1324fce33940e85ec8774ce4b17398e17e7083fb807764b5` |
| 8 | `def` | [Gamma0](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma0--53d402842d74e98420142c78.md) | 93 | `declaration-track:53d402842d74e98420142c78082db1636c71825b00cc2cf5731668a66acf0b15` |
| 9 | `theorem` | [Gamma0_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma0-mem--107d42314e8a8f7733c3d664.md) | 113 | `result-track:107d42314e8a8f7733c3d6649b1d422e2adb584630109364d3d88cbf2954f11f` |
| 10 | `theorem` | [Gamma0_det](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma0-det--5e7020131e9242a40877ad4c.md) | 117 | `result-track:5e7020131e9242a40877ad4c580aa6d4ee5839f5cb986b67426669d24e9c8a2f` |
| 11 | `def` | [Gamma0Map](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma0map--95921d6c19609447c7e6af12.md) | 122 | `declaration-track:95921d6c19609447c7e6af123d532549a553e5c8572ec14650a5a57e315d3a74` |
| 12 | `def` | [Gamma1'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1--1dd97076b5dea0ce7bc1093d.md) | 139 | `declaration-track:1dd97076b5dea0ce7bc1093dc12ff4b72fe7d4a7f4fc2428e8c2c0dac01ca2f1` |
| 13 | `theorem` | [Gamma1_mem'](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1-mem--05c1ade0bfe4c526563c63f3.md) | 144 | `result-track:05c1ade0bfe4c526563c63f3a9d44878a3809a747db76938e0646948ad38c37f` |
| 14 | `theorem` | [Gamma1_to_Gamma0_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1-to-gamma0-mem--0fae6f18a8d810269d4606fc.md) | 148 | `result-track:0fae6f18a8d810269d4606fc779a552fb2faec3e544ab1dd55069a069f4c44cd` |
| 15 | `def` | [Gamma1](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1--d1cf86a047789e56128376d7.md) | 169 | `declaration-track:d1cf86a047789e56128376d712e8a765011bcfde3e03e1100eae07f7aded859d` |
| 16 | `theorem` | [Gamma1_mem](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1-mem--6f28c52527259b846f5de292.md) | 174 | `result-track:6f28c52527259b846f5de292e0f28be97eb230aa3a6dabe94344291ca9cba83f` |
| 17 | `theorem` | [Gamma1_in_Gamma0](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1-in-gamma0--d6c0939b9b9a08b273db0c82.md) | 195 | `result-track:d6c0939b9b9a08b273db0c82d47452516466a7f4b196f0ce1e76d7ef5f721860` |
| 18 | `def` | [IsCongruenceSubgroup](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/iscongruencesubgroup--f6a1eeddbee09d873727b8f1.md) | 205 | `declaration-track:f6a1eeddbee09d873727b8f182b956b18e38cd2b263d967f1eb9919f526d0966` |
| 19 | `theorem` | [isCongruenceSubgroup_trans](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/iscongruencesubgroup-trans--cdb39a30bdb077c9a809b2c2.md) | 209 | `result-track:cdb39a30bdb077c9a809b2c20a8b30c75ae5641aa3a87fc6a6b6f44ed04d670a` |
| 20 | `theorem` | [Gamma_is_cong_sub](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-is-cong-sub--ca6591b178c07aa1d56838b6.md) | 215 | `result-track:ca6591b178c07aa1d56838b66513a70fdbff3911789f63e43ccae5076f98002a` |
| 21 | `theorem` | [Gamma1_is_congruence](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma1-is-congruence--0d18d64f2376748bec72c4ed.md) | 219 | `result-track:0d18d64f2376748bec72c4edda8f8089039af0d944404ef22b3a0fb1259d951d` |
| 22 | `theorem` | [Gamma0_is_congruence](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma0-is-congruence--6642608440872febf5ff23b2.md) | 226 | `result-track:6642608440872febf5ff23b2c536ec4fe45028cd9fc814ebbc03526b7416ec8c` |
| 23 | `theorem` | [Gamma_cong_eq_self](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/gamma-cong-eq-self--c5951cd9537c8aad8f23e7ae.md) | 236 | `result-track:c5951cd9537c8aad8f23e7aea02f0aaab83b0389e3c2b2c55ea194baec8bb8f8` |
| 24 | `theorem` | [conj_cong_is_cong](../../../../../mathematics/Analysis/SpecialFunctions/CongruenceSubgroups/Variant964754b05265e852ecef04378a41256b199d69cd402e1d6a4219653174cdb3f7.lean/declarations/conj-cong-is-cong--ea482fe633f013f812c12c60.md) | 240 | `result-track:ea482fe633f013f812c12c608f1b749235aa76ce9c2c21f7d77136962a0a967c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
