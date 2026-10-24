# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.BanachCompletion.Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40ab2b1a81d5049cb4c039c85961b6243fb642a7",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40ab2b1a81d5049cb4c039c85961b6243fb642a7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.SemanticEquation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.SeparationQuotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuotientNormData](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/quotientnormdata--12d02c2702986f780ac98fdd.md) | 32 | `declaration-track:12d02c2702986f780ac98fddcdd7162e8d189deb6ff792d4f377e8102b94ec6f` |
| 2 | `structure` | [ProfiledCombination](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/profiledcombination--eaf7288fdb1d9a7fb87745ee.md) | 47 | `declaration-track:eaf7288fdb1d9a7fb87745ee45ef7d27d5a2a790654e356bb53fa3610fab8714` |
| 3 | `def` | [coefficientEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/coefficientequiv--679739fb1e552985072efc2c.md) | 57 | `declaration-track:679739fb1e552985072efc2cd21a1d2f406da5e65536e461d763cac3f028d4e8` |
| 4 | `instance` | [instAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/instaddcommgroup--8a641df8b891d3b4773fe5c6.md) | 64 | `declaration-track:8a641df8b891d3b4773fe5c61f65ffcf0e39dca6fba9f6524e267aacd14ecca6` |
| 5 | `instance` | [instModule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/instmodule--26b4269b59375f6dd4a5c795.md) | 68 | `declaration-track:26b4269b59375f6dd4a5c795f77c7b32ae22f1f44ef18d961545c9b06c9b26d2` |
| 6 | `def` | [coefficientLinearEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/coefficientlinearequiv--856bd6950faa7f42d29d2bec.md) | 73 | `declaration-track:856bd6950faa7f42d29d2becd894c44cf7ac01f28bb6749d110a2f14e2078e34` |
| 7 | `def` | [wrapLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/wraplinear--a0f02789feecfff772992e5f.md) | 80 | `declaration-track:a0f02789feecfff772992e5f6741a1b4a7885bcf83883f3fdb0f1d8bf91d983d` |
| 8 | `def` | [seminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/seminorm--49b0cff7954880212fb9eeea.md) | 87 | `declaration-track:49b0cff7954880212fb9eeea94349866a1e7b428fe54da7366c0a01dcba479e1` |
| 9 | `instance` | [instSeminormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/instseminormedaddcommgroup--c296fc830289728576594eae.md) | 91 | `declaration-track:c296fc830289728576594eae318c784c56d0e0d47184ea54b73e29a595359a37` |
| 10 | `instance` | [instNormedSpace](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/instnormedspace--48fa5eab551adff9982821fc.md) | 95 | `declaration-track:48fa5eab551adff9982821fc77230c91d0f69bbb29f9a7ee539dae0b1c619210` |
| 11 | `theorem` | [norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/norm-eq--548c3d26761b3ce35a596223.md) | 107 | `result-track:548c3d26761b3ce35a596223eb50e99936d8971a2d1b4663b93d08640665ba67` |
| 12 | `abbrev` | [SemanticSeparated](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/semanticseparated--6c484fe66430282a00bca031.md) | 116 | `declaration-track:6c484fe66430282a00bca031087a377cca8e7cbd97a6b4d30d6dae05c2e49fae` |
| 13 | `abbrev` | [BanachCarrier](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/banachcarrier--67d5c8ee829dbb7e99236fbf.md) | 122 | `declaration-track:67d5c8ee829dbb7e99236fbf58d2eda75e8ff51ac1b27d561af593289a1037fe` |
| 14 | `def` | [rawToSeparated](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtoseparated--21cc062f7a97d798d2df7287.md) | 128 | `declaration-track:21cc062f7a97d798d2df72876983e642d904fb251034979606ccd226915feb74` |
| 15 | `def` | [rawToBanach](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtobanach--67445ac4e186fe8f2539418a.md) | 136 | `declaration-track:67445ac4e186fe8f2539418a4211ffcd8c61da5a6b216e90e3c110c43e404dbb` |
| 16 | `theorem` | [rawToSeparated_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtoseparated-apply--b593a8835020dfc60a0ba136.md) | 143 | `result-track:b593a8835020dfc60a0ba1369b458af3bac8e871d3912d3735982f1e8c82e589` |
| 17 | `theorem` | [rawToBanach_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtobanach-apply--8d3eb1133a969935c8f4242b.md) | 152 | `result-track:8d3eb1133a969935c8f4242bc823d3f76cbdda22731f5892201c32c7053ecca0` |
| 18 | `theorem` | [norm_rawToBanach](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/norm-rawtobanach--fef9cf1935a54195f5a440b8.md) | 163 | `result-track:fef9cf1935a54195f5a440b89c8b56517e7ff3d1d6461da3d25274133bc2d0e0` |
| 19 | `theorem` | [rawToBanach_denseRange](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtobanach-denserange--7fe900ab12e237727d1a8f16.md) | 175 | `result-track:7fe900ab12e237727d1a8f16a4f1ec04f33740189722bb18fc1828c42caf44d1` |
| 20 | `theorem` | [rawToBanach_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtobanach-eq-zero-iff--aef33276a2da9f4f5d2fcde8.md) | 186 | `result-track:aef33276a2da9f4f5d2fcde8b76199f81ac7999cfcf6a176f08890cf8d14edcd` |
| 21 | `def` | [atomState](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/atomstate--eedac9ffdbd532ee546cd2b3.md) | 204 | `declaration-track:eedac9ffdbd532ee546cd2b32b9411f4d0533036740f66699f51b30643501cbe` |
| 22 | `def` | [finiteSemanticSpan](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/finitesemanticspan--c6a57cb011cf6c5ee5bb976a.md) | 212 | `declaration-track:c6a57cb011cf6c5ee5bb976ac0fc3c7791425300dcc814c5401d05e25501b5cb` |
| 23 | `theorem` | [rawToBanach_mem_finiteSemanticSpan](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/rawtobanach-mem-finitesemanticspan--f6542d978a9d8062fed045c1.md) | 219 | `result-track:f6542d978a9d8062fed045c13b7187ef036007bb7eb1dc5304581cc3837fd339` |
| 24 | `theorem` | [finiteSemanticSpan_dense](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/finitesemanticspan-dense--f6dafa1e37270fdab3d3fc66.md) | 248 | `result-track:f6dafa1e37270fdab3d3fc66d809bbd2dd828cb7c63febca149a9001db81661f` |
| 25 | `theorem` | [banachCarrier_complete](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variant3a26e2f078efc305de53a5a0046d4d006ff83adf1513350c4d7a53b85fdce829.lean/declarations/banachcarrier-complete--9fba89101a6a8439f3ca5b75.md) | 258 | `result-track:9fba89101a6a8439f3ca5b757023af00e0c9db07fbf9438d43a6fa448d01575c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
