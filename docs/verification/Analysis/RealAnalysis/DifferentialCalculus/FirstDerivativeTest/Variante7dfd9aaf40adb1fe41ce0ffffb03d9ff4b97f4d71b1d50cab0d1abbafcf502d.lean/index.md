# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FirstDerivativeTest.Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8260cc39c68ba8357b60352b6cca20e42e0760a7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8260cc39c68ba8357b60352b6cca20e42e0760a7`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosedExtr` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocalMax_of_deriv_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/declarations/islocalmax-of-deriv-ioo--60ba11560f243e0fe8f90b90.md) | 53 | `result-track:60ba11560f243e0fe8f90b906eaec3b277af5c14f2acece8bbb0b4c2154d5339` |
| 2 | `lemma` | [isLocalMin_of_deriv_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/declarations/islocalmin-of-deriv-ioo--00ad7ca5a0b424059c026b98.md) | 71 | `result-track:00ad7ca5a0b424059c026b988991e4b825d0d837ad4f498263f7da6677437399` |
| 3 | `lemma` | [isLocalMax_of_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/declarations/islocalmax-of-deriv--5e8db5e58a18075af81d5316.md) | 84 | `result-track:5e8db5e58a18075af81d531630ded7fad8efb92689cd08b58df9414f462ac073` |
| 4 | `lemma` | [isLocalMin_of_deriv'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/declarations/islocalmin-of-deriv--52645cdb75a093541a9377fe.md) | 97 | `result-track:52645cdb75a093541a9377fe52f9d1e5f0c260c6a34074bd1d0649168446def5` |
| 5 | `theorem` | [isLocalMax_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/declarations/islocalmax-of-deriv--773d40b253d27806d757eaeb.md) | 109 | `result-track:773d40b253d27806d757eaeb620d8520eafe1e1898af3dab3163fba74780ded9` |
| 6 | `theorem` | [isLocalMin_of_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FirstDerivativeTest/Variante7dfd9aaf40adb1fe41ce0ffffb03d9ff4b97f4d71b1d50cab0d1abbafcf502d.lean/declarations/islocalmin-of-deriv--58dfdc0cd73639455e07b3af.md) | 116 | `result-track:58dfdc0cd73639455e07b3aff641c7c8290bba666bd45105cd3af4c5e5c1ae03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
