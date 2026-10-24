# Verification target: GRWTSK.Algebra.GroupTheory.HasNoLoop.Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e93e4abf7a4f122ffeb9c0a2d52b7a67f49651",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e93e4abf7a4f122ffeb9c0a2d52b7a67f49651`.

Source path: `GRWTSK/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ComplexShape` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasNoLoop](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/hasnoloop--0fec3b1d6fea29ebb209cd21.md) | 31 | `declaration-track:0fec3b1d6fea29ebb209cd21fa5777850bc7914f12d48826660b614b5714143f` |
| 2 | `lemma` | [not_rel_self](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/not-rel-self--26a348797f9116015bdab943.md) | 38 | `result-track:26a348797f9116015bdab9434f079dbaf899560ceb05ccbbf3d2e2788ed48c7d` |
| 3 | `lemma` | [not_rel_of_eq](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/not-rel-of-eq--379985f1b2f170cb9cf23334.md) | 42 | `result-track:379985f1b2f170cb9cf23334858c76c1e7ca76b5c0bf35f1efeb5ee60084ee51` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/instance--1a73f70225447b54b98ac20c.md) | 46 | `declaration-track:1a73f70225447b54b98ac20c924f7e79e1b0ed5eef689b6e40e942e3a1a7e6f4` |
| 5 | `lemma` | [exists_distinct_prev_or](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/exists-distinct-prev-or--9f42c936844756695a259659.md) | 49 | `result-track:9f42c936844756695a25965992c374be99b250263a6b1dd3cfa5ac41d6ce1a1c` |
| 6 | `lemma` | [exists_distinct_next_or](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/exists-distinct-next-or--b1f231ccd95348c85f0a89a5.md) | 56 | `result-track:b1f231ccd95348c85f0a89a5db8923946ffe722ee7cf7200780a6dd17f746568` |
| 7 | `lemma` | [hasNoLoop_up'](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/hasnoloop-up--a76ec9f75d3dc75c54badcdf.md) | 63 | `result-track:a76ec9f75d3dc75c54badcdf0e22c1dc701ea4a68e118982070d79a56a30ffde` |
| 8 | `lemma` | [hasNoLoop_down'](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/hasnoloop-down--6cc0d3f538e61a7ba8ebb24b.md) | 69 | `result-track:6cc0d3f538e61a7ba8ebb24b935f758af7378e262997f4a1759eba834a8c7c50` |
| 9 | `lemma` | [hasNoLoop_up](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/hasnoloop-up--19d0a36ad85f7bd50b4cc6f0.md) | 75 | `result-track:19d0a36ad85f7bd50b4cc6f0a9e6ed6f01f0887a8b72de67a555ef7a851dd80f` |
| 10 | `lemma` | [hasNoLoop_down](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/hasnoloop-down--be4369073a2535035abd881a.md) | 80 | `result-track:be4369073a2535035abd881a21da251702fc952df241f5f6d452a6809521aefa` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/instance--2b192d5077d0b1620dec780d.md) | 87 | `declaration-track:2b192d5077d0b1620dec780d2d06336e527e9f94871ea89e18850dd32ecd026d` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/instance--5e10bb08a300b491e18d7aa1.md) | 88 | `declaration-track:5e10bb08a300b491e18d7aa18af3cf9ee9ba3808e9e5f03eefb9d19f12cf24d2` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/instance--9ed53e0321574d831680012b.md) | 89 | `declaration-track:9ed53e0321574d831680012b4a24b86949aee7f711be5133c8f521d3839cc9c9` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/HasNoLoop/Variant74a65b28384e56b7b31ff05b3190567d94d3bac7a436d74ed7e1aae2058fbc7c.lean/declarations/instance--7c7923849f1809f8d3407b15.md) | 90 | `declaration-track:7c7923849f1809f8d3407b1575b36336baec46098e1b7f903512891c93b086e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
