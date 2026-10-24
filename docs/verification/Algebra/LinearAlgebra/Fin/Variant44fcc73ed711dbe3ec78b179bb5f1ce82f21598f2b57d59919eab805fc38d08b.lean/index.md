# Verification target: GRWTSK.Algebra.LinearAlgebra.Fin.Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "648ad6b0fe6f7f5b0212ae387a3c934ad12fbb99",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `648ad6b0fe6f7f5b0212ae387a3c934ad12fbb99`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_insertNth](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/map-insertnth--db4b3648b8c5a6a2c8f2ebc2.md) | 66 | `result-track:db4b3648b8c5a6a2c8f2ebc29de7f3fe0c4e8c97e7b664c30212cb263ac87b33` |
| 2 | `theorem` | [neg_one_pow_smul_map_insertNth](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/neg-one-pow-smul-map-insertnth--b907d48bb77065f2016f9849.md) | 71 | `result-track:b907d48bb77065f2016f98499c4107767822c593912166e948635466cc75a58a` |
| 3 | `theorem` | [neg_one_pow_smul_map_removeNth_add_eq_zero_of_eq](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/neg-one-pow-smul-map-removenth-add-eq-zero-of-eq--955e0e23f49a65dde7d8fb6f.md) | 84 | `result-track:955e0e23f49a65dde7d8fb6fd7c4c3ffef0966c0366eec852d8e5ba7f679ad49` |
| 4 | `def` | [alternatizeUncurryFin](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin--9f11a84bac8dc0252ca54357.md) | 108 | `declaration-track:9f11a84bac8dc0252ca54357208d1e33b96f89fa6f28f38f213b7e231e492d0a` |
| 5 | `theorem` | [alternatizeUncurryFin_apply](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin-apply--b6742ff82efc366b957f756b.md) | 124 | `result-track:b6742ff82efc366b957f756b19e3f4bd1cc91fcf2975cc3c69beec16b14259a1` |
| 6 | `theorem` | [alternatizeUncurryFin_add](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin-add--098923afc2fc7b04827ef2dc.md) | 129 | `result-track:098923afc2fc7b04827ef2dc5b3a8a844ddf74abc44f8067f43fe54e0470b114` |
| 7 | `lemma` | [alternatizeUncurryFin_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin-curryleft--f862cca4ec84c2cf82f69d41.md) | 135 | `result-track:f862cca4ec84c2cf82f69d412725d834f462921bc9486d1433fabaa600de6773` |
| 8 | `theorem` | [alternatizeUncurryFin_smul](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin-smul--70bd3459c6724dbc65de4c45.md) | 143 | `result-track:70bd3459c6724dbc65de4c45ef303e7d37008e24f21995c822a42e7450459eae` |
| 9 | `def` | [alternatizeUncurryFinLM](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfinlm--4605cac51f87e624464bafc5.md) | 150 | `declaration-track:4605cac51f87e624464bafc585cdfd1c2daecdd373aa6b905a1ec8f1f50bc090` |
| 10 | `theorem` | [alternatizeUncurryFin_alternatizeUncurryFinLM_comp_apply](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin-alternatizeuncurryfinlm-comp-apply--2de7123bb214a04e9c871c34.md) | 175 | `result-track:2de7123bb214a04e9c871c34144133bcf664bb6fa2ca95227eca460972026912` |
| 11 | `theorem` | [alternatizeUncurryFin_alternatizeUncurryFinLM_comp_of_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/Fin/Variant44fcc73ed711dbe3ec78b179bb5f1ce82f21598f2b57d59919eab805fc38d08b.lean/declarations/alternatizeuncurryfin-alternatizeuncurryfinlm-comp-of-symmetric--b1a0d18d2dfa9c1dbdd371d8.md) | 202 | `result-track:b1a0d18d2dfa9c1dbdd371d8e80931f806b23a2cbf4174791f2aa88eea28cb12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
