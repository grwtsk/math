# Verification target: GRWTSK.Algebra.GroupTheory.Alternating.Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f6436e591fcf88179183f5db404bd2a3723669f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f6436e591fcf88179183f5db404bd2a3723669f`.

Source path: `GRWTSK/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ConjFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/alternatinggroup--21447c183026754fc9f64e0b.md) | 50 | `declaration-track:21447c183026754fc9f64e0b1ed3ed37cea02fc885aba09e256029ba7470858a` |
| 2 | `instance` | [fta](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/fta--f8331788e4ab59c26c090940.md) | 55 | `declaration-track:f8331788e4ab59c26c09094097dc84159dcda4aa50de9dbf17c17a2b6fe8f273` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/instance--ef0bbc22b20ed507849eae07.md) | 58 | `declaration-track:ef0bbc22b20ed507849eae07421604a0172b89592a9ef03eab08f559f41ab617` |
| 4 | `theorem` | [alternatingGroup_eq_sign_ker](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/alternatinggroup-eq-sign-ker--5c180eb4bb4a222e7027ab46.md) | 63 | `result-track:5c180eb4bb4a222e7027ab467732999e2125d9cb0b20d97393965488b4c55eb3` |
| 5 | `theorem` | [mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/mem-alternatinggroup--add4e06bd42ed28375d88bbd.md) | 70 | `result-track:add4e06bd42ed28375d88bbdc222642371c37afd4be80f5c52d412fb4403d3ba` |
| 6 | `theorem` | [prod_list_swap_mem_alternatingGroup_iff_even_length](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/prod-list-swap-mem-alternatinggroup-iff-even-length--d83e5cad1e5a9c5e236c27e7.md) | 74 | `result-track:d83e5cad1e5a9c5e236c27e7dfa7e85a70ec504931e4b7e6b10a48861f69ff4e` |
| 7 | `theorem` | [IsThreeCycle.mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/isthreecycle-mem-alternatinggroup--c54c9fac24a1d45cd457173f.md) | 81 | `result-track:c54c9fac24a1d45cd457173f568b6a2b28d7954db5f9fd8ad74365eab59c7b35` |
| 8 | `theorem` | [finRotate_bit1_mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/finrotate-bit1-mem-alternatinggroup--6148ac36b35af4ed604ccfe2.md) | 87 | `result-track:6148ac36b35af4ed604ccfe278368b0e89bfef55b571913e1fbd614169e31d02` |
| 9 | `theorem` | [two_mul_card_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/two-mul-card-alternatinggroup--630c4724f8ad75d8829407f0.md) | 94 | `result-track:630c4724f8ad75d8829407f08d54eee9b807e42f1ed00637689ecd16466f81b0` |
| 10 | `instance` | [normal](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/normal--a5f67c6a61c59032b525778a.md) | 105 | `declaration-track:a5f67c6a61c59032b525778a665999543a4d680141469a267105cfc30d8ae813` |
| 11 | `theorem` | [isConj_of](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/isconj-of--bb088e4a23ea040f4a1db22b.md) | 109 | `result-track:bb088e4a23ea040f4a1db22ba37779b105dfd3b44a91cd6e77d16b6803392771` |
| 12 | `theorem` | [isThreeCycle_isConj](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/isthreecycle-isconj--fece5df416b39e21feee59f6.md) | 134 | `result-track:fece5df416b39e21feee59f658d0a722b792669cea7f17442e681d997629b104` |
| 13 | `theorem` | [closure_three_cycles_eq_alternating](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/closure-three-cycles-eq-alternating--9e9d23bddcf50ac66af4f055.md) | 147 | `result-track:9e9d23bddcf50ac66af4f05517ddb4a7db7a026eb11e6633bfd84bd6609adbec` |
| 14 | `theorem` | [IsThreeCycle.alternating_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/isthreecycle-alternating-normalclosure--8b85c29ae462d5e4e09892a6.md) | 175 | `result-track:8b85c29ae462d5e4e09892a69052d438581f4e2a8b4d5f2cc74f9add76eda654` |
| 15 | `theorem` | [isThreeCycle_sq_of_three_mem_cycleType_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/isthreecycle-sq-of-three-mem-cycletype-five--de8008a4c6fc7582d8ffe5f3.md) | 194 | `result-track:de8008a4c6fc7582d8ffe5f36a271553e0279c97867ce9f7346ce27693d12ce5` |
| 16 | `theorem` | [nontrivial_of_three_le_card](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/nontrivial-of-three-le-card--7f2a16ac64e2a24ea4c56e96.md) | 216 | `result-track:7f2a16ac64e2a24ea4c56e9683e361b2e4149dd719a214a9c172bdc868133ce6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/instance--7d4729ae813268ae94c21769.md) | 224 | `declaration-track:7d4729ae813268ae94c2176949a98e671721f61846d715ba7048271924d1a3cc` |
| 18 | `theorem` | [normalClosure_finRotate_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/normalclosure-finrotate-five--953a6bfc0f403f9e678b1606.md) | 232 | `result-track:953a6bfc0f403f9e678b16069d7d62c9881de40c0a7082cb2637bd3144bb04b6` |
| 19 | `theorem` | [normalClosure_swap_mul_swap_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/normalclosure-swap-mul-swap-five--0af3e74c052fd5ad85516703.md) | 255 | `result-track:0af3e74c052fd5ad85516703d9113d49beb0e67a8e98ee0c21a8bab1fbdd6265` |
| 20 | `theorem` | [isConj_swap_mul_swap_of_cycleType_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/isconj-swap-mul-swap-of-cycletype-two--26fae8137b3802c4227dd978.md) | 277 | `result-track:26fae8137b3802c4227dd978fe383f9647326476cba9c981645714dff2c3b1ac` |
| 21 | `instance` | [isSimpleGroup_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant363d1935ff26706d2da14586e1e875f0a430d9d726091bb7f11b96ea18f17ea5.lean/declarations/issimplegroup-five--f1627e2f5626651b878913b1.md) | 308 | `declaration-track:f1627e2f5626651b878913b1109508e012097f5715ad1fb4b2827fddef872734` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
