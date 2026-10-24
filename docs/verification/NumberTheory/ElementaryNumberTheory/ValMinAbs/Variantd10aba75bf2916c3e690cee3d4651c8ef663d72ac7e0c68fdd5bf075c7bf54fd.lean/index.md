# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ValMinAbs.Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5995fd4c38495e1c0b70027ceca7431443b48bd9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5995fd4c38495e1c0b70027ceca7431443b48bd9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs--82e80f5577368223b7b9bb62.md) | 19 | `declaration-track:82e80f5577368223b7b9bb62eaaa44c8ba9e3a8b37ddf7931db290997263f11c` |
| 2 | `lemma` | [valMinAbs_def_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-def-zero--7511397d618d5e7e7ef74e8b.md) | 23 | `result-track:7511397d618d5e7e7ef74e8b4a712df3c65ba2b203a8e71ca5a2355d0fde653f` |
| 3 | `lemma` | [valMinAbs_def_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-def-pos--a9f9362349c8d87099c65e9d.md) | 25 | `result-track:a9f9362349c8d87099c65e9d237a69ad2efd970b3423398cdd7d8bbe61826544` |
| 4 | `lemma` | [coe_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/coe-valminabs--3d2968fc08489c456b2358f6.md) | 31 | `result-track:3d2968fc08489c456b2358f666a3f7635c7540abf74625687f7411aa46fc4ba3` |
| 5 | `lemma` | [injective_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/injective-valminabs--1b9c6bea3286529c1c010169.md) | 40 | `result-track:1b9c6bea3286529c1c0101697dde9d044ff4c8f73cc191e8f6e0b1e645fa2518` |
| 6 | `lemma` | [valMinAbs_nonneg_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-nonneg-iff--fb78a54fc3d49fd2be47dc63.md) | 43 | `result-track:fb78a54fc3d49fd2be47dc637f12448aae4d71ef4f85a093ea982e940f020afa` |
| 7 | `lemma` | [valMinAbs_mul_two_eq_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-mul-two-eq-iff--9a8013ff009239d074e71670.md) | 48 | `result-track:9a8013ff009239d074e71670b37203f352edebd9696dc84dd0daeb63e59e4e87` |
| 8 | `lemma` | [valMinAbs_mem_Ioc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-mem-ioc--9d893e61567f71daaacb6ad4.md) | 62 | `result-track:9d893e61567f71daaacb6ad44b8c03871d2460d77f05af157120207041e5280c` |
| 9 | `lemma` | [valMinAbs_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-spec--ce69bd2725585e407b67960f.md) | 71 | `result-track:ce69bd2725585e407b67960fe2b59295401f3e1f8b406cb2f15fbdfeec95605a` |
| 10 | `lemma` | [natAbs_valMinAbs_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/natabs-valminabs-le--e5ee6546269e97ee22d817af.md) | 83 | `result-track:e5ee6546269e97ee22d817afe2e405753a0b4f69579ab753c646a3d538de05a8` |
| 11 | `lemma` | [valMinAbs_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-zero--a6ef7b59cf752eab6ea7b483.md) | 92 | `result-track:a6ef7b59cf752eab6ea7b4835ab93600e3b06f0f66a153241a11c431337d6b77` |
| 12 | `lemma` | [valMinAbs_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-eq-zero--ac5a3a001de402c4ea9df4b1.md) | 97 | `result-track:ac5a3a001de402c4ea9df4b1683f82737185ee36bec7410558bc010a90380ba8` |
| 13 | `lemma` | [natCast_natAbs_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/natcast-natabs-valminabs--5607a6bb64e134141c01f224.md) | 103 | `result-track:5607a6bb64e134141c01f2243376572160551afa7563f394256b71aeda2a4aec` |
| 14 | `lemma` | [valMinAbs_neg_of_ne_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-neg-of-ne-half--07559ca8f4922888dda0de97.md) | 114 | `result-track:07559ca8f4922888dda0de97b4b34710ef3252396a8bcee7d5596e152386ce46` |
| 15 | `lemma` | [natAbs_valMinAbs_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/natabs-valminabs-neg--41686fd36036e40ce8b1610e.md) | 125 | `result-track:41686fd36036e40ce8b1610e4565694ecff5b90c381124b91ba94b4198e21c0b` |
| 16 | `lemma` | [val_eq_ite_valMinAbs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/val-eq-ite-valminabs--245659c8a46a9f652920147c.md) | 130 | `result-track:245659c8a46a9f652920147c653d8de2703b0da2f9369f55859e4014820700a8` |
| 17 | `lemma` | [prime_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/prime-ne-zero--181ee4b1a58d1fe515d4a14e.md) | 135 | `result-track:181ee4b1a58d1fe515d4a14e166ccbf4306e760a8a030e40f36ffeda3edf6ff4` |
| 18 | `lemma` | [valMinAbs_natAbs_eq_min](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-natabs-eq-min--0b17db21889970e7a44c525e.md) | 142 | `result-track:0b17db21889970e7a44c525e357289f0db9c216448d26e2d3c8c3c0f0a5e4723` |
| 19 | `lemma` | [valMinAbs_natCast_of_le_half](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-natcast-of-le-half--e990516ca66bbf71fd5c64d2.md) | 148 | `result-track:e990516ca66bbf71fd5c64d2dffde35cc1770bdce58655702f8a956380d2237a` |
| 20 | `lemma` | [valMinAbs_natCast_of_half_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-natcast-of-half-lt--cd40c39482521c5cfde19021.md) | 154 | `result-track:cd40c39482521c5cfde190217ca45ed388aca0b149d755977de9fc19e185e8f0` |
| 21 | `lemma` | [valMinAbs_natCast_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/valminabs-natcast-eq-self--a9b8a37544d2c06cb5d9ae90.md) | 161 | `result-track:a9b8a37544d2c06cb5d9ae90bb33421c9dd25a02dfcd28acbb0272910b835d3b` |
| 22 | `lemma` | [natAbs_valMinAbs_add_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variantd10aba75bf2916c3e690cee3d4651c8ef663d72ac7e0c68fdd5bf075c7bf54fd.lean/declarations/natabs-valminabs-add-le--415ac23c3737dfa335422380.md) | 166 | `result-track:415ac23c3737dfa3354223801c101fcb65035652c9bc11de148c5cfeb1081c04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
