# Verification target: GRWTSK.Topology.GeneralTopology.Partial.Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc8096d8ae228696bfafe04c768a7463c8f996bc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc8096d8ae228696bfafe04c768a7463c8f996bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Partial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Neighborhoods` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rtendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/rtendsto-nhds--73cc0be73c105284ac1c7a7a.md) | 23 | `result-track:73cc0be73c105284ac1c7a7acb47139428ae7b44d4201c78083e0da6528a75d4` |
| 2 | `theorem` | [rtendsto'_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/rtendsto-nhds--844d4718c758e9922c9e42fe.md) | 27 | `result-track:844d4718c758e9922c9e42fef95ace67fbefe0ea9fa9c8a25e4997d4284645ac` |
| 3 | `theorem` | [ptendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/ptendsto-nhds--47d6ced485d2147019a53e56.md) | 33 | `result-track:47d6ced485d2147019a53e56eb716a4cfdc6bb428c65d8aecc29b6b488aff9ea` |
| 4 | `theorem` | [ptendsto'_nhds](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/ptendsto-nhds--710d8b483b0f36021c8ffc4b.md) | 37 | `result-track:710d8b483b0f36021c8ffc4b8ccd6339f2fba78f861449c12bcfd0aad6f2449b` |
| 5 | `def` | [PContinuous](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/pcontinuous--70da03257914028af763c4b5.md) | 47 | `declaration-track:70da03257914028af763c4b588d72225f8631ecfe1b9c8b2ad5511cde4acee2e` |
| 6 | `theorem` | [open_dom_of_pcontinuous](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/open-dom-of-pcontinuous--e31b4d4d27843169bfb4abec.md) | 50 | `result-track:e31b4d4d27843169bfb4abec3b1cdfdc265dafce451a9ccdb60850fb2ade4eea` |
| 7 | `theorem` | [pcontinuous_iff'](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/pcontinuous-iff--efc95eac3bdbeb6ada7da2a8.md) | 53 | `result-track:efc95eac3bdbeb6ada7da2a87ab5ee6e8b800ee747204b51bb617485bafbf38a` |
| 8 | `theorem` | [continuousWithinAt_iff_ptendsto_res](../../../../../mathematics/Topology/GeneralTopology/Partial/Variantbbf4a607a9c3addfd559c2becd99b468a61b57fce92d1d25e245b1ca197256e2.lean/declarations/continuouswithinat-iff-ptendsto-res--cd158163f8a9bff4235ffd19.md) | 76 | `result-track:cd158163f8a9bff4235ffd1922a93ba527d1eb73ebfc15eb8162a4cf008c5a23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
