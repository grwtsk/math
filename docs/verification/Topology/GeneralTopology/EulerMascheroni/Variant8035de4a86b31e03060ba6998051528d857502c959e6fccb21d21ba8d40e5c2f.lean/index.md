# Verification target: GRWTSK.Topology.GeneralTopology.EulerMascheroni.Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70239be26bd5307a6e8fca5c5c45496014960f41",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70239be26bd5307a6e8fca5c5c45496014960f41`.

Source path: `GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.ExponentialBounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq--6c5384b9b3ec1eee07f6f7e2.md) | 45 | `declaration-track:6c5384b9b3ec1eee07f6f7e2e3693a18b5f4c4ee8b15190ba8b488f33786fcb8` |
| 2 | `lemma` | [eulerMascheroniSeq_zero](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq-zero--cb9d5193d99268b9d12295c4.md) | 47 | `result-track:cb9d5193d99268b9d12295c4280dc24fbbc66760a98f391a25573ec3452d4b7c` |
| 3 | `lemma` | [strictMono_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/strictmono-eulermascheroniseq--df9079d39966f5aa11faa0a8.md) | 50 | `result-track:df9079d39966f5aa11faa0a8534ca939f3556510f58f645ab1384f113b9cb943` |
| 4 | `lemma` | [one_half_lt_eulerMascheroniSeq_six](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/one-half-lt-eulermascheroniseq-six--5d7ff30287e0f6d4d7472334.md) | 62 | `result-track:5d7ff30287e0f6d4d74723347771bd2ccdd16394b181c9ea670d282792735c66` |
| 5 | `def` | [eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq--9de85f2feca9d3f7ce7f544b.md) | 77 | `declaration-track:9de85f2feca9d3f7ce7f544b894936ec09982ea610aeab075324ab8f73e5cd4a` |
| 6 | `lemma` | [eulerMascheroniSeq'_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq-one--14fa5df7ff383b03fa15fe35.md) | 80 | `result-track:14fa5df7ff383b03fa15fe35d9a8e5fd0b06bad174797a0ad489c53e7ff38824` |
| 7 | `lemma` | [strictAnti_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/strictanti-eulermascheroniseq--2f4bc37d847398c74e0a08a3.md) | 83 | `result-track:2f4bc37d847398c74e0a08a3f12b0e432025b6b2bde7fa68a0cf812b7b760e95` |
| 8 | `lemma` | [eulerMascheroniSeq'_six_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq-six-lt-two-thirds--af55a3d738f04e6759b65fc7.md) | 97 | `result-track:af55a3d738f04e6759b65fc7dec45513bec2b4a6c285e7497b4adf941a9ba450` |
| 9 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq-lt-eulermascheroniseq--5c1d4a438619d5433d359f7c.md) | 111 | `result-track:5c1d4a438619d5433d359f7c9ae1de5ab59c41e1f623ff5f2a937d0bddc8705e` |
| 10 | `def` | [eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniconstant--87f0761fd562345e8a86d5a8.md) | 125 | `declaration-track:87f0761fd562345e8a86d5a8ba4b1cbc151d87cf4a107f76c13048409d50d0bf` |
| 11 | `lemma` | [tendsto_eulerMascheroniSeq](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/tendsto-eulermascheroniseq--c08d93ada640389a6bfc87b0.md) | 127 | `result-track:c08d93ada640389a6bfc87b063abd68890afe547e478bc3d8400cb9998d16d3c` |
| 12 | `lemma` | [tendsto_harmonic_sub_log_add_one](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/tendsto-harmonic-sub-log-add-one--354f8f3f7392e2e3a1e7fa33.md) | 133 | `result-track:354f8f3f7392e2e3a1e7fa33f34d7cecf90d62884b1e1b9053c8fe824f4ab6ba` |
| 13 | `lemma` | [tendsto_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/tendsto-eulermascheroniseq--e6bb5da5be139ef63743b7b9.md) | 137 | `result-track:e6bb5da5be139ef63743b7b904dc57981800dfd0bda814ce5a482b675d5edf42` |
| 14 | `lemma` | [tendsto_harmonic_sub_log](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/tendsto-harmonic-sub-log--72706f223ae0c3ee6577c02c.md) | 147 | `result-track:72706f223ae0c3ee6577c02c60a19066437767d26e423afa903c3d903036b939` |
| 15 | `lemma` | [eulerMascheroniSeq_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniseq-lt-eulermascheroniconstant--2933e7b40007a51cedd1f11f.md) | 153 | `result-track:2933e7b40007a51cedd1f11f127f507e4c02b59bed00683b53e33ca2c013d104` |
| 16 | `lemma` | [eulerMascheroniConstant_lt_eulerMascheroniSeq'](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniconstant-lt-eulermascheroniseq--254bfff5cba450734f7bfde3.md) | 158 | `result-track:254bfff5cba450734f7bfde35b3451f6bad138559272d10b9d9450413a0bf867` |
| 17 | `lemma` | [one_half_lt_eulerMascheroniConstant](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/one-half-lt-eulermascheroniconstant--3e3961302698674dc5999444.md) | 164 | `result-track:3e3961302698674dc5999444831ca5aa5abb92d1084fd3d400f60868140e9e86` |
| 18 | `lemma` | [eulerMascheroniConstant_lt_two_thirds](../../../../../mathematics/Topology/GeneralTopology/EulerMascheroni/Variant8035de4a86b31e03060ba6998051528d857502c959e6fccb21d21ba8d40e5c2f.lean/declarations/eulermascheroniconstant-lt-two-thirds--6171ee250db0d9c0717ee8e2.md) | 168 | `result-track:6171ee250db0d9c0717ee8e21d89a8113443221cbdb7068a75dfffec8ca2e3bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
