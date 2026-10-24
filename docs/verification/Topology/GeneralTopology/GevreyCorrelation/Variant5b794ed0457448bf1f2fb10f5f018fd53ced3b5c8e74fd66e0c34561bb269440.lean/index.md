# Verification target: GRWTSK.Topology.GeneralTopology.GevreyCorrelation.Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `381ea2a831d39222ecdc6a913652c016b4b2aaa0`.

Source path: `GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlation](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation--e004fc7211641321e0e3ccb4.md) | 21 | `declaration-track:e004fc7211641321e0e3ccb44cacbfe7190c1ba602dc4f01b1c7e579831cf733` |
| 2 | `theorem` | [profile_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/profile-hascompactsupport--7ac7077acfefd3b228ed19de.md) | 25 | `result-track:7ac7077acfefd3b228ed19de4b7fd12c6fb78f28ccb46962582b44a33739d10a` |
| 3 | `theorem` | [scaledProfile_support](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/scaledprofile-support--76c871e264151b3603839616.md) | 30 | `result-track:76c871e264151b3603839616c90c46aa7c738f4f7e1922c607025c4ddf34e1e4` |
| 4 | `theorem` | [dilationOperator_support](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/dilationoperator-support--4a5de9df7e83b93675dfad13.md) | 44 | `result-track:4a5de9df7e83b93675dfad130377de26d2cf49db376c2d4d2f834022330d792c` |
| 5 | `theorem` | [normalizedOperator_support](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/normalizedoperator-support--49f9891ee349e437ab4a4e64.md) | 62 | `result-track:49f9891ee349e437ab4a4e64ca070ad445c0348b8294693515357872524a673e` |
| 6 | `theorem` | [normalizedOperator_continuous](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/normalizedoperator-continuous--6a002cb5b7aafd2fcd9a9c89.md) | 70 | `result-track:6a002cb5b7aafd2fcd9a9c89882eac89b8887e6bf09155232c0664f8ef6454b1` |
| 7 | `theorem` | [normalizedOperator_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/normalizedoperator-hascompactsupport--56fefa31caac33879cdddc44.md) | 78 | `result-track:56fefa31caac33879cdddc44cd27b532a75073fcfcc0f94bc7bbdb0ff40250b4` |
| 8 | `theorem` | [zero_of_radius_le_abs](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/zero-of-radius-le-abs--879144df7a82cc6498b0bdda.md) | 84 | `result-track:879144df7a82cc6498b0bdda225d9c130ce602df00d8ceef83a28d3c791fb970` |
| 9 | `theorem` | [normalizedOperator_zero_of_le_abs](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/normalizedoperator-zero-of-le-abs--919040f5dc15af729d006b9d.md) | 108 | `result-track:919040f5dc15af729d006b9dee4b7759ce973db1f121a813d81ebf22ce92f286` |
| 10 | `theorem` | [correlation_zero_of_le_abs](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-zero-of-le-abs--561caa846240ed5f91bb44de.md) | 115 | `result-track:561caa846240ed5f91bb44de1075655b59be7dda58fbc957063c20c09604a2d7` |
| 11 | `theorem` | [correlation_support](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-support--f4ae04c236e046ec2f42f126.md) | 134 | `result-track:f4ae04c236e046ec2f42f12605c066dc45b54c49b4fb9f00b196f80315c32bf6` |
| 12 | `theorem` | [correlation_zero](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-zero--458b4ef054f7b676ffc4da64.md) | 144 | `result-track:458b4ef054f7b676ffc4da643fcbb77188b438fe187bbd59022fa772e6d8808f` |
| 13 | `theorem` | [correlation_eq_convolution](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-eq-convolution--0e1894d7153f24654669adf1.md) | 150 | `result-track:0e1894d7153f24654669adf101de859e718e7415122a611e7d00d03d61a1d69d` |
| 14 | `theorem` | [correlation_integrable](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-integrable--9cca1d04ad506582c73f6cce.md) | 161 | `result-track:9cca1d04ad506582c73f6cce279680f45980f1f8ebeed6539345f310501ff06b` |
| 15 | `theorem` | [correlation_continuous](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-continuous--704b9682762b3963e3b37ffa.md) | 168 | `result-track:704b9682762b3963e3b37ffadddc37d86911c378367ac039551a892aba3201c6` |
| 16 | `theorem` | [correlation_hasCompactSupport](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/correlation-hascompactsupport--e5719f83fc98848b84afbf9d.md) | 183 | `result-track:e5719f83fc98848b84afbf9db1e7a7d5e5cc9d88e90139c1d29c152fa72666b2` |
| 17 | `theorem` | [profile_support_radii](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/profile-support-radii--9c1dbf96775fd0235b94a344.md) | 189 | `result-track:9c1dbf96775fd0235b94a3443b07ca66241102dc4e83928bf8bc1381eacb5d8e` |
| 18 | `theorem` | [profile_correlation_zero](../../../../../mathematics/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/declarations/profile-correlation-zero--5c2815a68329d46f0faa0c25.md) | 202 | `result-track:5c2815a68329d46f0faa0c25afab96633fbf145a9ebd882cee938557fab56914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
