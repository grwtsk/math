# Verification target: GRWTSK.Topology.GeneralTopology.Bernstein.Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "420249c5cd7d05c7fb235e71b31f0e37eb55cf54",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `420249c5cd7d05c7fb235e71b31f0e37eb55cf54`.

Source path: `GRWTSK/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Bernstein` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Compact` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernstein](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/bernstein--dfad82ee3926d9ab3006cf1e.md) | 64 | `declaration-track:dfad82ee3926d9ab3006cf1e566dca9ad61c1f4937f6ef117a4d9074ba4f4a94` |
| 2 | `theorem` | [bernstein_apply](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/bernstein-apply--bb5b7ff1635349dd2b9eac1a.md) | 69 | `result-track:bb5b7ff1635349dd2b9eac1ab8748092ff99072c940e7b8157af20866ee51149` |
| 3 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/bernstein-nonneg--3c256f73b1b47883ad8b2b99.md) | 75 | `result-track:3c256f73b1b47883ad8b2b994b97e5a141ae16ba44a475546e4f758a6ad51f31` |
| 4 | `def` | [evalBernstein](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/evalbernstein--165b93f775ff10bbc105dc33.md) | 87 | `declaration-track:165b93f775ff10bbc105dc33b04fb66bb249bf79b08dcd6d35b45c42930f2997` |
| 5 | `def` | [z](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/z--f39f6cb4f81b29cbdeb7bce8.md) | 103 | `declaration-track:f39f6cb4f81b29cbdeb7bce876347c80591153bf796baa5fde85214a0f5925e1` |
| 6 | `theorem` | [probability](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/probability--4b668cc1e69ec68ff16690d7.md) | 116 | `result-track:4b668cc1e69ec68ff16690d7ff6c475060c6637baa190d5f6f73fad986307c70` |
| 7 | `theorem` | [variance](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/variance--20b7653f675d55d7fe005051.md) | 123 | `result-track:20b7653f675d55d7fe005051ca0c9c6e4fe9b5e1adfdd35b28f4f69da544a82e` |
| 8 | `def` | [bernsteinApproximation](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/bernsteinapproximation--a523846d68071dc2531d8906.md) | 152 | `declaration-track:a523846d68071dc2531d8906ac955d287f8802a25bcf48f5117cf54b41a967e4` |
| 9 | `theorem` | [apply](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/apply--bc003cb5c7d5fdc4691650e7.md) | 174 | `result-track:bc003cb5c7d5fdc4691650e769255095487d6dbca03a57f0017004361f13a694` |
| 10 | `def` | [δ](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/anonymous--bfc2c5213fcb53029abe715b.md) | 181 | `declaration-track:bfc2c5213fcb53029abe715b14464f335c5e7e2e3562d5c5c9469ac5e5ed4cc3` |
| 11 | `theorem` | [δ_pos](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/pos--cb546cb203a36e5fa02accd7.md) | 185 | `result-track:cb546cb203a36e5fa02accd7c85b6cece59cc49ceb21c7cfbe4dde429110f545` |
| 12 | `def` | [S](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/s--4e11734ac9a76a3b8d018f7f.md) | 191 | `declaration-track:4e11734ac9a76a3b8d018f7f332c74a0a91ad92c0b4d498ff2cba95dfb452baf` |
| 13 | `theorem` | [lt_of_mem_S](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/lt-of-mem-s--ab340689d318b9dea38922d8.md) | 197 | `result-track:ab340689d318b9dea38922d823ce908ac4e4ddaca9bc1c85acb6b005ba8cb3f6` |
| 14 | `theorem` | [le_of_mem_S_compl](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/le-of-mem-s-compl--10c982fb07f8d35ad02dc015.md) | 207 | `result-track:10c982fb07f8d35ad02dc015710c794d9b1363064422d918136b45f6c8d7566a` |
| 15 | `theorem` | [bernsteinApproximation_uniform](../../../../../mathematics/Topology/GeneralTopology/Bernstein/Variant76db90727d90e91a94f499c36aa18429754bab467112d8e9f354848b384b89e1.lean/declarations/bernsteinapproximation-uniform--868549bbbc914812755ddd6f.md) | 235 | `result-track:868549bbbc914812755ddd6f5a2b1ce4d008835dccafe041178fcd18149737b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
