# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MaxPowDiv.Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d7ccf9d32983e2815e638acb9e760bc106e53bb",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d7ccf9d32983e2815e638acb9e760bc106e53bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPowDvdDiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/maxpowdvddiv--ceed19653c080f64d56ffa59.md) | 41 | `declaration-track:ceed19653c080f64d56ffa59531519518da2876c930a700a4d48a0fe9d623201` |
| 2 | `def` | [divMaxPow](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/divmaxpow--1954e86a90658a94923ce4df.md) | 63 | `declaration-track:1954e86a90658a94923ce4df8f3ab108d8c511cd207138da2c690beb68e1df21` |
| 3 | `theorem` | [maxPowDvdDiv.go_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/maxpowdvddiv-go-spec--0526f8c9a05e44b9061ef064.md) | 65 | `result-track:0526f8c9a05e44b9061ef06456f15055437d6e21eb631fb9770a1b41fce33c14` |
| 4 | `theorem` | [maxPowDvdDiv_of_base_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/maxpowdvddiv-of-base-le-one--b54fb7043f811541a477ac6e.md) | 81 | `result-track:b54fb7043f811541a477ac6e8cd9012b3a8f0df6bfb743d927f64436202c6fa3` |
| 5 | `theorem` | [maxPowDvdDiv_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/maxpowdvddiv-zero-left--7e2b6511dc8d577631f0c9d3.md) | 85 | `result-track:7e2b6511dc8d577631f0c9d37566e38391a5042a58c4f3d319feb72cd14bb831` |
| 6 | `theorem` | [divMaxPow_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/divmaxpow-zero-right--44e5c841a5501130bbee1bf1.md) | 89 | `result-track:44e5c841a5501130bbee1bf1f15c21e942a14ff5d593390a521c823031d97af6` |
| 7 | `theorem` | [maxPowDvdDiv_one_left](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/maxpowdvddiv-one-left--5b92041feb6818ab2099a18e.md) | 92 | `result-track:5b92041feb6818ab2099a18e36f6644844f888dc6f149f5b4d7b08612be075be` |
| 8 | `theorem` | [divMaxPow_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/divmaxpow-one-right--a71293210872219b6cb9b191.md) | 96 | `result-track:a71293210872219b6cb9b1910f6acb6668dbdba421bcbdff315f96ce566fc8a4` |
| 9 | `theorem` | [maxPowDvdDiv_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/maxpowdvddiv-zero-right--afd642e1bdb8d62a14155d58.md) | 99 | `result-track:afd642e1bdb8d62a14155d58c62f80c2b4338e695828924aa188014f262951fc` |
| 10 | `theorem` | [divMaxPow_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/divmaxpow-zero-left--0436c78abc118d96f72a1438.md) | 102 | `result-track:0436c78abc118d96f72a14387756ccd909fe19dd658f07288e4c3a0e3860675c` |
| 11 | `theorem` | [not_dvd_divMaxPow](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/not-dvd-divmaxpow--599d32c82877967f63a6f3a9.md) | 104 | `result-track:599d32c82877967f63a6f3a978b4a1d496102791d3faeca70c39ff8266af7f5d` |
| 12 | `theorem` | [pow_dvd_iff_le_of_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant0c85e7e1811737e37ab76dda879fd0ca68985c4a0b42ae4b331204016fbf9b1f.lean/declarations/pow-dvd-iff-le-of-spec--07395259343db2b911f96228.md) | 107 | `result-track:07395259343db2b911f96228cd94a555d2ac1141a3623c65d0d14da85005e9d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
