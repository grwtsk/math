# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.RouteClosure.Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dcea1965fed3ef6ecf4c2b464b5c71154a12207",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dcea1965fed3ef6ecf4c2b464b5c71154a12207`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.ProofStrategy.CertifiedRoute` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RouteCandidateDisposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/routecandidatedisposition--78006867d1f9c6a12b399b13.md) | 19 | `declaration-track:78006867d1f9c6a12b399b13196ac762ce582b03f5e454f5f87d3c771896ac60` |
| 2 | `structure` | [ExactFiniteRouteClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/exactfiniterouteclosure--3389d688b80762508248e171.md) | 27 | `declaration-track:3389d688b80762508248e171e5f87834ce4a17652665095add35b3e6aca08ad2` |
| 3 | `theorem` | [eligible_iff_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/eligible-iff-mem--2f877464c5a42fa621e55e96.md) | 54 | `result-track:2f877464c5a42fa621e55e967a1d410fe9e51499434ddebbef1e431c02921e36` |
| 4 | `theorem` | [included_iff_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/included-iff-mem--b251fb942948366a959996ea.md) | 66 | `result-track:b251fb942948366a959996eacb4b384b1cdcfffa598b714326c0b77aad0328a9` |
| 5 | `theorem` | [omitted_is_ineligible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/omitted-is-ineligible--2cef426a0edd955335321f1f.md) | 81 | `result-track:2cef426a0edd955335321f1f1d49dd4e3a6836c9743eee4ae72b059a1d0c5bb8` |
| 6 | `structure` | [BoundedRouteClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/boundedrouteclosure--ba3354e984ab66f7d1c47457.md) | 97 | `declaration-track:ba3354e984ab66f7d1c474577fcb53cc549200b61933c501304a8681732a9617` |
| 7 | `structure` | [EnumerativeRouteClosure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/enumerativerouteclosure--1e32b6e0a295a4f941fec4ee.md) | 105 | `declaration-track:1e32b6e0a295a4f941fec4ee71cae3ae8597f2415781c34bfae7b6e3ecea1995` |
| 8 | `inductive` | [RouteClosureClaim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/declarations/routeclosureclaim--24a73ef161e7a6c4f3770bb4.md) | 113 | `declaration-track:24a73ef161e7a6c4f3770bb48d5fbdf6c89e63651e5b34f3dc78163e6f9f2ebe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
