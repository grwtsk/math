# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Landau.Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.ZetaGrowth` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Cf_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/cf-ne-zero--e59f4d76a7e516d08411ea25.md) | 30 | `result-track:e59f4d76a7e516d08411ea25dd7146e3d9a74d48a17ed3e91f5f72ed04685f7c` |
| 2 | `lemma` | [f_eq_prod_mul_Cf](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/f-eq-prod-mul-cf--a00a3b52c23bf2d59430da9f.md) | 60 | `result-track:a00a3b52c23bf2d59430da9fc8d9c522f2900d6423e81ee4626de517339b17c6` |
| 3 | `lemma` | [logDeriv_zero_prod](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/logderiv-zero-prod--47c131c6a48cc0198a7cd813.md) | 77 | `result-track:47c131c6a48cc0198a7cd8138d7cbc2ea24e3be1a0a18956407859b2491c816c` |
| 4 | `lemma` | [logDeriv_split](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/logderiv-split--72589e97ef888760822f74b6.md) | 88 | `result-track:72589e97ef888760822f74b68bab15a999b437710a2fa5168beefee8efb218b4` |
| 5 | `lemma` | [norm_logDeriv_Cf_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/norm-logderiv-cf-le--f582000c55cfa545c9d89835.md) | 129 | `result-track:f582000c55cfa545c9d898352b55e786fb197d211986e429e2b4ffdddd64f0e1` |
| 6 | `theorem` | [logDeriv_partial_fraction_unit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/logderiv-partial-fraction-unit--55682a2826a4f8d05c491323.md) | 299 | `result-track:55682a2826a4f8d05c491323e4138942d59dff0f6509f0140b5d36680a5e0b29` |
| 7 | `lemma` | [finite_SetOfZeros](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/finite-setofzeros--add328d9fc598e2e5d25f858.md) | 315 | `result-track:add328d9fc598e2e5d25f858a5557f164e2f19da3cfc7861c894b89d1a67a2e2` |
| 8 | `theorem` | [logDeriv_partial_fraction_disk](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/logderiv-partial-fraction-disk--7feec079e4b2f08cd96aef5c.md) | 348 | `result-track:7feec079e4b2f08cd96aef5cf1ea4e0b9f028d9ad389f2a62084be86520fc022` |
| 9 | `theorem` | [zeta_logDeriv_partial_fraction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/declarations/zeta-logderiv-partial-fraction--ae204111be2bd3f23e9ec720.md) | 512 | `result-track:ae204111be2bd3f23e9ec72022eb234bb647fdcb4e3ef2436f387437497e968b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
