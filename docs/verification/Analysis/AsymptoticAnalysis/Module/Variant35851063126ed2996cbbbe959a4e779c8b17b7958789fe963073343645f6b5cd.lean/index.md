# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Module.Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54ab13d2682120728f1ed1bf933e98ac2dad2820",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54ab13d2682120728f1ed1bf933e98ac2dad2820`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean.json)

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
| 1 | `theorem` | [HasSum.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/hassum-const-smul--3282478a5123d7407e1f4e22.md) | 24 | `result-track:3282478a5123d7407e1f4e22c45e6cb86a0245f17acd8eb10e70e71174641006` |
| 2 | `theorem` | [Summable.const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/summable-const-smul--856cff8f1f2732409b8eb5c8.md) | 28 | `result-track:856cff8f1f2732409b8eb5c83ae62af4e3ccb0316bb04628351274e0b8d3da0b` |
| 3 | `theorem` | [Summable.tsum_const_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/summable-tsum-const-smul--2aedb1714a751d3a43d1f9af.md) | 33 | `result-track:2aedb1714a751d3a43d1f9af0780866991a699b1cdf5cc24df85582638f3c546` |
| 4 | `lemma` | [tsum_const_smul'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/tsum-const-smul--5c475b6a6fd2c49bb30aa9f3.md) | 39 | `result-track:5c475b6a6fd2c49bb30aa9f3741edfb4657b88d38791e6c23ae0d8a4675cabc4` |
| 5 | `lemma` | [tsum_const_smul''](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/tsum-const-smul--13c42eeee842c3d92777835c.md) | 50 | `result-track:13c42eeee842c3d92777835c5eabb1d3893e6e65dcda311dd3c263c736f432d5` |
| 6 | `theorem` | [HasSum.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/hassum-smul-const--fe6f0ba5f68880f64b223eca.md) | 68 | `result-track:fe6f0ba5f68880f64b223eca472a29e407539583b66809ec2649d96e12e27bdc` |
| 7 | `theorem` | [Summable.smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/summable-smul-const--b11eb4434c94740219cc1751.md) | 72 | `result-track:b11eb4434c94740219cc1751cb58bb3047c4de56d70c120406f0ea1736dd61f5` |
| 8 | `theorem` | [Summable.tsum_smul_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/summable-tsum-smul-const--4826ef0305312fde2100920f.md) | 75 | `result-track:4826ef0305312fde2100920f4f346f150a3d9eaea595e545be8c7098632f4912` |
| 9 | `theorem` | [HasSum.smul_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/hassum-smul-eq--1b7a29d17f6ddc0eaf103852.md) | 92 | `result-track:1b7a29d17f6ddc0eaf103852d496aac8225120dd75b97c9586175a60db80f786` |
| 10 | `theorem` | [HasSum.smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/hassum-smul--5b47580726ed1336de77c6ae.md) | 99 | `result-track:5b47580726ed1336de77c6ae7739475262a04e5f6d83889ea550e85b494a9564` |
| 11 | `theorem` | [tsum_smul_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/tsum-smul-tsum--9f1dcd3f2dd5b3e8875e0df1.md) | 106 | `result-track:9f1dcd3f2dd5b3e8875e0df1d7662d386ba31ceda605a9c8dfa0ac512c80d79d` |
| 12 | `theorem` | [ContinuousLinearMap.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearmap-hassum--6cd9c14f8fd4d51a2a6d0209.md) | 122 | `result-track:6cd9c14f8fd4d51a2a6d0209fff43ea3e379c6aa644959036a560a6ec36344fc` |
| 13 | `theorem` | [ContinuousLinearMap.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearmap-summable--8dbb369d48c033c4e77523df.md) | 128 | `result-track:8dbb369d48c033c4e77523df3db330dad5cd0ca9713fac1b85274cf0abd8a8fd` |
| 14 | `theorem` | [ContinuousLinearMap.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearmap-map-tsum--f0aeddbf44af2c1e191ad45a.md) | 134 | `result-track:f0aeddbf44af2c1e191ad45a454f53aa3988c08e3c47ba95bccc56591e95cc5c` |
| 15 | `theorem` | [ContinuousLinearEquiv.hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearequiv-hassum--0e911391582fbfb2e7aeb6bd.md) | 139 | `result-track:0e911391582fbfb2e7aeb6bd17c51e15e7ea45f920966de2be9b56afa515c5fd` |
| 16 | `theorem` | [ContinuousLinearEquiv.hasSum'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearequiv-hassum--ec2759ba93e20075c75580ff.md) | 145 | `result-track:ec2759ba93e20075c75580ff8d924ce2efbb2258830af3330d5fedfca0afa6c3` |
| 17 | `theorem` | [ContinuousLinearEquiv.summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearequiv-summable--eed22835ca9de46b5eed69e6.md) | 149 | `result-track:eed22835ca9de46b5eed69e69d1940d2032d1a68829d7299fae854faf66013ea` |
| 18 | `theorem` | [ContinuousLinearEquiv.tsum_eq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearequiv-tsum-eq-iff--347ac369fdafed4349b133ae.md) | 153 | `result-track:347ac369fdafed4349b133aea4d281ad6602d9181f0d85f2b57c8eca4471f4df` |
| 19 | `theorem` | [ContinuousLinearEquiv.map_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/continuouslinearequiv-map-tsum--251335f9830d68294a7aab7b.md) | 170 | `result-track:251335f9830d68294a7aab7b9384fa987f43744b1fdd08b73448e2b25ab2b1c4` |
| 20 | `def` | [MulAction.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/mulaction-automorphize--57fb73402ca9d18e427e8569.md) | 189 | `declaration-track:57fb73402ca9d18e427e85694a0a19d97f304b82cd62bc0358818cac962c632f` |
| 21 | `lemma` | [MulAction.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/mulaction-automorphize-smul-left--d6ceae225243762393443167.md) | 206 | `result-track:d6ceae225243762393443167c0267c134fa4f39ff02458108adc22a66094b7d5` |
| 22 | `def` | [QuotientGroup.automorphize](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/quotientgroup-automorphize--72c455ea25cf792448940424.md) | 231 | `declaration-track:72c455ea25cf7924489404241a1093eb4967bc3bb9183f4900f1500ebbb6d53a` |
| 23 | `lemma` | [QuotientGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/quotientgroup-automorphize-smul-left--018d4a0b07f2aca8fbf46eb2.md) | 235 | `result-track:018d4a0b07f2aca8fbf46eb28e98c4f8ef3aee62ce9f86924529e99c349eb45a` |
| 24 | `lemma` | [QuotientAddGroup.automorphize_smul_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Module/Variant35851063126ed2996cbbbe959a4e779c8b17b7958789fe963073343645f6b5cd.lean/declarations/quotientaddgroup-automorphize-smul-left--f77a7195bf74e9722966008a.md) | 248 | `result-track:f77a7195bf74e9722966008a8704020483815717746a9eb269437ea9418541b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
