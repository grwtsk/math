# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.InitialSeg.Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b117d2d2cfd94970c70f1143eacef0150b59472a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b117d2d2cfd94970c70f1143eacef0150b59472a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.InitialSeg` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_covBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/apply-covby-apply-iff--004f1a795a6196b9383d7bd0.md) | 30 | `result-track:004f1a795a6196b9383d7bd0631900614e5b2009d8465a8dd04a0e88c00546fa` |
| 2 | `theorem` | [apply_wCovBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/apply-wcovby-apply-iff--209028d7064aaffbf09fdc31.md) | 34 | `result-track:209028d7064aaffbf09fdc3168fb2227be9950c5d487d4e38e397e6a6622e702` |
| 3 | `theorem` | [map_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/map-succ--9c651ce9d4290e933cebd18c.md) | 37 | `result-track:9c651ce9d4290e933cebd18c90fc2f13243df52387ac27f4534dc218523c678d` |
| 4 | `theorem` | [map_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/map-pred--61c70bda017cbe32ab3e2b76.md) | 41 | `result-track:61c70bda017cbe32ab3e2b76f5c0323a05b4658087f42c280b0b61102aa242fd` |
| 5 | `theorem` | [isSuccPrelimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/issuccprelimit-apply-iff--3e3abf585edcaea957c2ec5f.md) | 46 | `result-track:3e3abf585edcaea957c2ec5f3d2a5b519daa9d779202c52ee827b74e2201d929` |
| 6 | `theorem` | [isSuccLimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/issucclimit-apply-iff--5442afdf6571871ca7cac461.md) | 55 | `result-track:5442afdf6571871ca7cac461f94c769d6449d00be8a80c4183851173eec07aec` |
| 7 | `theorem` | [apply_covBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/apply-covby-apply-iff--bc06111aa469c144c35773b3.md) | 66 | `result-track:bc06111aa469c144c35773b34108964f37621ff622c4bf1d355bbb1e519642b4` |
| 8 | `theorem` | [apply_wCovBy_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/apply-wcovby-apply-iff--8d5a5b72dcacca891d399271.md) | 70 | `result-track:8d5a5b72dcacca891d399271e5c94c3bbbc9449a8c9414454b90c305da6c3978` |
| 9 | `theorem` | [map_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/map-succ--5170d838cb177dc80eeae478.md) | 73 | `result-track:5170d838cb177dc80eeae4788a8dc1ff0fa58b8354d598f2f33a107adcea9afb` |
| 10 | `theorem` | [map_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/map-pred--0cf6c03f6872d64b254efff2.md) | 77 | `result-track:0cf6c03f6872d64b254efff22f2a050743d03af25e20e57a1da531f36d701800` |
| 11 | `theorem` | [isSuccPrelimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/issuccprelimit-apply-iff--a6bd47e78e040f14941ed588.md) | 82 | `result-track:a6bd47e78e040f14941ed58808190695d0cd7b429f821e1dcf863843eb0db43f` |
| 12 | `theorem` | [isSuccLimit_apply_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant742ff433cb57e4b4761e2de55e3dcb11183625de23db0a3ce57cb6b19f87184f.lean/declarations/issucclimit-apply-iff--1106eac73488310771a5d363.md) | 86 | `result-track:1106eac73488310771a5d363302b23f70cef744a5cfc94c445dfabd86f303676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
