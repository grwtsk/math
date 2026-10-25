# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.PSub.Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b9b86f3da4ae2ac5498a229d5e24d314275af25",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b9b86f3da4ae2ac5498a229d5e24d314275af25`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppred](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/ppred--88246e539cbf48d9e5ed8761.md) | 40 | `declaration-track:88246e539cbf48d9e5ed8761c208a2469b90dd9b4a936775187f2d588149f1e2` |
| 2 | `theorem` | [ppred_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/ppred-zero--a3ce7a3bb4625c065ea0a220.md) | 46 | `result-track:a3ce7a3bb4625c065ea0a2207127f3bbdd1966373f73d737a7ccffd685195d71` |
| 3 | `theorem` | [ppred_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/ppred-succ--724d772aae6e037c7520b7b6.md) | 49 | `result-track:724d772aae6e037c7520b7b69808643cd5b2750ba437fcfac4235a4bcc581e9f` |
| 4 | `def` | [psub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub--68be70575f713f303c707f99.md) | 53 | `declaration-track:68be70575f713f303c707f990514a27a83a17cb6c3c2264b1db9f620bd99ba95` |
| 5 | `theorem` | [psub_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-zero--cdccdfc5235b5050d673e7ad.md) | 59 | `result-track:cdccdfc5235b5050d673e7ad2467957a8119e40d5c0e86edad78037066df8517` |
| 6 | `theorem` | [psub_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-succ--afab0ef0caa5634bdd59a7ff.md) | 62 | `result-track:afab0ef0caa5634bdd59a7ff952220d68ca253d751dc732c00d78accae2c489e` |
| 7 | `theorem` | [pred_eq_ppred](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/pred-eq-ppred--66a8e17b20ca5937fe2c9b40.md) | 64 | `result-track:66a8e17b20ca5937fe2c9b400d3321bbc4c5a87a13cfdb4706ce70a41e86bfe1` |
| 8 | `theorem` | [sub_eq_psub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/sub-eq-psub--a6711321791bc16332875cea.md) | 67 | `result-track:a6711321791bc16332875cea42bd5810ce2b131642ee360984d2547922a57ff5` |
| 9 | `theorem` | [ppred_eq_some](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/ppred-eq-some--0ace7a5322d1728db58bc08a.md) | 73 | `result-track:0ace7a5322d1728db58bc08ab5d5229ecb9174ac55d2cfa5aa95ed978aaaff96` |
| 10 | `theorem` | [ppred_eq_none](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/ppred-eq-none--38a9f7608db3101c11339051.md) | 82 | `result-track:38a9f7608db3101c113390514af3c7ed5e19842245155c2ea8864141cf3460b8` |
| 11 | `theorem` | [psub_eq_some](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-eq-some--7557bd8a868b4f33bf00057b.md) | 87 | `result-track:7557bd8a868b4f33bf00057bc46cb9481101e20f87014f74da2adab3bbe1220f` |
| 12 | `theorem` | [psub_eq_none](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-eq-none--43f43e3a86ef074d3a4bf843.md) | 95 | `result-track:43f43e3a86ef074d3a4bf84376aa2eb2734f11f241a2b73d6fff17fa426ee0de` |
| 13 | `theorem` | [ppred_eq_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/ppred-eq-pred--242fa107c90ff15a0c0dfd73.md) | 106 | `result-track:242fa107c90ff15a0c0dfd73d0f0bba42ec53f97cde1f9708cf5add9906f8bb8` |
| 14 | `theorem` | [psub_eq_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-eq-sub--885e3cf3df413d22634ecc37.md) | 110 | `result-track:885e3cf3df413d22634ecc37075f399a8791ad71d2bb986e9f382d87f2c2a172` |
| 15 | `theorem` | [psub_add](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-add--e27b90046dcc639d33b1f555.md) | 115 | `result-track:e27b90046dcc639d33b1f555371ebc9cb8a8a8f5b82c8e23f3d3eb489d0be92c` |
| 16 | `def` | [psub'](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub--2599581db2dde12b20b9e13a.md) | 124 | `declaration-track:2599581db2dde12b20b9e13a86152ceabf52bd41b7624a1221a47ef2a6398a8e` |
| 17 | `theorem` | [psub'_eq_psub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variant3dd8d409a12208a14b587bbc77d62857feb46f0bc4b8693392da29eb1d96e889.lean/declarations/psub-eq-psub--041df646816323aef74499c8.md) | 128 | `result-track:041df646816323aef74499c8239b40bdf4a29895f27bc011db5bb91c47c0ca8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
