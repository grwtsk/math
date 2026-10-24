# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealizationFiber.Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19124b6b6787c71182fccf845ef4a39ae15000f6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19124b6b6787c71182fccf845ef4a39ae15000f6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.SemanticRealization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemanticRealizationSystem](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/semanticrealizationsystem--d63982c816533dfac65e36de.md) | 26 | `declaration-track:d63982c816533dfac65e36dee94e62c2cb7ac9237eff1a866ed965fa739241d9` |
| 2 | `abbrev` | [BanachFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/banachfiber--135c09544bf9dee50481c1ab.md) | 45 | `declaration-track:135c09544bf9dee50481c1ab972f9344a45d6d4bc51cf9fa79c857b7b6e18a40` |
| 3 | `abbrev` | [HilbertFiber](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/hilbertfiber--ddd9c77a18cddb73d1b71f43.md) | 49 | `declaration-track:ddd9c77a18cddb73d1b71f43554038c4898c88783eaf4c87ffbf3624e031ee70` |
| 4 | `def` | [realize](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/realize--824a85a15e2c578b33a607c5.md) | 53 | `declaration-track:824a85a15e2c578b33a607c57ec77d2023b38ce228df5af26aae25badde3054a` |
| 5 | `structure` | [SemanticFiberTransformation](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/semanticfibertransformation--54e02ab7d4e6a1cc6cfd06ce.md) | 65 | `declaration-track:54e02ab7d4e6a1cc6cfd06cec9117b6e7f1b87d9d623b8b633e2b8cc38fe38ed` |
| 6 | `theorem` | [realize_map](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/realize-map--980eeafbbe2ec8d73f4bfcd5.md) | 89 | `result-track:980eeafbbe2ec8d73f4bfcd5f73958a072a90d3a8641fc3226e22ef86a5105bf` |
| 7 | `structure` | [SemanticFiberIsometricEquivalence](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationFiber/Variantf3b77a50bf3da9d5ef09d639c2610c3c8347e0d2c901778618aa08cb14a61ea6.lean/declarations/semanticfiberisometricequivalence--0a7688c63587d481efbe9c75.md) | 104 | `declaration-track:0a7688c63587d481efbe9c75a74ee2e00a6b795376bb43b7ecc2ad0fcae20890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
