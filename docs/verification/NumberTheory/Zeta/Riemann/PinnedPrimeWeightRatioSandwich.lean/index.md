# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bbb0198822ac9d604ab21c4698bb291867603d7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bbb0198822ac9d604ab21c4698bb291867603d7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBertrandPositivity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightBertrandFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightbertrandfloor--82980395b7dbdf2105f5f531.md) | 44 | `declaration-track:82980395b7dbdf2105f5f531191bbee18a130e20f80f9e70b3cbde57ed7a0816` |
| 2 | `theorem` | [pinnedPrimeWeightBertrandFloor_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightbertrandfloor-pos--5d4477ce9cf5062125a5ce67.md) | 48 | `result-track:5d4477ce9cf5062125a5ce6716a65f415d27f81c909744183ee3e60ee1fd7967` |
| 3 | `theorem` | [exists_bertrandPrime_coefficient_ge_floor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/exists-bertrandprime-coefficient-ge-floor--30319f8ed3b5d50ae2765a22.md) | 59 | `result-track:30319f8ed3b5d50ae2765a22b6bee87176937bacdd37d058f75fb84b39c4d081` |
| 4 | `theorem` | [pinnedPrimeWeightedAmplitude_ge_bertrandFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightedamplitude-ge-bertrandfloor--c9dfc63216184a5bbaa6e04b.md) | 91 | `result-track:c9dfc63216184a5bbaa6e04bfa89a98e567e5cfbd7dd9c91859de72cb7672f5f` |
| 5 | `theorem` | [pinnedPrimeWeightBertrandFloor_sq_le_amplitude_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightbertrandfloor-sq-le-amplitude-sq--c8fcb8f01a9ca767dba2273d.md) | 117 | `result-track:c8fcb8f01a9ca767dba2273dc266631b7fdd0feeb45ce28591b670cf79751bd4` |
| 6 | `theorem` | [primeCoefficientL1Budget_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/primecoefficientl1budget-pos--432f23f6e65ebff962f6fa4e.md) | 130 | `result-track:432f23f6e65ebff962f6fa4e6bd8a43c2b9bce0e1dda3743840704aa956054bf` |
| 7 | `theorem` | [pinnedPrimeWeightedAmplitude_le_of_octaveEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightedamplitude-le-of-octaveenvelope--6f563796d29c6a1ed02df2e2.md) | 137 | `result-track:6f563796d29c6a1ed02df2e223be6d63c28cd0324a50020f7d5da8216a3dc1bd` |
| 8 | `theorem` | [pinnedPrimeWeightedAmplitude_sq_le_of_octaveEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightedamplitude-sq-le-of-octaveenvelope--352fc6a9d549c1852effb82f.md) | 175 | `result-track:352fc6a9d549c1852effb82fbbfeb661f8bac135713560ed7b58eaf826f61b54` |
| 9 | `def` | [pinnedPrimeWeightBertrandMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightbertrandmajorant--c088947bb9f8bc56d2750183.md) | 193 | `declaration-track:c088947bb9f8bc56d2750183cbfdaf1f4f710475ed50770b4c8eb30d3c92d6e9` |
| 10 | `def` | [pinnedPrimeWeightEnvelopeMinorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightenvelopeminorant--2b4eb6043d35b58ed6b45e79.md) | 199 | `declaration-track:2b4eb6043d35b58ed6b45e79f8a87b01540b9601ff04e711f6480ba02d3ee9f5` |
| 11 | `theorem` | [pinnedPrimeWeightRequiredCapacity_le_bertrandMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightrequiredcapacity-le-bertrandmajorant--87a9f5f1ea762b80b7874334.md) | 206 | `result-track:87a9f5f1ea762b80b7874334fc5a7ae7e2e3faac3d2f7145e530b2b3e8b517e0` |
| 12 | `theorem` | [pinnedPrimeWeightEnvelopeMinorant_le_requiredCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightenvelopeminorant-le-requiredcapacity--8e13478cff34ab5db96da7d9.md) | 225 | `result-track:8e13478cff34ab5db96da7d9c7cfb4c2b9ac87f2d699e39458d2b0e3b134ce09` |
| 13 | `theorem` | [pinnedPrimeWeight_requiredCapacity_sandwich](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweight-requiredcapacity-sandwich--ee1527ee637fbb70219e4bc8.md) | 250 | `result-track:ee1527ee637fbb70219e4bc875d05fc4a0847df7beec4c7560c47dcc5df29e71` |
| 14 | `theorem` | [pinnedPrimeWeightBertrandMajorant_eq_cubic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/declarations/pinnedprimeweightbertrandmajorant-eq-cubic--fa9f423aace425c75adc0065.md) | 268 | `result-track:fa9f423aace425c75adc0065ca418312adc1f9c28dca91b0f23298172f2416e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
