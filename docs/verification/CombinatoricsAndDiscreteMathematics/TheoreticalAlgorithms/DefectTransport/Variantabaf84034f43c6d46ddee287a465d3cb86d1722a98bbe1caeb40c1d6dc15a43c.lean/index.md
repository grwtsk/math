# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DefectTransport.Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bf08c495b6adeeaeed503772f8dc96b3fb07b81",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bf08c495b6adeeaeed503772f8dc96b3fb07b81`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.DerivativeGain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/affinestep--4c79391449694e20571d7433.md) | 22 | `declaration-track:4c79391449694e20571d74337251f5e9922d633cd12189d8d3b51d6fef528083` |
| 2 | `structure` | [ScaledGain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain--d0b7c6b00dc6ecc039f6f6fd.md) | 27 | `declaration-track:d0b7c6b00dc6ecc039f6f6fdfc24533e0e3d1eedf2363e09be994ca540128cca` |
| 3 | `def` | [ScaledGain.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain-one--31986850044cfc5ada5ffc09.md) | 32 | `declaration-track:31986850044cfc5ada5ffc09ac4b0e777a24b53e0515ff2f90cb2d5c8f5808dd` |
| 4 | `def` | [ScaledGain.compose](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain-compose--0d820074d2ee3f466641f327.md) | 35 | `declaration-track:0d820074d2ee3f466641f3271dea0c7123f5683aeca188d7c840697db963e716` |
| 5 | `theorem` | [ScaledGain.one_numerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain-one-numerator--2bc95ec9e6d3ba8d2dab0c42.md) | 42 | `result-track:2bc95ec9e6d3ba8d2dab0c426b1c43758e8ac0c6d9844a031debaf97654ef265` |
| 6 | `theorem` | [ScaledGain.one_scale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain-one-scale--9cda2e19068c563b7d09edfc.md) | 46 | `result-track:9cda2e19068c563b7d09edfc593dfc74eefaf2a637958306eac55a208973f47d` |
| 7 | `theorem` | [ScaledGain.compose_numerator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain-compose-numerator--cffd09c788f55024abb23202.md) | 50 | `result-track:cffd09c788f55024abb23202814e805c7684c4620513194c5519188da74830e0` |
| 8 | `theorem` | [ScaledGain.compose_scale](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledgain-compose-scale--23f47efa13a6948e63682ab2.md) | 56 | `result-track:23f47efa13a6948e63682ab220d26145cb8a2ef8df303ffc4223be72c4c9babd` |
| 9 | `structure` | [FractionBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/fractionbound--936d53b9dd2603910aa81bd5.md) | 66 | `declaration-track:936d53b9dd2603910aa81bd5c12b1db73da927c6a4dc24172cbe46f50475962c` |
| 10 | `def` | [FractionBound.ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/fractionbound-ofnat--0d4e3d97b5001cdb054f7c4a.md) | 71 | `declaration-track:0d4e3d97b5001cdb054f7c4a86a901cc818713b50a2470f194d2a2d4ab4d99af` |
| 11 | `def` | [scaledAffineStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledaffinestep--68c1ddccc396eeefa6528bbc.md) | 74 | `declaration-track:68c1ddccc396eeefa6528bbcbdefd401ff68cac875bf1b92c275bcff9956192f` |
| 12 | `def` | [SatisfiesBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/satisfiesbound--773ed988e609b5210b02f9ab.md) | 85 | `declaration-track:773ed988e609b5210b02f9abec846ce6bbb086aa2a30846fbfac027a0b4d6f5f` |
| 13 | `def` | [SatisfiesScaledAffineStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/satisfiesscaledaffinestep--bf43a5cc28816db266dda69e.md) | 88 | `declaration-track:bf43a5cc28816db266dda69ea612effe480215f1b34b54dcbd133e9518ff2617` |
| 14 | `theorem` | [scaled_affine_step_preserves_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaled-affine-step-preserves-bound--34bf1283ec4d7e9f4c825392.md) | 94 | `result-track:34bf1283ec4d7e9f4c825392565af5d9c157b6bb6425d397ecbf67fea6fe21a0` |
| 15 | `def` | [constantAffineBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/constantaffinebound--6994b682935160410d0d8cd6.md) | 120 | `declaration-track:6994b682935160410d0d8cd670d5afa69e8434b8a9470f331d418a591179cfb7` |
| 16 | `theorem` | [constantAffineBound_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/constantaffinebound-zero--e1183601fa642e52862bcfd4.md) | 128 | `result-track:e1183601fa642e52862bcfd49f93d49415256d33a443c25ea3511b1809148cd8` |
| 17 | `theorem` | [constantAffineBound_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/constantaffinebound-succ--cede7402884d8579096c873b.md) | 134 | `result-track:cede7402884d8579096c873b30805917019a52c110dbf88c165bbabe93e1ab2a` |
| 18 | `theorem` | [iterated_affine_defect_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/iterated-affine-defect-bound--43958b0b01797fd364f23b03.md) | 142 | `result-track:43958b0b01797fd364f23b03553cdbe968b1afdaad163d0dc3e3a300094d61b8` |
| 19 | `def` | [transportAlong](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/transportalong--9ac52bcee684bd45a76d097d.md) | 160 | `declaration-track:9ac52bcee684bd45a76d097dcd9ee3432f84c06cf1a38b28d43ae3b3e25fc84a` |
| 20 | `def` | [scaledTransportAlong](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledtransportalong--198367cb5f7e5bc529e0f9e3.md) | 167 | `declaration-track:198367cb5f7e5bc529e0f9e3f50c32d3f7fd9140e17140ba57de707dce259b28` |
| 21 | `theorem` | [transportAlong_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/transportalong-nil--43173de6cbcfc5c515ca128b.md) | 174 | `result-track:43173de6cbcfc5c515ca128b0b1ada38ebfe5abc6fb3a3d526513f1826d04240` |
| 22 | `theorem` | [transportAlong_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/transportalong-cons--1f441322a50744faa00c23f3.md) | 178 | `result-track:1f441322a50744faa00c23f3f6fafe793186bf82aae25a0ba68d007d2b0eea9b` |
| 23 | `theorem` | [exact_construction_zero_gain_erases_current_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/exact-construction-zero-gain-erases-current-bound--1d3dff0d1545cae600948f4c.md) | 187 | `result-track:1d3dff0d1545cae600948f4cbb99d4f84c6112ba56c64f385f1bafe4d57391fa` |
| 24 | `theorem` | [scaledTransportAlong_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledtransportalong-nil--db775e0bbfadb70ebbc47279.md) | 192 | `result-track:db775e0bbfadb70ebbc47279a324a8057484761664e8c3f82c92e71d85fa10cf` |
| 25 | `theorem` | [scaledTransportAlong_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DefectTransport/Variantabaf84034f43c6d46ddee287a465d3cb86d1722a98bbe1caeb40c1d6dc15a43c.lean/declarations/scaledtransportalong-cons--35f6937113f70cd5c95e912b.md) | 197 | `result-track:35f6937113f70cd5c95e912ba57dc49768d5cf11eeb37192e85ac99980f1b2f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
