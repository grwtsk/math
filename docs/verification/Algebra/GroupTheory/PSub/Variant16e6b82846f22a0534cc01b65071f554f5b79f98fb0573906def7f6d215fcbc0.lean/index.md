# Verification target: GRWTSK.Algebra.GroupTheory.PSub.Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08739a9ea79211f6c59fe8b3e5fc7352d9d69457",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08739a9ea79211f6c59fe8b3e5fc7352d9d69457`.

Source path: `GRWTSK/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppred](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/ppred--3119ac46cf3ec1a049ac5161.md) | 36 | `declaration-track:3119ac46cf3ec1a049ac516154d37361bb9494b262f86b5619ba2d824228307d` |
| 2 | `theorem` | [ppred_zero](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/ppred-zero--4ca1aed04a91878a3d524918.md) | 41 | `result-track:4ca1aed04a91878a3d5249181bfb6e6ea9a26f12b3776afb21610a7a8581aeab` |
| 3 | `theorem` | [ppred_succ](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/ppred-succ--0cd7c0c27cb45fad0810fb61.md) | 44 | `result-track:0cd7c0c27cb45fad0810fb61d18b3ace0eebcbe524a55e7f877bf54be6c1f413` |
| 4 | `def` | [psub](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub--6e0914cc40d4cd5b4ebf3a5a.md) | 48 | `declaration-track:6e0914cc40d4cd5b4ebf3a5a0c022e2556fe366cd07233bbaa54bf4b2da64abd` |
| 5 | `theorem` | [psub_zero](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-zero--18e7944c14881f44b6cb0346.md) | 53 | `result-track:18e7944c14881f44b6cb0346307f4f645fe8a761461ed16f71e7b9da397d84c6` |
| 6 | `theorem` | [psub_succ](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-succ--e46d2ece2436880c9f1ea261.md) | 56 | `result-track:e46d2ece2436880c9f1ea261177c73421730a928864983daea25288fdc0f8f78` |
| 7 | `theorem` | [pred_eq_ppred](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/pred-eq-ppred--6adb8535afaa89b4bf4e6796.md) | 58 | `result-track:6adb8535afaa89b4bf4e67967b3b1e78bcccccf59a7b8520e1607272753ef2d6` |
| 8 | `theorem` | [sub_eq_psub](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/sub-eq-psub--832bfa5c71d6c439f52744ce.md) | 60 | `result-track:832bfa5c71d6c439f52744ce44a111d9f3feb65a81f0c9645a91ee3847e28414` |
| 9 | `theorem` | [ppred_eq_some](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/ppred-eq-some--a1d8d286d2120f79988f1cdd.md) | 65 | `result-track:a1d8d286d2120f79988f1cdd776228c920a4248872e19a64fdf08f02cd51cf22` |
| 10 | `theorem` | [ppred_eq_none](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/ppred-eq-none--f122fc58765b217f51c3aec8.md) | 70 | `result-track:f122fc58765b217f51c3aec8202f9da7b40033bfe07ceb8858e51e90e066e4b4` |
| 11 | `theorem` | [psub_eq_some](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-eq-some--69521956ad4f0be239c3153a.md) | 74 | `result-track:69521956ad4f0be239c3153ae0536f5e3242342a9c019082e7d9631eba718480` |
| 12 | `theorem` | [psub_eq_none](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-eq-none--8b5225ef0f88717bdd368376.md) | 81 | `result-track:8b5225ef0f88717bdd36837655584c37d2300dbf623cfce892709c1d7e59d81e` |
| 13 | `theorem` | [ppred_eq_pred](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/ppred-eq-pred--7398c304b51c53a9a2ad36c4.md) | 89 | `result-track:7398c304b51c53a9a2ad36c43e96fbcd27b6a5c8855b66cdb9e982d929186c61` |
| 14 | `theorem` | [psub_eq_sub](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-eq-sub--5bf1a96de62127e584833df1.md) | 92 | `result-track:5bf1a96de62127e584833df1e7285073b52b7aeff2cdc9143e5122621bf290bf` |
| 15 | `theorem` | [psub_add](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-add--7f84babecb4533111d31b0af.md) | 95 | `result-track:7f84babecb4533111d31b0afa3359c611fd970c44896bea3f6cec667b2fbeeff` |
| 16 | `def` | [psub'](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub--7c26b76374561cbd1123089c.md) | 103 | `declaration-track:7c26b76374561cbd1123089c37bb36a37a1e8be1e66a65ecbf3b9b559f5cafc8` |
| 17 | `theorem` | [psub'_eq_psub](../../../../../mathematics/Algebra/GroupTheory/PSub/Variant16e6b82846f22a0534cc01b65071f554f5b79f98fb0573906def7f6d215fcbc0.lean/declarations/psub-eq-psub--9b1fdf9537679694dee654b2.md) | 106 | `result-track:9b1fdf9537679694dee654b2d8318eb42c6810e46d422538b776680213ca8b96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
