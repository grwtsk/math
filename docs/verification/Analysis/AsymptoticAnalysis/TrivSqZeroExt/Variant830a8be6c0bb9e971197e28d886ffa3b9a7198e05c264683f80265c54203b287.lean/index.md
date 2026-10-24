# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivSqZeroExt.Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71bc66c7f2f2bd3b9e9a2b73ab0694d29e30573b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71bc66c7f2f2bd3b9e9a2b73ab0694d29e30573b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Exponential` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.TrivSqZeroExt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_fst_expSeries](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/hassum-fst-expseries--c56d61438e27d10313484ccb.md) | 56 | `result-track:c56d61438e27d10313484ccb3b7a5ecb2314bd7ea9557b5c6f7488fdb399cdc0` |
| 2 | `theorem` | [hasSum_snd_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/hassum-snd-expseries-of-smul-comm--cb993e3e539f033da05ffdf8.md) | 66 | `result-track:cb993e3e539f033da05ffdf82a8134d6944289cdfaac91bd42f0cc6636f5ed35` |
| 3 | `theorem` | [hasSum_expSeries_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/hassum-expseries-of-smul-comm--b6ddf5a9c101941e62a12b76.md) | 90 | `result-track:b6ddf5a9c101941e62a12b76c0ca08b78436cfad10e267c95a3f8e5792680b5f` |
| 4 | `theorem` | [exp_def_of_smul_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/exp-def-of-smul-comm--8dda199f86a04fa89ec410a0.md) | 117 | `result-track:8dda199f86a04fa89ec410a010019e04cfbd890e28fc53d98f13016de6693207` |
| 5 | `theorem` | [exp_inl](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/exp-inl--9e76c9c28f732f6a019f94a5.md) | 125 | `result-track:9e76c9c28f732f6a019f94a5668558fc6d671e3f69bee6a9c86b7089836cc600` |
| 6 | `theorem` | [exp_inr](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/exp-inr--f7b60bc07603e143610deb11.md) | 131 | `result-track:f7b60bc07603e143610deb11cba444dbeb815e02b7cd2b64cdaeb2c5ff3eff0d` |
| 7 | `theorem` | [exp_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/exp-def--44e1f6fd05c8142c3e18dfe2.md) | 152 | `result-track:44e1f6fd05c8142c3e18dfe22393e3e73e7aec23ae569ff5bfd7889ecf4ed1bd` |
| 8 | `theorem` | [fst_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/fst-exp--0dec6e4c8e3eebfe6033b17b.md) | 157 | `result-track:0dec6e4c8e3eebfe6033b17bf630deb200b642fa147775dbfabe428e53fcc2fe` |
| 9 | `theorem` | [snd_exp](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/snd-exp--2112e7fb023467126c4480ab.md) | 162 | `result-track:2112e7fb023467126c4480abafc4e34e5b6a4d76603625abfcc3612189ec58e0` |
| 10 | `theorem` | [eq_smul_exp_of_invertible](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/eq-smul-exp-of-invertible--bb50d2b8dc1ce491f173f1ae.md) | 167 | `result-track:bb50d2b8dc1ce491f173f1ae1f4db67b951405dc4f5b0fbec66b1c5a4bded2d8` |
| 11 | `theorem` | [eq_smul_exp_of_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variant830a8be6c0bb9e971197e28d886ffa3b9a7198e05c264683f80265c54203b287.lean/declarations/eq-smul-exp-of-ne-zero--563a7c407c27f4643e155dd8.md) | 191 | `result-track:563a7c407c27f4643e155dd82bfce2968671092343c490334030dfc4e4775ef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
