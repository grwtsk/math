# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt02.Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf6252dfcc05fb9e56e5937e82f62fe0c9555c0d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf6252dfcc05fb9e56e5937e82f62fe0c9555c0d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayvalue--98717be10f5e33c477bb553e.md) | 20 | `declaration-track:98717be10f5e33c477bb553e96a90e325af27bba29a829c9811b93422a666743` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayslope--33e668e4598b05d0785f6e0e.md) | 21 | `declaration-track:33e668e4598b05d0785f6e0e620bfdf5a6ad56aef73b07c04f279248b6e5743a` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/weightedmass--8fd123252278d898ba8ad191.md) | 22 | `declaration-track:8fd123252278d898ba8ad191e308eca0f9f5136da9ae50d38c2cca4e00850368` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/weightedenergy--f391577785257f117148ad84.md) | 23 | `declaration-track:f391577785257f117148ad84ecfb44abb038cfe14ca62be0e5b707d6dd1b040b` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayvalue-hasderivat--dc2579432a948abddb691108.md) | 25 | `result-track:dc2579432a948abddb691108eaa3061cc64f8f4cc965cd03dc65cc45fea3cb93` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayslope-hasderivat--cf9294048168d511f66c80a2.md) | 33 | `result-track:cf9294048168d511f66c80a2a5cbaa3d35300c8c8dbfd69d3578215eb6eb1348` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayvalue-continuous--3376a1d6ae98743e095b89ff.md) | 41 | `result-track:3376a1d6ae98743e095b89ff7d95b3f25258466cd876d32e27579b3105db9718` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayslope-continuous--13bc26e7799c08315146119e.md) | 44 | `result-track:13bc26e7799c08315146119e8f5c0ee1d88454456d0baa494cb4660e1fd200f9` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/weightedray-hasderivat--0ab4c43bc9e720969b09b4ac.md) | 47 | `result-track:0ab4c43bc9e720969b09b4ac16dfac27f75e863661a7bab0c8a187d420238f84` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/conjugateray-hasderivat--e135ac5c857f40d03f3727d8.md) | 59 | `result-track:e135ac5c857f40d03f3727d8999da58a0f975c50cc1590f5578887e4a0eef4a0` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/mass-integrand-continuous--16461b85a8fd147496298f58.md) | 63 | `result-track:16461b85a8fd147496298f585f46979fb7fd270bab1346d07c2bbfbcbe46e09b` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/energy-integrand-continuous--e3eeaffb8695491b9e31155d.md) | 67 | `result-track:e3eeaffb8695491b9e31155dec97302a8b2a543d3b877a1cf6ea5255dc531bb6` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/weightedenergy-nonneg--cdb3d4a8e3350787e387281f.md) | 71 | `result-track:cdb3d4a8e3350787e387281f66b430123bf9c159e4d2b16f324d30e192e09c8b` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/rayvalue-zero--3363faa800ada170b9827ede.md) | 75 | `result-track:3363faa800ada170b9827edea508bc8cfe167bf70ab081c3600b15be4375301d` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt02/Variantda7381e5dc50ef2856a7aec0c92e4930143b0254374f8227c434686023c70394.lean/declarations/weightedmass-pos--326dc608348a6d7bd73e7e04.md) | 78 | `result-track:326dc608348a6d7bd73e7e040a2eb47255f5d9d4d28c8c464d6ead83e6337b81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
