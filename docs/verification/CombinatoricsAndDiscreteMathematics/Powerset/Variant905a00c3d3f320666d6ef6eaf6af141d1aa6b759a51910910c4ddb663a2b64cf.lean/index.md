# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3a8fdd69a4167dfcb7bc7722cfce5fdc7405fe3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3a8fdd69a4167dfcb7bc7722cfce5fdc7405fe3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Finset.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/finset-fintype--ecf795b6ff67250661427a83.md) | 28 | `declaration-track:ecf795b6ff67250661427a83e0bb508ce49cf0036374f8deadc90042c759b441` |
| 2 | `theorem` | [Fintype.card_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/fintype-card-finset--7a8600bc334649e99ce0fb41.md) | 33 | `result-track:7a8600bc334649e99ce0fb4182bc050f53a21aabf74e4c14cd7ac6f833bcbc95` |
| 3 | `theorem` | [Finset.powerset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/finset-powerset-univ--15e0e9b0caaeda97c6481946.md) | 38 | `result-track:15e0e9b0caaeda97c6481946a7681a59216f277b8c0ecaa1aa964ecc29ba87c0` |
| 4 | `theorem` | [Finset.powerset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/finset-powerset-eq-univ--25f14a53721c2d878fa61e25.md) | 43 | `result-track:25f14a53721c2d878fa61e257b0144a30258f0a80c4912d21c9386cffabac36f` |
| 5 | `theorem` | [Finset.mem_powerset_len_univ_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/finset-mem-powerset-len-univ-iff--168db1437e157fb596292b16.md) | 48 | `result-track:168db1437e157fb596292b163cdc5edc57744546dddb2e2a15810179de14d5e7` |
| 6 | `theorem` | [Finset.univ_filter_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/finset-univ-filter-card-eq--351f3c57bce0227e2cb4c08b.md) | 54 | `result-track:351f3c57bce0227e2cb4c08b49921aca9db4ab2db0eaf9c6ce50eb43511e7782` |
| 7 | `theorem` | [Fintype.card_finset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/fintype-card-finset-len--46e132eed4293af511886502.md) | 61 | `result-track:46e132eed4293af511886502c4760b0dab97bc8f82454a22786f844e771bbf1a` |
| 8 | `instance` | [Set.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/set-fintype--c9bf41fd897160bd9bd73302.md) | 66 | `declaration-track:c9bf41fd897160bd9bd7330296edbfedfc29974b2da78c4525fc640abad430ec` |
| 9 | `instance` | [Set.finite'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/set-finite--f4d02a9efeec7402e1beceac.md) | 76 | `declaration-track:f4d02a9efeec7402e1beceacc6e60531fb358f94f08c059c61c61228d8547c56` |
| 10 | `theorem` | [Fintype.card_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant905a00c3d3f320666d6ef6eaf6af141d1aa6b759a51910910c4ddb663a2b64cf.lean/declarations/fintype-card-set--8fddbb628acc5df57e751f49.md) | 82 | `result-track:8fddbb628acc5df57e751f4971019ad4704cb3adc37f061580424f5009a26c7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
