# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.AddCircle.Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "925e37150e9a30e839bd8fa90d4231585297ca6e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `925e37150e9a30e839bd8fa90d4231585297ca6e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/instance--d0d749939e04ecf23651b77f.md) | 51 | `declaration-track:d0d749939e04ecf23651b77f4c9b3f16168fb5084b8c0f3221e54bd5978cab47` |
| 2 | `theorem` | [norm_coe_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-coe-mul--7be6a334873cb9175b6b4ae0.md) | 54 | `result-track:7be6a334873cb9175b6b4ae09f38337087af37e53e14bdc6772315f2acdc1196` |
| 3 | `theorem` | [norm_neg_period](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-neg-period--97b18d2fa8565550fd803ef5.md) | 63 | `result-track:97b18d2fa8565550fd803ef5ac2a1816f8a3a8de749315a132a1c7e033629ec2` |
| 4 | `theorem` | [norm_eq_of_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-eq-of-zero--10a63ae60162da258865007e.md) | 70 | `result-track:10a63ae60162da258865007ed25ba47d3f473aa653f6a942fd5879258f87c04a` |
| 5 | `theorem` | [norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-eq--7e7e37e86c0fde4ff5ded17a.md) | 76 | `result-track:7e7e37e86c0fde4ff5ded17a52eeb91b074cfd3f8fd08e37c41f1f483e481e03` |
| 6 | `theorem` | [norm_eq'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-eq--d44071115617841957620fd6.md) | 96 | `result-track:d44071115617841957620fd64b602ee76434dc8a331ee5dcb64a43e7d74afe65` |
| 7 | `theorem` | [norm_le_half_period](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-le-half-period--20557a4f933a0ac14336b4c1.md) | 102 | `result-track:20557a4f933a0ac14336b4c1342b99fa7dee0bc5fa3ee0f9a8cfa13a9950f6b6` |
| 8 | `theorem` | [norm_half_period_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-half-period-eq--7a315da92726daca2f67a968.md) | 110 | `result-track:7a315da92726daca2f67a9686f15f776e9eab462e2072833e19d596f1a8a578f` |
| 9 | `theorem` | [norm_coe_eq_abs_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-coe-eq-abs-iff--f420fdf7ccc2f268a61a96ab.md) | 115 | `result-track:f420fdf7ccc2f268a61a96ab83cb02b0c501ea74867c11f1eaac2fabd82da3c8` |
| 10 | `theorem` | [closedBall_eq_univ_of_half_period_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/closedball-eq-univ-of-half-period-le--4dff6a43b8d8ff832cbfbe1e.md) | 138 | `result-track:4dff6a43b8d8ff832cbfbe1e825657328b2522744d11bb8ff05286610d1f285b` |
| 11 | `theorem` | [coe_real_preimage_closedBall_period_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/coe-real-preimage-closedball-period-zero--2426699be90a62d6ce361d40.md) | 144 | `result-track:2426699be90a62d6ce361d40987e2d0badd00d3d7c84512ff91e0cee0866a8af` |
| 12 | `theorem` | [coe_real_preimage_closedBall_eq_iUnion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/coe-real-preimage-closedball-eq-iunion--70c48c459a212e4d059fe285.md) | 149 | `result-track:70c48c459a212e4d059fe285a59b9c2d14207e9347d2a2d1c77f55cc65de90b2` |
| 13 | `theorem` | [coe_real_preimage_closedBall_inter_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/coe-real-preimage-closedball-inter-eq--b018b768a76607261fbf9c6b.md) | 162 | `result-track:b018b768a76607261fbf9c6b7b7ac92fc2d8d422915a194df24cf94463616e82` |
| 14 | `theorem` | [norm_div_natCast](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-div-natcast--3bbbfb8ce0ca9d54bdb21884.md) | 200 | `result-track:3bbbfb8ce0ca9d54bdb2188442f1d0cb1060b1799108ed90949ea1dc4b93104f` |
| 15 | `theorem` | [exists_norm_eq_of_isOfFinAddOrder](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/exists-norm-eq-of-isoffinaddorder--e6fe654633447337ba3cd4da.md) | 205 | `result-track:e6fe654633447337ba3cd4da3719a30f2a611fe89d09cec4f4670493faf1e920` |
| 16 | `theorem` | [le_add_order_smul_norm_of_isOfFinAddOrder](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/le-add-order-smul-norm-of-isoffinaddorder--a890b00bc7bcf841940f0ebc.md) | 213 | `result-track:a890b00bc7bcf841940f0ebc6f59d98e2cf7656bdb52584710cc8d5cdf21a888` |
| 17 | `theorem` | [norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/AddCircle/Variant7b3ea27893806daf2e7f9743a30945e5c2936d12ccebe6c1b564c8745ad10ca0.lean/declarations/norm-eq--3e00320ddfb6478415be3fac.md) | 231 | `result-track:3e00320ddfb6478415be3fac208516262497531a0a66515f9004bd41b358ad5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
