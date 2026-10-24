# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.BanachCompletion.Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ec5b4aedd2cda3742a1291dd9bc898075f2cef",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ec5b4aedd2cda3742a1291dd9bc898075f2cef`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.SemanticEquation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.SeparationQuotient` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QuotientNormData](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/quotientnormdata--169118508506586123de5f29.md) | 24 | `declaration-track:169118508506586123de5f29f599da9cb34f9fb117050c59ea6516c84f5da3c2` |
| 2 | `structure` | [ProfiledCombination](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/profiledcombination--76ac28424e1cfe950c17d120.md) | 39 | `declaration-track:76ac28424e1cfe950c17d1209a39169b573399409728db81ccaad1543da33fcb` |
| 3 | `def` | [coefficientEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/coefficientequiv--94c6370b263ee6ebf459e79d.md) | 49 | `declaration-track:94c6370b263ee6ebf459e79d9b78b6e4930255bd529080aee9912795b13aedc5` |
| 4 | `instance` | [instAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/instaddcommgroup--3a5cc7789e392e3e1f58a852.md) | 56 | `declaration-track:3a5cc7789e392e3e1f58a85273cb1705c465ccecb7ebe6c3a273224b62231304` |
| 5 | `instance` | [instModule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/instmodule--dea857da386fa49198f5426c.md) | 60 | `declaration-track:dea857da386fa49198f5426cf96b09f8371f4b95cff1c381a13f3f69afe17300` |
| 6 | `def` | [coefficientLinearEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/coefficientlinearequiv--7528455f39e71cd7df517289.md) | 65 | `declaration-track:7528455f39e71cd7df5172891328e8203025e5a3285c192beeb4f707b3f94e92` |
| 7 | `def` | [wrapLinear](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/wraplinear--fd8a6cd699e161e63cc5f92c.md) | 72 | `declaration-track:fd8a6cd699e161e63cc5f92c95b6e4d59e5e25a794e3eb7b609ce434577f6afa` |
| 8 | `def` | [seminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/seminorm--27cf8ba1fcf48b6e31def0e3.md) | 79 | `declaration-track:27cf8ba1fcf48b6e31def0e3d067a1329a7135150f7e3233b7ee672aa8223339` |
| 9 | `instance` | [instSeminormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/instseminormedaddcommgroup--cfdeffa23e97fef76c8db899.md) | 83 | `declaration-track:cfdeffa23e97fef76c8db8991692669ecc82affdd734f5926df375d5c0836f58` |
| 10 | `instance` | [instNormedSpace](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/instnormedspace--cacf485bf792b1654b0320c9.md) | 87 | `declaration-track:cacf485bf792b1654b0320c9cf715cfe4c9264be4f061195f1f10a669cfb7e3a` |
| 11 | `theorem` | [norm_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/norm-eq--ccdb9ba2504479ea2ea5b4d4.md) | 99 | `result-track:ccdb9ba2504479ea2ea5b4d4336cf5e945b141bb8926a88d03420c35e666dcc7` |
| 12 | `abbrev` | [SemanticSeparated](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/semanticseparated--dee59f94c8b438fee9ab882d.md) | 108 | `declaration-track:dee59f94c8b438fee9ab882df7b8a8e63f27a5fd4e3e50d507d949a77a4f3364` |
| 13 | `abbrev` | [BanachCarrier](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/banachcarrier--4d80f5d9bd90f6c04a8ca0df.md) | 114 | `declaration-track:4d80f5d9bd90f6c04a8ca0dff717ef08a21f7ce74962da05e2327b91501e0371` |
| 14 | `def` | [rawToSeparated](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtoseparated--a5cc8252f6c1fa3dcbf85d5c.md) | 120 | `declaration-track:a5cc8252f6c1fa3dcbf85d5c9795a2a192cbb2d4a207757ef1b39f7fa5cdb033` |
| 15 | `def` | [rawToBanach](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtobanach--2c5db8df34880e96cfb0d818.md) | 128 | `declaration-track:2c5db8df34880e96cfb0d8187466366a3f7cb82a669c18bd9483081c9c094ec5` |
| 16 | `theorem` | [rawToSeparated_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtoseparated-apply--b3e70833eaa12a8a49e2dffb.md) | 135 | `result-track:b3e70833eaa12a8a49e2dffb3fbe36efc514d0b3e776983c9b00f96d9eef6471` |
| 17 | `theorem` | [rawToBanach_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtobanach-apply--72ce67c0e93b1928f5eaa318.md) | 144 | `result-track:72ce67c0e93b1928f5eaa318a41dc52efa4e6c7e8c191bb274314e18f02af28f` |
| 18 | `theorem` | [norm_rawToBanach](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/norm-rawtobanach--c6f87d302cb043cb65fc7061.md) | 155 | `result-track:c6f87d302cb043cb65fc7061f2de2dcfeddb9ad7fe43220ecde04e96909629a9` |
| 19 | `theorem` | [rawToBanach_denseRange](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtobanach-denserange--4ae2756488afdf0c517386f9.md) | 167 | `result-track:4ae2756488afdf0c517386f96c264d9be21ecff1ef8289d8fa120a42972a6d33` |
| 20 | `theorem` | [rawToBanach_eq_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtobanach-eq-zero-iff--c598568b4bf52ec1f7d52c43.md) | 178 | `result-track:c598568b4bf52ec1f7d52c430e56837c607f9f8ccd88a5d250472393ed2b81a4` |
| 21 | `def` | [atomState](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/atomstate--c0e0044dd7c12c29143469e0.md) | 196 | `declaration-track:c0e0044dd7c12c29143469e09dc07ea9df95332a96aed35dbc3eb03833b44ba9` |
| 22 | `def` | [finiteSemanticSpan](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/finitesemanticspan--7f44be397ac0eddddde0e847.md) | 204 | `declaration-track:7f44be397ac0eddddde0e847875c63e2af5b53b3db4e29fdb54c6495752ecad7` |
| 23 | `theorem` | [rawToBanach_mem_finiteSemanticSpan](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/rawtobanach-mem-finitesemanticspan--afa9590bddc55384f796c8e5.md) | 211 | `result-track:afa9590bddc55384f796c8e5fa37c5fe040f182837bc3488ec24d945a2c4a301` |
| 24 | `theorem` | [finiteSemanticSpan_dense](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/finitesemanticspan-dense--dcbde61b9d522a1abb96ffee.md) | 240 | `result-track:dcbde61b9d522a1abb96ffee2569932fe09fbc332d8cb5489901965773219613` |
| 25 | `theorem` | [banachCarrier_complete](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/BanachCompletion/Variantc63d01b6a4ad9a2be82f9f52da50b6cbfe8d7779fa20508ccf6e8f99533446b1.lean/declarations/banachcarrier-complete--d2dbb3ef5f91b814b993b925.md) | 250 | `result-track:d2dbb3ef5f91b814b993b925800c0f6f44fb795bca5be23c7d8cb6f165b580ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
