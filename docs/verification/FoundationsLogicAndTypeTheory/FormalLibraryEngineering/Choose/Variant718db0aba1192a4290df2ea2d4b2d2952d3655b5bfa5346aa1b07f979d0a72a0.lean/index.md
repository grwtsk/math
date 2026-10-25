# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Choose.Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de67e31d8f8d7874b0b9383a21cc17babccc3708",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de67e31d8f8d7874b0b9383a21cc17babccc3708`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Tactic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk_sometimes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/mk-sometimes--4678b50864969c0f87476eca.md) | 36 | `declaration-track:4678b50864969c0f87476eca6f96f9506bfeb5f4c6b9215316e204c20ddcf385` |
| 2 | `inductive` | [ElimStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/elimstatus--ee4bd61b2360c90cbf01f241.md) | 60 | `declaration-track:ee4bd61b2360c90cbf01f241de188a3bc11fb8d90775a6391ff336088774a62a` |
| 3 | `def` | [ElimStatus.merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/elimstatus-merge--8d249c05cef402a0d91bd550.md) | 66 | `declaration-track:8d249c05cef402a0d91bd5500cb4e51e1bccf41a483588a55eb316205d1a4256` |
| 4 | `def` | [mkFreshNameFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/mkfreshnamefrom--ba9133737cc9d2fbeff69eae.md) | 73 | `declaration-track:ba9133737cc9d2fbeff69eaeaf6a2392dc67084a5d38bb6c7abd87631e302588` |
| 5 | `def` | [choose1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/choose1--1ff7320adfdc8ddf48e74796.md) | 87 | `declaration-track:1ff7320adfdc8ddf48e7479685fe089d6ad0bdd2bfb42fe4424ddf676faa9669` |
| 6 | `def` | [choose1WithInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/choose1withinfo--ded97e43d6f540005c0d8e10.md) | 154 | `declaration-track:ded97e43d6f540005c0d8e101a9ce87cba93003c89fdb60e1717267cd631714e` |
| 7 | `def` | [elabChoose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/elabchoose--8896f230c16241ef2dbfdaf4.md) | 162 | `declaration-track:8896f230c16241ef2dbfdaf4d74d742dd6682cd41e4e71570ba18545d881de50` |
| 8 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/syntax--37c390102a9668f3e4df189a.md) | 220 | `declaration-track:37c390102a9668f3e4df189a21f4621a04031a8a720ba724eeb3a5ee227f8486` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/elab-rules--2b6f6405f916ca5686fa871f.md) | 221 | `declaration-track:2b6f6405f916ca5686fa871f7c65dd067a5440bac4426e3ad8bb1a64307d9445` |
| 10 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/syntax--b66143a59cf8b492a0ea5222.md) | 228 | `declaration-track:b66143a59cf8b492a0ea522239aa1dce12ab4c64f873018cdeecfc5f9534a743` |
| 11 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Choose/Variant718db0aba1192a4290df2ea2d4b2d2952d3655b5bfa5346aa1b07f979d0a72a0.lean/declarations/macro-rules--83ec476fd9052a76c4b1030d.md) | 229 | `declaration-track:83ec476fd9052a76c4b1030d315a64c4483b73c53768d7a375749518f4fddf86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
