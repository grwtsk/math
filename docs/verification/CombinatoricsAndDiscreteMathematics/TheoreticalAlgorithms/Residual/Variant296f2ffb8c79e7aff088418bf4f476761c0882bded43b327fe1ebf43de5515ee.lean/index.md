# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Residual.Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64ecbe6384ec34e4c61fc89f8fa2d934ff62d5cb",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64ecbe6384ec34e4c61fc89f8fa2d934ff62d5cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ResidualKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/residualkind--1f26175f5a1bebe12391aab4.md) | 19 | `declaration-track:1f26175f5a1bebe12391aab46184bd1c514261947f2b66a29b2dd1275ffc8fdd` |
| 2 | `structure` | [ResidualBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/residualbound--6237154541f545e2b1865d63.md) | 33 | `declaration-track:6237154541f545e2b1865d63940dc3699760dfcdfe4bdc14c64b3cd6331577b6` |
| 3 | `def` | [advance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/advance--49b5368111b50a252d9e2077.md) | 44 | `declaration-track:49b5368111b50a252d9e20772e2615f2532e212632966e14ba2fb04cab9db9d1` |
| 4 | `def` | [propagateFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagatefrom--a0e14b13592037c4038e9e4e.md) | 51 | `declaration-track:a0e14b13592037c4038e9e4e985232d6b59a683c3087172066c1a18abd3334e0` |
| 5 | `def` | [propagateResiduals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagateresiduals--7abfeaf4aa8f1da955e1dfdd.md) | 58 | `declaration-track:7abfeaf4aa8f1da955e1dfdd6a0859933859c4e777691fad12a0105a57ba6c5c` |
| 6 | `def` | [downstreamGain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/downstreamgain--5a4bed9ff3a512f590745df0.md) | 64 | `declaration-track:5a4bed9ff3a512f590745df0fb13d834cd6a22544bb051f8b213066b55d88744` |
| 7 | `def` | [weightedResidual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/weightedresidual--79800c3e436733111985003d.md) | 70 | `declaration-track:79800c3e436733111985003dff426a04a5042261448719ead026ee086648f3ff` |
| 8 | `theorem` | [propagateFrom_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagatefrom-nil--e78833b420c5dd3b9f988601.md) | 78 | `result-track:e78833b420c5dd3b9f9886017c73cd116dab772b7720d53da91ce00c70ca9f55` |
| 9 | `theorem` | [propagateFrom_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagatefrom-cons--e3b73b1546cf51acbb01bbea.md) | 83 | `result-track:e3b73b1546cf51acbb01bbeaa3169ef8c1fe2ef3a6f9e834a9136e634bfe0393` |
| 10 | `theorem` | [propagateFrom_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagatefrom-append--9f36a003a1ab738a7c53798e.md) | 91 | `result-track:9f36a003a1ab738a7c53798e102bdd7a11df4aa4b8dd78b3bda1f7bf76e886ea` |
| 11 | `theorem` | [propagateFrom_closedForm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagatefrom-closedform--6095eaa44fae1d8a19524415.md) | 106 | `result-track:6095eaa44fae1d8a1952441507a736c91f25866b85b4728cf90d205cd56fe95e` |
| 12 | `theorem` | [propagateResiduals_closedForm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagateresiduals-closedform--9293b417ea6ec1e78a40c943.md) | 123 | `result-track:9293b417ea6ec1e78a40c9431a08261250691b52023d68ed1f19a5a11e77f751` |
| 13 | `def` | [propagateResiduals](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/propagateresiduals--8de8190bd6534d8d6665995b.md) | 132 | `declaration-track:8de8190bd6534d8d6665995bf9488ebe772e6ebf554eeca632ffb62e49034507` |
| 14 | `structure` | [ControlledApproximation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/controlledapproximation--42952f396bf3805b96bdd4bd.md) | 150 | `declaration-track:42952f396bf3805b96bdd4bd5695d6af5c26a8a4c2986f2991f0db71acae7a6f` |
| 15 | `def` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/id--8f0294f61fe2f5451194d160.md) | 167 | `declaration-track:8f0294f61fe2f5451194d160aabc1273146a33d7c2a916a40918376efb6fd6f0` |
| 16 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/comp--82c4d9e514f0d0e117b3bc08.md) | 182 | `declaration-track:82c4d9e514f0d0e117b3bc08136c3c5f50c8a2bdf80435e864bf6d01363e119f` |
| 17 | `theorem` | [comp_localError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/comp-localerror--6affc3120ed9f4b46922ef49.md) | 223 | `result-track:6affc3120ed9f4b46922ef49181bec10144193bd75a780f3ec6ec38461cc5a1f` |
| 18 | `theorem` | [comp_lipschitz](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/comp-lipschitz--bdee376c44efb175bb1d5eb4.md) | 231 | `result-track:bdee376c44efb175bb1d5eb4fc6d74f08cda440ecc88968afd733413121898ca` |
| 19 | `theorem` | [comp_error_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/comp-error-assoc--56d04dda1a1cfccea39b6452.md) | 238 | `result-track:56d04dda1a1cfccea39b6452e469cf067e0bc4f1859021cba78256614d271266` |
| 20 | `structure` | [ApproximationStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/approximationstep--f81e6f122c74873a388cbd7f.md) | 258 | `declaration-track:f81e6f122c74873a388cbd7f7cb5a1686f65a776074743a1f77c7ecb09b16e58` |
| 21 | `def` | [toResidualBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/toresidualbound--53b30035564d4336ef48fe4a.md) | 274 | `declaration-track:53b30035564d4336ef48fe4a813e6b60a152b760b5a62b614381c072ccc464fc` |
| 22 | `theorem` | [one_step_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/one-step-bound--01eb0fbbc8d6b4ac9788b56d.md) | 283 | `result-track:01eb0fbbc8d6b4ac9788b56d66d6b1c9d45405aef4545189a4c237ebfa5358e1` |
| 23 | `def` | [runReference](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/runreference--87374d765a094d9fee0ab4d1.md) | 319 | `declaration-track:87374d765a094d9fee0ab4d1fc6dae4cfae3ace9a2bf6022db98aa270b218ec3` |
| 24 | `def` | [runImplementation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/runimplementation--42e876c5ef61f4c116653896.md) | 326 | `declaration-track:42e876c5ef61f4c116653896d1f152933392ee15ab41db7d1470e666074b82f6` |
| 25 | `theorem` | [run_error_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Residual/Variant296f2ffb8c79e7aff088418bf4f476761c0882bded43b327fe1ebf43de5515ee.lean/declarations/run-error-bound--bae4dcbdae18bf9667cbf5e7.md) | 333 | `result-track:bae4dcbdae18bf9667cbf5e7431cf5c0594a2586710674cba1d5ca87c73e1ccf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
