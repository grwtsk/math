# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RamareCorrectedRemainder.Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6c0c2ee5ab6cecd91f23ee10205cff42df31310",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6c0c2ee5ab6cecd91f23ee10205cff42df31310`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathExtras.NumberTheory.PrimeCounting.MertensFirstLogEnvelope` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstMertensRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/firstmertensremainder--dff098200de1d8c774b287a0.md) | 41 | `declaration-track:dff098200de1d8c774b287a08c88a2a5f607c94491e9627382df72943389c541` |
| 2 | `def` | [chebyshevRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/chebyshevremainder--14abceb80b39d93986194a8f.md) | 45 | `declaration-track:14abceb80b39d93986194a8f052c9120186bf859bef6226ca834c6565699d0b4` |
| 3 | `def` | [correctedRemainder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/correctedremainder--53c1273cfe6784840517876c.md) | 49 | `declaration-track:53c1273cfe6784840517876cdfac1fc31451a4a7d9ff3bd24efad4c46affa047` |
| 4 | `theorem` | [correctedRemainder_sub_anchor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/correctedremainder-sub-anchor--d32ec792c16d37fd0452fbd4.md) | 55 | `result-track:d32ec792c16d37fd0452fbd4ce8da4354cc82a75747c01ec98a514fd5c10c2d0` |
| 5 | `theorem` | [correctedRemainder_drift_abs_le_of_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/correctedremainder-drift-abs-le-of-integral--659b261fdd6abca5e3b30f1e.md) | 65 | `result-track:659b261fdd6abca5e3b30f1ec7ceaf1e1b1cbbf21307a78a1f29621cc890ae4f` |
| 6 | `theorem` | [correctedRemainder_drift_abs_le_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/correctedremainder-drift-abs-le-sqrt--adba9130051001a85fa5321f.md) | 75 | `result-track:adba9130051001a85fa5321f6061fa3154e216a3c26c4923a28b7341ca6091bc` |
| 7 | `theorem` | [correctedRemainder_drift_abs_le_linear_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/correctedremainder-drift-abs-le-linear-sqrt--66ffc2ab341f3917685005a4.md) | 130 | `result-track:66ffc2ab341f3917685005a42e9297eec7bd7289d4bd806fc58e28416c48bba5` |
| 8 | `theorem` | [correctedRemainder_drift_abs_le_log_cube](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RamareCorrectedRemainder/Variant889ad3899b5cf39d454590822258f98fe8f8a85d8ec85f380ce2d253a256d9f4.lean/declarations/correctedremainder-drift-abs-le-log-cube--67efae9fb8c8ea2d3b63c019.md) | 207 | `result-track:67efae9fb8c8ea2d3b63c019c5fdd2e5cf32a10a8c817fb6764949b486fed7f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
