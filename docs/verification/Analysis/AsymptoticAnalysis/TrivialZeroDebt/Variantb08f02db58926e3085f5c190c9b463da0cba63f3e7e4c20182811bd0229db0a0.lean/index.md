# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.TrivialZeroDebt.Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ddd061880c34b99f768973a4291f34c9f98ec51",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ddd061880c34b99f768973a4291f34c9f98ec51`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.NatInt` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trivialZeroPoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialzeropoint--cdfdfb3f5656c257193e6794.md) | 33 | `declaration-track:cdfdfb3f5656c257193e67947a7ffb0f6b90399d138c74b51a446dc1d4e84f92` |
| 2 | `theorem` | [trivialZeroPoint_is_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialzeropoint-is-zero--a70fdd1f69407d7f7e76ba6e.md) | 36 | `result-track:a70fdd1f69407d7f7e76ba6e497a8dc9c2388658b2ae797f8d69aa2381a4e9fd` |
| 3 | `theorem` | [trivialZeroPoint_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialzeropoint-re--f1848989d60f3e16b1cf1437.md) | 40 | `result-track:f1848989d60f3e16b1cf1437bb35652c00d0b572fe01cc2f3eb4bd6d211b03df` |
| 4 | `theorem` | [trivialZeroPoint_im](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialzeropoint-im--681ef0c25725d9b72e0e90c5.md) | 45 | `result-track:681ef0c25725d9b72e0e90c5ded9dcdc60c29bcd14a245ef48b828387ca0a1a0` |
| 5 | `theorem` | [zeta_zero_not_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/zeta-zero-not-zero--835e5eafa3a2fc8c4889c1ec.md) | 49 | `result-track:835e5eafa3a2fc8c4889c1ec5e649bc39d28b2a5225b19c67c319aad64787f48` |
| 6 | `def` | [trivialDistance](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialdistance--7f4f5dcadf9e198ed53f4273.md) | 54 | `declaration-track:7f4f5dcadf9e198ed53f427313c3b3e513bd3fa404a39d116dd1d9c2edfd455e` |
| 7 | `theorem` | [trivialDistance_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialdistance-eq--d140708db43e5e1be7212b42.md) | 57 | `result-track:d140708db43e5e1be7212b424ada0fb0ff4682ba0470cb3d0b558369cbd8db00` |
| 8 | `theorem` | [trivialDistance_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialdistance-pos--8b3f4ddb33fab478fad5a363.md) | 62 | `result-track:8b3f4ddb33fab478fad5a3633c638f650a1079eeae6c1af0deade029bb348806` |
| 9 | `def` | [trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution--6cb50dcbe18134108615e1fe.md) | 67 | `declaration-track:6cb50dcbe18134108615e1feb66270b8554058db347d80b0736e3e1b05a4e2b5` |
| 10 | `def` | [zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/zeroendpoint--0006268e5051dfe170e9eb66.md) | 71 | `declaration-track:0006268e5051dfe170e9eb66206c3aaf3186c39378a2558aafa9fc2a9e0f9c88` |
| 11 | `theorem` | [kernel_zeroEndpoint](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/kernel-zeroendpoint--268aa8fa2cba4edc5216de5a.md) | 74 | `result-track:268aa8fa2cba4edc5216de5a8b384ad8dd8c71ce8bdaea258645adc14f7743e1` |
| 12 | `theorem` | [trivialContribution_eq_kernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-eq-kernel--524654d777a97ad730acf6ee.md) | 82 | `result-track:524654d777a97ad730acf6ee37726266cab0d02adecf34f27ccd5ecfa33c6bf4` |
| 13 | `theorem` | [trivialContribution_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-nonnegative--ac3e034e7aef07d2ea96d60a.md) | 95 | `result-track:ac3e034e7aef07d2ea96d60a483d3496f27103ed100293cf8c4d052876990451` |
| 14 | `theorem` | [trivialContribution_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-positive--071156831d9dbd975baa83b1.md) | 101 | `result-track:071156831d9dbd975baa83b177400e03c011b0fb169e070abe34771e4d17a0df` |
| 15 | `theorem` | [trivialContribution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-zero--7babd543eeb4b9d92f628b03.md) | 108 | `result-track:7babd543eeb4b9d92f628b0306c79133d9759928fd661517768ba3d79152a870` |
| 16 | `theorem` | [zeroEndpoint_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/zeroendpoint-zero--06865f85c40319f102907335.md) | 112 | `result-track:06865f85c40319f102907335cd0f9ee55929e8b621643fcdc2003375b9926fb5` |
| 17 | `theorem` | [trivialContribution_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-neg--5ee0296827109d8f0bdb5463.md) | 115 | `result-track:5ee0296827109d8f0bdb54635cc815e20b42cd0ee03b848ada4efa96c6893f7e` |
| 18 | `theorem` | [hasSum_trivialContribution](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/hassum-trivialcontribution--53c953cdb6e84a7dd1377c71.md) | 120 | `result-track:53c953cdb6e84a7dd1377c7102cfd17987dd6729b63314409a34f6548ed0c182` |
| 19 | `theorem` | [trivialContribution_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-summable--50587c2118eaaf0d2a19786d.md) | 131 | `result-track:50587c2118eaaf0d2a19786d03248a496b175348404d7d41220b6ae556343871` |
| 20 | `theorem` | [archimedean_eq_endpoint_add_trivial](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/archimedean-eq-endpoint-add-trivial--b59c6f8b84b0a3503a8b289e.md) | 135 | `result-track:b59c6f8b84b0a3503a8b289e872a610d25a4ea9ab2925eb32dfe267d376f3b21` |
| 21 | `theorem` | [source_minus_endpoint_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/source-minus-endpoint-nonnegative--026aa391256b57cc7afc4a7f.md) | 142 | `result-track:026aa391256b57cc7afc4a7fada5ffc1477ec29a9871489d82f58d5ceea5252a` |
| 22 | `theorem` | [source_minus_endpoint_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/source-minus-endpoint-positive--052e293bf026959f47b7ed31.md) | 148 | `result-track:052e293bf026959f47b7ed312ca5729d8db867ae26c813820644013bd80660b5` |
| 23 | `theorem` | [source_prefix_tail](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/source-prefix-tail--f15bc4f43e96ee4982c71e5c.md) | 158 | `result-track:f15bc4f43e96ee4982c71e5c870323c63b61256e8a348b9b7726fb6cf63f16a2` |
| 24 | `theorem` | [trivialContribution_tail_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-tail-bounds--c5881065a01f362ac15755b0.md) | 167 | `result-track:c5881065a01f362ac15755b0dd19724305b20faf6d7e5708326d7789edb112d8` |
| 25 | `theorem` | [trivialContribution_tail_distance_bounds](../../../../../mathematics/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/declarations/trivialcontribution-tail-distance-bounds--e58d7d67958da2f82449f924.md) | 185 | `result-track:e58d7d67958da2f82449f92488372b0341d9342336ddf8bfc46294d34ab2dc62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
