# Verification target: GRWTSK.Analysis.MeasureTheory.CompProdEqIff.Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "497a3f0e05a1ab697bfffd4bddbd520f1863c4b7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `497a3f0e05a1ab697bfffd4bddbd520f1863c4b7`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.AbsolutelyContinuous` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [compProd_withDensity](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean/declarations/compprod-withdensity--71c7e2aa8c9e6a0f9f7416ee.md) | 42 | `result-track:71c7e2aa8c9e6a0f9f7416eea80b76594328cf122685242375daafc4b03eead6` |
| 2 | `lemma` | [ae_eq_of_compProd_eq](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean/declarations/ae-eq-of-compprod-eq--f97657177612f222c4d4e580.md) | 59 | `result-track:f97657177612f222c4d4e580bee15094d171f8c02dbd346e2b9af7348dbfba1e` |
| 3 | `lemma` | [compProd_eq_iff](../../../../../mathematics/Analysis/MeasureTheory/CompProdEqIff/Variant6fea17e62511a7f482f36e44275cbdefb8910b83395ccb4b2581a7ca38777d32.lean/declarations/compprod-eq-iff--e73eeb389524896c8224d39a.md) | 79 | `result-track:e73eeb389524896c8224d39a4b861e339178352abe0b3f4499bb1d6b818fa41c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
