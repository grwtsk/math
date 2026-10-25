# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PartENat.Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82854d661248cedaa8dab5e76494136770e523a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82854d661248cedaa8dab5e76494136770e523a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.ToNat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PartENat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPartENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat--dbd6fed2de334983aa9f9f0d.md) | 34 | `declaration-track:dbd6fed2de334983aa9f9f0da2814add62de61cd03ba3b7d24602fb36667c070` |
| 2 | `theorem` | [partENatOfENat_toENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/partenatofenat-toenat--a043462fe3f7122899442a4d.md) | 41 | `result-track:a043462fe3f7122899442a4db629f2ae96bdd087a2e09bdc9837497df9440ea4` |
| 3 | `theorem` | [toPartENat_natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-natcast--6c8ba84c7c5be0599fa00c42.md) | 44 | `result-track:6c8ba84c7c5be0599fa00c429733f8d6b8dfa9655be854691de4c267be663c8a` |
| 4 | `theorem` | [toPartENat_apply_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-apply-of-lt-aleph0--1b76726f9e8c71f6fa548fc7.md) | 47 | `result-track:1b76726f9e8c71f6fa548fc7be8fb05fb46eb3a2a28eaae5452682857a973a09` |
| 5 | `theorem` | [toPartENat_eq_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-eq-top--f2477eaba349697780a32b5e.md) | 50 | `result-track:f2477eaba349697780a32b5ef7ba9d6f70a0ca074a9a09df3e731ee96a7f9fca` |
| 6 | `theorem` | [toPartENat_apply_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-apply-of-aleph0-le--978cc9ff32a3cbee27e86821.md) | 56 | `result-track:978cc9ff32a3cbee27e8682137ec490b472ca4bce5417d55aff9b0e498678414` |
| 7 | `theorem` | [mk_toPartENat_of_infinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/mk-topartenat-of-infinite--c6ca3682bc3e7131d82ae619.md) | 60 | `result-track:c6ca3682bc3e7131d82ae619e18a157da5ae4fde4e68cc02435ee21eb2506e2a` |
| 8 | `theorem` | [aleph0_toPartENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/aleph0-topartenat--f25db80dc604d92b7b68d834.md) | 64 | `result-track:f25db80dc604d92b7b68d834c2c000a625f98d3406a2b936344260ee2fb76cb4` |
| 9 | `theorem` | [toPartENat_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-surjective--05cc6fc090e39f926769ac3b.md) | 67 | `result-track:05cc6fc090e39f926769ac3b259f7b9397523ff77066014633b8a1c518407c55` |
| 10 | `theorem` | [toPartENat_strictMonoOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-strictmonoon--594c576f1b8f8f4ba87ecc8c.md) | 71 | `result-track:594c576f1b8f8f4ba87ecc8cc3b0f16e5dbc6e74f41a5a9392d38d412b6430bd` |
| 11 | `lemma` | [toPartENat_le_iff_of_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-le-iff-of-le-aleph0--5b46ff37c47c6557159d2c41.md) | 74 | `result-track:5b46ff37c47c6557159d2c41d33ddff6381e2ef64f254f6598b3dfe210bfdc51` |
| 12 | `lemma` | [toPartENat_le_iff_of_lt_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-le-iff-of-lt-aleph0--940632b7e4fc4cac24c6bb7b.md) | 80 | `result-track:940632b7e4fc4cac24c6bb7b9728fda06e534980acc602959641c00c6bc98810` |
| 13 | `lemma` | [toPartENat_inj_of_le_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-inj-of-le-aleph0--b9ae9d21d63afc78c12d5db9.md) | 86 | `result-track:b9ae9d21d63afc78c12d5db945622e2d8ee7f66375ba1a01a664d579b3cf37d9` |
| 14 | `theorem` | [toPartENat_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-mono--c80d67286de50b3c1e972fca.md) | 93 | `result-track:c80d67286de50b3c1e972fcac3d6aed5de61a77af815121dee334d00e5072798` |
| 15 | `theorem` | [toPartENat_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-lift--c31caa3cca7df24e4c9eb7cc.md) | 97 | `result-track:c31caa3cca7df24e4c9eb7cc163435a80b2d539f202f889da52321171e454e18` |
| 16 | `theorem` | [toPartENat_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/topartenat-congr--4e951b3c26852da8d6f1cca8.md) | 100 | `result-track:4e951b3c26852da8d6f1cca840b3ddc2ddadbc276e1a63caa3d95ee1d46f1899` |
| 17 | `theorem` | [mk_toPartENat_eq_coe_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/PartENat/Variant3d9d33d205dbc3e95028ec47c531b7a213ca78f1b0a26779c3a5fafa20fd564b.lean/declarations/mk-topartenat-eq-coe-card--c643cb60db915a1e63034ddd.md) | 103 | `result-track:c643cb60db915a1e63034dddd584b2ccb52dfa0c63ea62c8d0e6fddf3ad40411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
