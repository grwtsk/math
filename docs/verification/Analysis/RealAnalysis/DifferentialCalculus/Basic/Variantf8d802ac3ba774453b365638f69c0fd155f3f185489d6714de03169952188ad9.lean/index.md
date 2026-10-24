# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1659139927e6b1b5dd0acb782f94afb7ff64883",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1659139927e6b1b5dd0acb782f94afb7ff64883`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/contdiffbump--7aa81b8d2322460ca17c1947.md) | 68 | `declaration-track:7aa81b8d2322460ca17c19473ea5eed37e9959118859b08c0a65724bb81735f6` |
| 2 | `structure` | [ContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/contdiffbumpbase--096897ae01f02e905315dced.md) | 86 | `declaration-track:096897ae01f02e905315dcedf6c256200784d79a1f90a9b6f8c857fb2acf5e02` |
| 3 | `class` | [HasContDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/hascontdiffbump--fbf8c322a881e39e3797083d.md) | 98 | `declaration-track:fbf8c322a881e39e3797083dcda63f40582d2f2273950e024a14c1d2c9d5bf15` |
| 4 | `def` | [someContDiffBumpBase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/somecontdiffbumpbase--968851708f0e4199c99171ca.md) | 104 | `declaration-track:968851708f0e4199c99171ca08f3efdca3c31bcb8200768ce3d9cdae0685e3f3` |
| 5 | `theorem` | [rOut_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/rout-pos--e8e215a47571392ca857b188.md) | 111 | `result-track:e8e215a47571392ca857b1880bc5fbbbc93491a7878f9caca36e53969acdc300` |
| 6 | `theorem` | [one_lt_rOut_div_rIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/one-lt-rout-div-rin--cda9df24c1cc98487adcfb4c.md) | 116 | `result-track:cda9df24c1cc98487adcfb4c1f7e958f648c13d4a39148c8c3e3c0d782763c3b` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/instance--cc5f4aee7dec77aabc6dec62.md) | 122 | `declaration-track:cc5f4aee7dec77aabc6dec62ddb2a7904e0176aa467f520747b03090487f6407` |
| 8 | `def` | [toFun](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/tofun--3146ec2ccf9cc835b89880fe.md) | 130 | `declaration-track:3146ec2ccf9cc835b89880fe6505e39152d3eb41548e30b422a14f36a22cd8ff` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/instance--6252f43d5ad4134d49b90730.md) | 134 | `declaration-track:6252f43d5ad4134d49b90730f52280ca0676d5c3e0a88f706ac666679b78a3e6` |
| 10 | `theorem` | [apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/apply--d885b77b3f73794370432104.md) | 137 | `result-track:d885b77b3f73794370432104476d0f64051402720270d2aee9aa6c8e45f6b20a` |
| 11 | `theorem` | [sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/sub--033434382f938b64fe7474b8.md) | 142 | `result-track:033434382f938b64fe7474b85f4604fbb5939399cb2af9109af2624a0a17ed01` |
| 12 | `theorem` | [neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/neg--1932989cc2713ac4126ca82e.md) | 146 | `result-track:1932989cc2713ac4126ca82ef5bc1638f4f599fcc689a12410896cc37effd4e1` |
| 13 | `theorem` | [one_of_mem_closedBall](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/one-of-mem-closedball--938e633846d842aeb41b4146.md) | 152 | `result-track:938e633846d842aeb41b414653dec159523c9856613d4dada8b04f8c25f9dda2` |
| 14 | `theorem` | [nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/nonneg--95aa781cdb5f791606f94ade.md) | 158 | `result-track:95aa781cdb5f791606f94adeb81a1491a1b8bddbfa05786155f1dd85e6b5090a` |
| 15 | `theorem` | [nonneg'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/nonneg--fb9985defa2863ff57a531bd.md) | 163 | `result-track:fb9985defa2863ff57a531bde15849f5432731a7abaf4e4e887faad744a16754` |
| 16 | `theorem` | [le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/le-one--723f456e53a2e6fd26134ebe.md) | 166 | `result-track:723f456e53a2e6fd26134ebe82a96bfaae1f76169639f1c360d544e346367b76` |
| 17 | `theorem` | [support_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/support-eq--f025d2c2cd140a5e907d2a74.md) | 170 | `result-track:f025d2c2cd140a5e907d2a74fcac84f97cf81515b552cdad8cabdc28654658a7` |
| 18 | `theorem` | [tsupport_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/tsupport-eq--32ba877e82edb7e0474bc445.md) | 177 | `result-track:32ba877e82edb7e0474bc445054bbcf6c361a507bea038e8e66d1a4905fdca44` |
| 19 | `theorem` | [pos_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/pos-of-mem-ball--583bfcca8ed3c0a3e9521988.md) | 181 | `result-track:583bfcca8ed3c0a3e9521988137def2c037c0cc839f424ad5d0d98e4d8349e51` |
| 20 | `theorem` | [zero_of_le_dist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/zero-of-le-dist--9b4bf63e8f83c20cb567d1dc.md) | 185 | `result-track:9b4bf63e8f83c20cb567d1dc32b45dc90234c6bec9faf4c8ff641812b27f4ab2` |
| 21 | `theorem` | [hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/hascompactsupport--59b10936625cc9914f303f8c.md) | 189 | `result-track:59b10936625cc9914f303f8c7f29538a8aae04941252d209de1d8e6c444867b6` |
| 22 | `theorem` | [eventuallyEq_one_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/eventuallyeq-one-of-mem-ball--4f8be82e629fd7f1f697f693.md) | 193 | `result-track:4f8be82e629fd7f1f697f6933c41c681d9fb92b703741b0440af9f80dc78f36e` |
| 23 | `theorem` | [eventuallyEq_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/eventuallyeq-one--63e4b6f969eb10e2d5e6b1e8.md) | 197 | `result-track:63e4b6f969eb10e2d5e6b1e8336dec7e2adcfdcb59c30f896e137643281c947d` |
| 24 | `theorem` | [_root_.ContDiffWithinAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/root-contdiffwithinat-contdiffbump--e9f36921f803e0be37fec6fc.md) | 203 | `result-track:e9f36921f803e0be37fec6fcfcc57d91cfe160a13af7cca96ba109a71bff23b8` |
| 25 | `theorem` | [_root_.ContDiffAt.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/root-contdiffat-contdiffbump--2ba0067489fc45a449194021.md) | 216 | `result-track:2ba0067489fc45a44919402158f58b98edb9bb1cd019004b3777700fd613ff02` |
| 26 | `theorem` | [_root_.ContDiff.contDiffBump](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/root-contdiff-contdiffbump--acf05b78b24447851bbd71bf.md) | 223 | `result-track:acf05b78b24447851bbd71bfdca295a4d24b31b26de2ac4ce0bf2df19631d7c3` |
| 27 | `theorem` | [contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/contdiff--7ceaeac698e0f81bd65a6817.md) | 231 | `result-track:7ceaeac698e0f81bd65a68174a992dbc34456c88a9d9fd895c100250ea719993` |
| 28 | `theorem` | [contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/contdiffat--721181e987c5fae128afc51d.md) | 235 | `result-track:721181e987c5fae128afc51d4ee5b9bd38a2fd059f8459c6446077321a6d2433` |
| 29 | `theorem` | [contDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/contdiffwithinat--94b8d51ae2f4db83e8d9c96e.md) | 239 | `result-track:94b8d51ae2f4db83e8d9c96e4c293245d103380671351af15c376af0de28d450` |
| 30 | `theorem` | [continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf8d802ac3ba774453b365638f69c0fd155f3f185489d6714de03169952188ad9.lean/declarations/continuous--939442a9eb36e3458e507b9a.md) | 243 | `result-track:939442a9eb36e3458e507b9a4484ebc99d66abac040b6487690619e5580948b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
