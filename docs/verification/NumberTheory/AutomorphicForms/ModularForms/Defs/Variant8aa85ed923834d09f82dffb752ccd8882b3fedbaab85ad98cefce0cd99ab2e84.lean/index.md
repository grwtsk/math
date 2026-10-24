# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Defs.Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fbde4cff98ad90c43898127b6abb747cb7612b0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fbde4cff98ad90c43898127b6abb747cb7612b0`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.SlashInvariantForms` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.CongruenceSubgroups` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gammaSet](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/gammaset--d6e71bf99ab1901e2bb998c5.md) | 47 | `declaration-track:d6e71bf99ab1901e2bb998c5eb0ef3c524e88cfb7b41dcf29039abb696bbef10` |
| 2 | `lemma` | [pairwise_disjoint_gammaSet](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/pairwise-disjoint-gammaset--67b73e2056cc45060ecf8371.md) | 50 | `result-track:67b73e2056cc45060ecf83711b267f787c034f5276bf2bd8b75dd138af28606b` |
| 3 | `lemma` | [gammaSet_one_eq](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/gammaset-one-eq--00f45cc13d9c5640cd2b84e0.md) | 57 | `result-track:00f45cc13d9c5640cd2b84e093f7037808937530d53e4615cbb4c31425263c19` |
| 4 | `def` | [gammaSet_one_equiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/gammaset-one-equiv--abb17d167a6616cb823eb21b.md) | 61 | `declaration-track:abb17d167a6616cb823eb21b88310f6f1549308a5afae75e73a976a54dbcfe58` |
| 5 | `lemma` | [vecMul_SL2_mem_gammaSet](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/vecmul-sl2-mem-gammaset--e77d4df1315486892101edd5.md) | 71 | `result-track:e77d4df1315486892101edd5a0c2c75550f6a8c440a1f58ba374575d891dc03f` |
| 6 | `def` | [gammaSetEquiv](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/gammasetequiv--5e567d13171d9294174afe76.md) | 81 | `declaration-track:5e567d13171d9294174afe76d55136ec8267493a0d0c618f99b6154614451b2c` |
| 7 | `def` | [eisSummand](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/eissummand--e043159fba584dfacf944226.md) | 98 | `declaration-track:e043159fba584dfacf944226979937bca97818e43b6b84c5511e6347fb945ca1` |
| 8 | `theorem` | [eisSummand_SL2_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/eissummand-sl2-apply--f7d2d7362131a6159efbfab2.md) | 101 | `result-track:f7d2d7362131a6159efbfab2da46cafff7b4f858fa8e556e85b9868b7a5a6b23` |
| 9 | `def` | [_root_.GRWTSK.NumberTheory.AutomorphicForms.ModularForms.GammaSet.Variant18a7a0760b39a1a1a32bc3b2333a2a6386f875375332f06e18746f3e39d14bec.eisensteinSeries](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/root-grwtsk-numbertheory-automorphicforms-modularforms-gammaset-variant1--50cd29d306cfd60d5d3f46b6.md) | 115 | `declaration-track:50cd29d306cfd60d5d3f46b67f6e232ad1193a0e47a0e986db9b664cde2c8505` |
| 10 | `lemma` | [eisensteinSeries_slash_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/eisensteinseries-slash-apply--a9fcdd31be88850dde291d0a.md) | 117 | `result-track:a9fcdd31be88850dde291d0a87d636f0ba3f5475de10ab6681208f17cbdb26ec` |
| 11 | `def` | [eisensteinSeries_SIF](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/eisensteinseries-sif--69d2b8618db0be56a81e2f0c.md) | 128 | `declaration-track:69d2b8618db0be56a81e2f0c505569a21032f2d89ce9e49dab9db08b15e1bb4d` |
| 12 | `lemma` | [eisensteinSeries_SIF_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/declarations/eisensteinseries-sif-apply--d466d259bb84c6ab6fb17569.md) | 133 | `result-track:d466d259bb84c6ab6fb1756985df61327ed029ccc7a540e99b5dcaf1907cc28e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
