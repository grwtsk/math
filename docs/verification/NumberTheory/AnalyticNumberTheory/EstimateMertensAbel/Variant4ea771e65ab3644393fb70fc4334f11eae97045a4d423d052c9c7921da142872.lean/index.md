# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensAbel.Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "345d4125bba9e8a2dd015d143ed47b0531c8c7fc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `345d4125bba9e8a2dd015d143ed47b0531c8c7fc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realMoebius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/realmoebius--ef806694e039a7ea340990c6.md) | 44 | `declaration-track:ef806694e039a7ea340990c656d432a46f3193f258f95ef9de440e04931d5dc4` |
| 2 | `theorem` | [realMoebius_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/realmoebius-zero--3ad0f06397a117763a479c6b.md) | 48 | `result-track:3ad0f06397a117763a479c6b953c1ef4ffee9297f4d76e08e9b3c302823d4f28` |
| 3 | `def` | [mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mertens--5abeb019d40eabda3af0d2d8.md) | 53 | `declaration-track:5abeb019d40eabda3af0d2d835e25a00b06b164508b8e0e0c8653aa55b024c8c` |
| 4 | `def` | [mertensNat](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mertensnat--edf24236aa614bfe59428c72.md) | 57 | `declaration-track:edf24236aa614bfe59428c723aa8012d35dd3d724a4ae4156d7b180e01e770db` |
| 5 | `theorem` | [mertens_natCast](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mertens-natcast--ab85a0e0988fac329d95894d.md) | 61 | `result-track:ab85a0e0988fac329d95894d4e82bd6917e811816d116e012b6224113af62d4a` |
| 6 | `theorem` | [mobius_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mobius-abel--95c42cb938bfd0a629759f18.md) | 66 | `result-track:95c42cb938bfd0a629759f180096fc63ccbaeca5463c525c19b135d8895ef577` |
| 7 | `theorem` | [mobius_abel_commuted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mobius-abel-commuted--3572ddabe84b51e2ebd3e7db.md) | 84 | `result-track:3572ddabe84b51e2ebd3e7dbd31e38a34bdc0e9ad848844661e68f370c694f3b` |
| 8 | `def` | [sourceLower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/sourcelower--d5635da5a8889bcd922a1b7d.md) | 115 | `declaration-track:d5635da5a8889bcd922a1b7da6847137225ac0836f610aec2f0041f4cd177ef4` |
| 9 | `def` | [sourceUpper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/sourceupper--b925bcf0943fa2de108ee5f9.md) | 118 | `declaration-track:b925bcf0943fa2de108ee5f9e350621574f9b869255b98c8c343b4f6cf5e6f41` |
| 10 | `def` | [mertensKernelIntegral](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mertenskernelintegral--97398dd27f8d59305d54a995.md) | 121 | `declaration-track:97398dd27f8d59305d54a995ad62a78b8a76937aec726dab51ee03da6ce6c4bd` |
| 11 | `theorem` | [source_window_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/source-window-abel--98aa151110219bcd11bc69b2.md) | 126 | `result-track:98aa151110219bcd11bc69b25f31c4486e8ec4d74a580d1ee2f6257b4f18a4cf` |
| 12 | `theorem` | [source_window_abel_of_upper_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/source-window-abel-of-upper-zero--b5a35b256cb67e40ae2bd20d.md) | 167 | `result-track:b5a35b256cb67e40ae2bd20d9c467f3a7a69c2f5dba80b95fa16dc1f6cdf08eb` |
| 13 | `def` | [SourceMobiusKernelContract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/sourcemobiuskernelcontract--dfd323c9e889dd009dd8d4e0.md) | 189 | `declaration-track:dfd323c9e889dd009dd8d4e034741df983decd9dcd507abe4cbbc06a163de73d` |
| 14 | `theorem` | [abel_identity_of_source_kernel_contract](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/abel-identity-of-source-kernel-contract--c33e9e8476c4aedbee286ec8.md) | 206 | `result-track:c33e9e8476c4aedbee286ec8458d7a0a322e84bbf83218cf747ce937bb99c9ea` |
| 15 | `def` | [MertensAbelCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mertensabelcheckpoint--e873fe4abd2a8324ab340eb1.md) | 220 | `declaration-track:e873fe4abd2a8324ab340eb1d1b19ee12e5207c3ab27325ef1f275ab799b19ad` |
| 16 | `theorem` | [mertens_abel_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variant4ea771e65ab3644393fb70fc4334f11eae97045a4d423d052c9c7921da142872.lean/declarations/mertens-abel-checkpoint--d1a5058bf9482db3cea5df77.md) | 230 | `result-track:d1a5058bf9482db3cea5df773d73a387eb51854a809a0e5c9194c67cf5c89e2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
