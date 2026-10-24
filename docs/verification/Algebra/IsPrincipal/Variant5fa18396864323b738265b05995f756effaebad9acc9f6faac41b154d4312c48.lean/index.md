# Verification target: GRWTSK.Algebra.IsPrincipal.Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db8c977a50e921d011186d5fc5014c97a19f129",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db8c977a50e921d011186d5fc5014c97a19f129`.

Source path: `GRWTSK/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isPrincipalSubmonoid](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/isprincipalsubmonoid--a7261bc286cb937e1a301dde.md) | 45 | `declaration-track:a7261bc286cb937e1a301dde5297110379379da813b5d4efb94b9d225dbeb042` |
| 2 | `theorem` | [mem_isPrincipalSubmonoid_iff](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/mem-isprincipalsubmonoid-iff--19804432403e3b135e3a1c4d.md) | 52 | `result-track:19804432403e3b135e3a1c4d39e3f332e7aca066fbc171afbbc12dbfd9c7b6f5` |
| 3 | `theorem` | [span_singleton_mem_isPrincipalSubmonoid](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/span-singleton-mem-isprincipalsubmonoid--e5322836317dbc2c0cefcdc3.md) | 55 | `result-track:e5322836317dbc2c0cefcdc36c97dc683e6103dd871138db6429eb68ff405405` |
| 4 | `def` | [isPrincipalNonZeroDivisorsSubmonoid](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/isprincipalnonzerodivisorssubmonoid--7527075137bdcd0ac18510cf.md) | 60 | `declaration-track:7527075137bdcd0ac18510cf5ed9da843a08087de9caea9d01e023b7bcd9ccb2` |
| 5 | `def` | [associatesEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesequivisprincipal--3ac844ebc67c5de13d18734d.md) | 73 | `declaration-track:3ac844ebc67c5de13d18734dc8dea7ce3383c027beb441e22a3ad35c69c719d6` |
| 6 | `theorem` | [associatesEquivIsPrincipal_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesequivisprincipal-apply--2aad32ccf2da43fcb8bf860e.md) | 83 | `result-track:2aad32ccf2da43fcb8bf860e2e67e3a3a3709a9aec4c99ca52919adf4a26f817` |
| 7 | `theorem` | [associatesEquivIsPrincipal_symm_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesequivisprincipal-symm-apply--602f98dfc733de5e2470d852.md) | 87 | `result-track:602f98dfc733de5e2470d852b14d0468e20fd3af87755b17ebefdea52c408b26` |
| 8 | `theorem` | [associatesEquivIsPrincipal_mul](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesequivisprincipal-mul--09cb3eae53bda780ea0d11da.md) | 90 | `result-track:09cb3eae53bda780ea0d11dabae55a6c0a64361c02c45f6af2eb22ca6dfbb3cf` |
| 9 | `theorem` | [associatesEquivIsPrincipal_map_zero](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesequivisprincipal-map-zero--94cc588d5ae030a0c8e856ff.md) | 97 | `result-track:94cc588d5ae030a0c8e856ff0419271f68cec7020b9249a2591409d46d64e9dc` |
| 10 | `theorem` | [associatesEquivIsPrincipal_map_one](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesequivisprincipal-map-one--5b5cb9b36d8bbdd06da295dc.md) | 102 | `result-track:5b5cb9b36d8bbdd06da295dccd3a168ff5de062b6a05ad7373fbd46444b11c4d` |
| 11 | `def` | [associatesMulEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesmulequivisprincipal--5d522afbdc4dfaa15cc4f2e1.md) | 108 | `declaration-track:5d522afbdc4dfaa15cc4f2e1e93d17f5ac08d0e5a71aefb55c5ab95b9adb1a29` |
| 12 | `def` | [associatesNonZeroDivisorsEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesnonzerodivisorsequivisprincipal--1a559fc8b1cd55eaf1526986.md) | 121 | `declaration-track:1a559fc8b1cd55eaf15269861992cac303072ce6f826ff571af5cf822715f8cd` |
| 13 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_apply](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesnonzerodivisorsequivisprincipal-apply--a1f23f367900a2bcd9bd1e42.md) | 134 | `result-track:a1f23f367900a2bcd9bd1e423dbcb2a095d5633996387df144438d4d5700c2f3` |
| 14 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_coe](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesnonzerodivisorsequivisprincipal-coe--c1e4bd3d6174002cef37e7bb.md) | 137 | `result-track:c1e4bd3d6174002cef37e7bb3700fca0db3a4ab50e491f8b68ed867364600e7c` |
| 15 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_mul](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesnonzerodivisorsequivisprincipal-mul--99842c0705233cf98c9f6aae.md) | 141 | `result-track:99842c0705233cf98c9f6aae482a807943b9ae2a64ca5ff089122e439e1030f8` |
| 16 | `theorem` | [associatesNonZeroDivisorsEquivIsPrincipal_map_one](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesnonzerodivisorsequivisprincipal-map-one--e30d9f506bc2ae3d715e342a.md) | 149 | `result-track:e30d9f506bc2ae3d715e342a2e5c9c0e14db94e8960852c0f4c9fc47d4f71913` |
| 17 | `def` | [associatesNonZeroDivisorsMulEquivIsPrincipal](../../../../mathematics/Algebra/IsPrincipal/Variant5fa18396864323b738265b05995f756effaebad9acc9f6faac41b154d4312c48.lean/declarations/associatesnonzerodivisorsmulequivisprincipal--82b1eb2408e390958fe25be9.md) | 156 | `declaration-track:82b1eb2408e390958fe25be950a9eeb796b0a095171503d5974c48f50a7562bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
