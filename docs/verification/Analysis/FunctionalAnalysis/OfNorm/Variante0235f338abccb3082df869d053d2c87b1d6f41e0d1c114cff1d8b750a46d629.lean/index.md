# Verification target: GRWTSK.Analysis.FunctionalAnalysis.OfNorm.Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a0f74222081a395afea75c8914ec7195a941e1f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a0f74222081a395afea75c8914ec7195a941e1f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Rat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [InnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/innerproductspaceable--6ceb5d6342d446afc40319ab.md) | 66 | `declaration-track:6ceb5d6342d446afc40319abe7f9d3e01388cfcb7546963124a14135c7637830` |
| 2 | `theorem` | [InnerProductSpace.toInnerProductSpaceable](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/innerproductspace-toinnerproductspaceable--51b0f99b66523c97d1dba545.md) | 72 | `result-track:51b0f99b66523c97d1dba545fb9974f1338b2246bcee8d18ee0450c21eebf41f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/instance--67253f1122022aed88931569.md) | 77 | `declaration-track:67253f1122022aed889315690a1642c105bf2375525058ae6030e89558d89099` |
| 4 | `def` | [inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/inner--69caec366fea4c06ce66c0e5.md) | 86 | `declaration-track:69caec366fea4c06ce66c0e57100107b3305b04d1ae8aa56c822344f3a856774` |
| 5 | `def` | [innerProp'](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/innerprop--e3c424291ca625243431e724.md) | 97 | `declaration-track:e3c424291ca625243431e7248b994fc86a8bed462192b6068d8c979de0fafa4f` |
| 6 | `theorem` | [_root_.Continuous.inner_](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/root-continuous-inner--da092ae40893c43ba3acf18b.md) | 102 | `result-track:da092ae40893c43ba3acf18b5b2b0577d9ac0af354ce3200b63df2da86d45a12` |
| 7 | `theorem` | [inner_.norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/inner-norm-sq--0079480a7e00e76419e9da76.md) | 107 | `result-track:0079480a7e00e76419e9da7691cecd17c467ea96d52047b699258bde9a68b115` |
| 8 | `theorem` | [inner_.conj_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/inner-conj-symm--c245ac1f1a69be818170e0b4.md) | 115 | `result-track:c245ac1f1a69be818170e0b45eb617c512144124a3fc480c938992a6c4d4a2db` |
| 9 | `theorem` | [add_left_aux1](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux1--7cfc35adcd99fb9d4e4ccede.md) | 133 | `result-track:7cfc35adcd99fb9d4e4ccedea034bbcb98cbf3802d6624f7b4b742b37b595592` |
| 10 | `theorem` | [add_left_aux2](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux2--a6a9ac7f9dab20be4d5f9fa6.md) | 138 | `result-track:a6a9ac7f9dab20be4d5f9fa69bcafc95fc67a8baab8afedb2e2ef7e76c4516de` |
| 11 | `theorem` | [add_left_aux3](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux3--96714c9f32489f81ff3808a8.md) | 142 | `result-track:96714c9f32489f81ff3808a835117ac94d9cb050ff8c31c037d81236302ac5c5` |
| 12 | `theorem` | [add_left_aux4](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux4--cb8c36274b1bd3acab24ce00.md) | 146 | `result-track:cb8c36274b1bd3acab24ce00489d419bdea3e5bbdfc390b5057a1786fba80132` |
| 13 | `theorem` | [add_left_aux5](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux5--657c01ef56449d44a9e458d4.md) | 152 | `result-track:657c01ef56449d44a9e458d4d932f1a81a63569df96dbfc5a1908a6232ee3fc9` |
| 14 | `theorem` | [add_left_aux6](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux6--c9e5ff5b5d3cd214e3d0a413.md) | 159 | `result-track:c9e5ff5b5d3cd214e3d0a4137c0b47e3c45aa5bfdb0ffa55090d29d65e0bc46b` |
| 15 | `theorem` | [add_left_aux7](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux7--21f23c166fa9ba96fd0536f7.md) | 166 | `result-track:21f23c166fa9ba96fd0536f7da50ec541840a95904c705cbe486fc97de13f354` |
| 16 | `theorem` | [add_left_aux8](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left-aux8--05b5b9b014707ecec773c55a.md) | 171 | `result-track:05b5b9b014707ecec773c55a4943957bd8b5645251aeec69fcaf16c4c6dbc5d6` |
| 17 | `theorem` | [add_left](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/add-left--c5c97273cf8c644cf70da108.md) | 178 | `result-track:c5c97273cf8c644cf70da108d30ddde76278cdbf32f5d6b0f9d66f1f31a033b4` |
| 18 | `theorem` | [rat_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/rat-prop--ad97d8065fb5615957c725ca.md) | 187 | `result-track:ad97d8065fb5615957c725ca4de734670a8f1c29c2f03000243f43b1b12e6e2a` |
| 19 | `theorem` | [real_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/real-prop--2ea5eac85444841ef8ca903a.md) | 194 | `result-track:2ea5eac85444841ef8ca903a19e5ba05687442612d14abd0b3d5b42954ff2b86` |
| 20 | `theorem` | [I_prop](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/i-prop--fbf943cf511a11549371ee99.md) | 203 | `result-track:fbf943cf511a11549371ee991d6b5941113acf3aa011f1071d4bd0b547f8ca71` |
| 21 | `theorem` | [innerProp](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/innerprop--cda698f57a2a80a832709a75.md) | 215 | `result-track:cda698f57a2a80a832709a75d93a996b586cd3ff6c41afa300378c34de07478a` |
| 22 | `def` | [InnerProductSpace.ofNorm](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/innerproductspace-ofnorm--bd636d00ea0be69125faa728.md) | 227 | `declaration-track:bd636d00ea0be69125faa7289c6a7ffdd3011a41355f34e68a2b3d6996c63250` |
| 23 | `theorem` | [nonempty_innerProductSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/nonempty-innerproductspace--825ae6257f786b06b014230a.md) | 244 | `result-track:825ae6257f786b06b014230a3b9aac53530cfeb78b49e3023b9484e4e7db21a8` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/OfNorm/Variante0235f338abccb3082df869d053d2c87b1d6f41e0d1c114cff1d8b750a46d629.lean/declarations/instance--0329a49fa692aa498d737ffe.md) | 256 | `declaration-track:0329a49fa692aa498d737ffe80f4887dbf28226e451691449c3a053cebc98cc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
