# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cebad11003369a22c414656f8084d064e761a066",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cebad11003369a22c414656f8084d064e761a066`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Factorization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopkinsLevitzki` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Quotient` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Compact` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/instance--59e75a28ec4c6dba9a2f91ee.md) | 46 | `declaration-track:59e75a28ec4c6dba9a2f91ee8f06c2f63d07ae6685a73d0715133c7c1d896190` |
| 2 | `lemma` | [Ideal.isOpen_of_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/ideal-isopen-of-ismaximal--831b4f2211fb11999bcfddd6.md) | 67 | `result-track:831b4f2211fb11999bcfddd62549f77684fdcc4ef60443bba685e4fdcd3b7712` |
| 3 | `lemma` | [Ideal.isOpen_pow_of_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/ideal-isopen-pow-of-ismaximal--cc550b17aca419283ec229f4.md) | 73 | `result-track:cc550b17aca419283ec229f4952ee7f59e5c89da928d79cb585a3ffe2c5887fa` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/instance--35d16d47d1eea8af68c13131.md) | 82 | `declaration-track:35d16d47d1eea8af68c13131cd21a2de2658e976b0baf74bf1ec6cfdbea4e4d3` |
| 5 | `lemma` | [isOpen_maximalIdeal_pow](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/isopen-maximalideal-pow--aee96d25ba623eca23595103.md) | 91 | `result-track:aee96d25ba623eca23595103fa5f549eb34c67d056ccef0ab5e069fb5088b2a7` |
| 6 | `lemma` | [isOpen_maximalIdeal](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/isopen-maximalideal--22a0c4dc24d275b4a60e0ff4.md) | 96 | `result-track:22a0c4dc24d275b4a60e0ff4c5a733540acf6cfb81dd85d8b29a7188fda590e0` |
| 7 | `instance` | [finite_residueField_of_compactSpace](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/finite-residuefield-of-compactspace--da17a4218712dc228a47a4cd.md) | 99 | `declaration-track:da17a4218712dc228a47a4cd592c87ef9f422a4c46a7c42b41042887a39c8227` |
| 8 | `lemma` | [isOpen_iff_finite_quotient](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/isopen-iff-finite-quotient--9872e853bcaa9386323b96f1.md) | 102 | `result-track:9872e853bcaa9386323b96f19ed111407ff7be793880e0f4a74787c9fbcd7710` |
| 9 | `lemma` | [IsDedekindDomain.isOpen_of_ne_bot](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/isdedekinddomain-isopen-of-ne-bot--2b7ff191f160066b42fd130e.md) | 113 | `result-track:2b7ff191f160066b42fd130e944e9258f2228d5961a45e172cca93df494add96` |
| 10 | `lemma` | [IsDedekindDomain.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/isdedekinddomain-isopen-iff--acd5434ce6b31546523694bf.md) | 125 | `result-track:acd5434ce6b31546523694bfa731f6218fd17337e877ddc87303d70f19d4d94d` |
| 11 | `lemma` | [IsDiscreteValuationRing.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant519ac34fc7248ea77f47728c0c1c3c80fd2fcd45e5f833161b70260cb856d8c4.lean/declarations/isdiscretevaluationring-isopen-iff--408f826205af2e691c0b9a94.md) | 133 | `result-track:408f826205af2e691c0b9a94592b14191bf0263b0b4e3ddb25729ad386d1c42d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
