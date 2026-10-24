# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeLatticePlan.Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6423e14e00e7636182971c33596fd3ff550f97f3",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6423e14e00e7636182971c33596fd3ff550f97f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeLatticeGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/primelatticegraph--e3682bcb2c162bc2780b535d.md) | 31 | `declaration-track:e3682bcb2c162bc2780b535d557450675d3f3c42480634a7990ee4ce21e6cd6e` |
| 2 | `def` | [DependencyClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/dependencyclosed--2f6ad9b0a09f078909b00d6c.md) | 46 | `declaration-track:2f6ad9b0a09f078909b00d6c53c761bee056b1fd5b1dedd429699212d79234be` |
| 3 | `theorem` | [dependency_irreflexive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/dependency-irreflexive--1ad5bca3602fa96b0f7e1cee.md) | 52 | `result-track:1ad5bca3602fa96b0f7e1ceee271cce8d64ed0166743c8cc2af6de67cc380ac7` |
| 4 | `def` | [PrimeLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/primelattice--e435fe1fcdfe0eb5fd99fd38.md) | 61 | `declaration-track:e435fe1fcdfe0eb5fd99fd387524c245524e4e9b603c9ccea34620affdfded1d` |
| 5 | `def` | [meet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/meet--6ff27a2ee70f22b819544ebf.md) | 70 | `declaration-track:6ff27a2ee70f22b819544ebf9667c1f9f45ed8e1df21d30858d135596f8d8a0f` |
| 6 | `def` | [join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/join--991e1a6ed9d73668f0676d9f.md) | 81 | `declaration-track:991e1a6ed9d73668f0676d9f3ffbac9c625eee604b1b3bed659c8f7b4f263c58` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/instance--a0e4693ed492417862ca9592.md) | 93 | `declaration-track:a0e4693ed492417862ca9592be345b59cb9016e24c1ea16787b0d563f6ada32a` |
| 8 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/bottom--891e365a2bc958683e24bd72.md) | 131 | `declaration-track:891e365a2bc958683e24bd72ec0673613168685a47a6f9262b8075a343f06a69` |
| 9 | `def` | [top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/top--d4003407f285979b6256a5b7.md) | 136 | `declaration-track:d4003407f285979b6256a5b7b9cf12895acd1a9120b3808f5e6dc78f473ef767` |
| 10 | `theorem` | [mem_meet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/mem-meet-iff--950c102dfb5bb934872d9e04.md) | 144 | `result-track:950c102dfb5bb934872d9e04916066da5cb7558d2ea053577284eb5f23ac2475` |
| 11 | `theorem` | [mem_join_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/mem-join-iff--c66077d0f13acf54d72bb23d.md) | 150 | `result-track:c66077d0f13acf54d72bb23d89a207aa18533e3cadd87b23e8b3ea1a888757d8` |
| 12 | `theorem` | [meet_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/meet-comm--536034053a28dca674b86308.md) | 156 | `result-track:536034053a28dca674b863080f5c31d8d77a48427531eda75095e8be6380bfb6` |
| 13 | `theorem` | [join_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/join-comm--a76646a0159805c3e2baa997.md) | 163 | `result-track:a76646a0159805c3e2baa997d9366df20f29f3c3bb2b656b7be73b57828c7cf7` |
| 14 | `theorem` | [meet_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/meet-assoc--c3b6c0c7435a5941da64ea8c.md) | 170 | `result-track:c3b6c0c7435a5941da64ea8c1f13eb3c5101437c1072906340bb5a3e0506d01e` |
| 15 | `theorem` | [join_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/join-assoc--1e661bed757a1b3261e9bfbf.md) | 177 | `result-track:1e661bed757a1b3261e9bfbf196eac79cdc64917356d23018c54c548e153f4b0` |
| 16 | `theorem` | [meet_join_absorb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/meet-join-absorb--53db02dff66a83d6e1e75250.md) | 184 | `result-track:53db02dff66a83d6e1e75250abbec9dfa012d34f494f91212aa436e0ebddef39` |
| 17 | `theorem` | [join_meet_absorb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/join-meet-absorb--f5433b3b38553de4687c2538.md) | 191 | `result-track:f5433b3b38553de4687c253890570f1e2c1a9a92088253f0ed0203a8af3fae5d` |
| 18 | `theorem` | [proposal_over_cone_not_kernel_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant7ae69f96b747d47754aae2f992ee980c275cc117e6c11f416889a2128ea63265.lean/declarations/proposal-over-cone-not-kernel-authority--06c384bb027ae82945208232.md) | 200 | `result-track:06c384bb027ae82945208232b4dc68078621d42d2eaf8ae2f58792148da658b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
