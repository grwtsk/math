# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Asymptotics.Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b9d4bf8b6249534cfe4313c7876abb9de45081d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b9d4bf8b6249534cfe4313c7876abb9de45081d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean.json)

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
| 1 | `theorem` | [IsBigO.integrableAtFilter](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/isbigo-integrableatfilter--930b64b0f66466e3553de796.md) | 43 | `result-track:930b64b0f66466e3553de796c7ff9d4b8332708d7407ede88cad20060cae061b` |
| 2 | `theorem` | [IsBigO.integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/isbigo-integrable--89d88684c9875956c87e2d2d.md) | 54 | `result-track:89d88684c9875956c87e2d2d3aa1647c3c8f1fdca55ac96fb9a48c9c8d40f74a` |
| 3 | `theorem` | [IsBigO.eventually_integrableOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/isbigo-eventually-integrableon--7c59b5544796ba19c64dfa67.md) | 65 | `result-track:7c59b5544796ba19c64dfa67e23a4fe548b9d3fc4d24e0b1415db8f63972d6d8` |
| 4 | `theorem` | [IsBigO.set_integral_isBigO](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/isbigo-set-integral-isbigo--7128fc8d3b30e6ba28a5a7c7.md) | 85 | `result-track:7128fc8d3b30e6ba28a5a7c710a823438c5a996c7f15b978fcc565d4d161449d` |
| 5 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrable-integrable-of-isbigo-cocompact--81767d1b19dbe4fa51d35d39.md) | 105 | `result-track:81767d1b19dbe4fa51d35d39081ab4ac001627af59d97dec28da301102a71ed9` |
| 6 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot-attop--ee229255410c4122e9fe743f.md) | 117 | `result-track:ee229255410c4122e9fe743f569346cd6eebd91d96a3d402713afdda93893c9b` |
| 7 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrableon-integrableon-of-isbigo-atbot--b05c2b36b41311dd4573fc7b.md) | 128 | `result-track:b05c2b36b41311dd4573fc7b27a8609b8255f7d64f78c385e891fe0ebcc26361` |
| 8 | `theorem` | [LocallyIntegrableOn.integrableOn_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrableon-integrableon-of-isbigo-attop--5d4a7383db4b6ee8fa734775.md) | 136 | `result-track:5d4a7383db4b6ee8fa73477530de7c308b10d02f29a4dbefda4a4992d2d2ef3c` |
| 9 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atBot](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrable-integrable-of-isbigo-atbot--600135d0886976497f8641bc.md) | 144 | `result-track:600135d0886976497f8641bce68623f168ee5e8b83e981537a2d46cab0d572a0` |
| 10 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrable-integrable-of-isbigo-attop--3c02b0c13b5744c075f43335.md) | 152 | `result-track:3c02b0c13b5744c075f433358fc95bc037277328da2fd96fc1ed30a3ba96deb0` |
| 11 | `theorem` | [LocallyIntegrable.integrable_of_isBigO_atTop_of_norm_isNegInvariant](../../../../../mathematics/Analysis/AsymptoticAnalysis/Asymptotics/Variant5642f4f136658ed15825aa54d476354de734bc4cdd8e8647a3b83d06c5187a78.lean/declarations/locallyintegrable-integrable-of-isbigo-attop-of-norm-isneginvariant--f8742533c096b1deeddda829.md) | 166 | `result-track:f8742533c096b1deeddda829297d9fb2eea7489d670d7b06fcb955e5f81e3585` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
