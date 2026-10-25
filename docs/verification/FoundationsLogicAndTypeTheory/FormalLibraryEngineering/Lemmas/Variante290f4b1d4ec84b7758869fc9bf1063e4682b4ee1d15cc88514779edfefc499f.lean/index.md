# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e48ba13e2d74dcf2fc5564d7c0d209f79007b8a6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e48ba13e2d74dcf2fc5564d7c0d209f79007b8a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Control.Lawful.MonadLift.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [LawfulMonadAttach.canReturn_bind_imp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/lawfulmonadattach-canreturn-bind-imp--5c488305f853b231440f1067.md) | 24 | `result-track:5c488305f853b231440f106708e1dc5a06fb272489300dc7afe6349f2edd3fe8` |
| 2 | `theorem` | [LawfulMonadAttach.eq_of_canReturn_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/lawfulmonadattach-eq-of-canreturn-pure--dfbc9ef13e914518612449c2.md) | 41 | `result-track:dfbc9ef13e914518612449c2da83d2c8269946eea0b79e98b33ee8f3826f980c` |
| 3 | `theorem` | [LawfulMonadAttach.canReturn_map_imp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/lawfulmonadattach-canreturn-map-imp--1ac6d27134f12bf5e9a420a7.md) | 50 | `result-track:1ac6d27134f12bf5e9a420a7a14e744c713b483f01bc52665dd6c791b6b13bd7` |
| 4 | `theorem` | [LawfulMonadAttach.canReturn_liftM_imp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/lawfulmonadattach-canreturn-liftm-imp--80ee09f4aca4635eca1b3b4d.md) | 59 | `result-track:80ee09f4aca4635eca1b3b4d14609dfda4edd34cde8b6e1955ec0bd08d79a507` |
| 5 | `theorem` | [WeaklyLawfulMonadAttach.attach_bind_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/weaklylawfulmonadattach-attach-bind-val--3b5cb72a34622a8a34c7b33b.md) | 68 | `result-track:3b5cb72a34622a8a34c7b33b52fa9b83a1291c5f67a2de930c074ca015c11e5d` |
| 6 | `theorem` | [WeaklyLawfulMonadAttach.bind_attach_of_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/weaklylawfulmonadattach-bind-attach-of-nonempty--3da9871a21c9e1621ea434ef.md) | 74 | `result-track:3da9871a21c9e1621ea434ef2c60089c5a5f692d034bb7c17f6b82dcbc5512fc` |
| 7 | `theorem` | [MonadAttach.attach_bind_eq_pbind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/monadattach-attach-bind-eq-pbind--0d857049294e7494596c5cec.md) | 82 | `result-track:0d857049294e7494596c5cec3119f747bbd36c4245ea9d18c304c9e467dfa1dc` |
| 8 | `theorem` | [WeaklyLawfulMonadAttach.pbind_eq_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/weaklylawfulmonadattach-pbind-eq-bind--22eedbe746bdf2b6dea8a3bd.md) | 88 | `result-track:22eedbe746bdf2b6dea8a3bd54411ce565b7fc75bd9a1c3a4f57c6e5d1dbb86e` |
| 9 | `theorem` | [WeaklyLawfulMonadAttach.pbind_eq_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variante290f4b1d4ec84b7758869fc9bf1063e4682b4ee1d15cc88514779edfefc499f.lean/declarations/weaklylawfulmonadattach-pbind-eq-bind--231f238cd4bba8bd404b6911.md) | 95 | `result-track:231f238cd4bba8bd404b6911f96a8b492327282bd033cfd0d1ca1368933f12fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
