# Verification target: GRWTSK.Analysis.MeasureTheory.DistribChar.Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d08b0952428ce78a66343ae1bce43afc2f4dd96e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d08b0952428ce78a66343ae1bce43afc2f4dd96e`.

Source path: `GRWTSK/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Unique` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/distribhaarchar--c9e4d4282fba5b65e120d62d.md) | 47 | `declaration-track:c9e4d4282fba5b65e120d62d66a8f1231f6617ad0be7bffa2387849b6989fcb3` |
| 2 | `lemma` | [distribHaarChar_pos](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/distribhaarchar-pos--d311d710988e6d657ab66a76.md) | 61 | `result-track:d311d710988e6d657ab66a7607202972a0b0f6c0f335e5682fb3d2be2e3b22b7` |
| 3 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar--9f170471026a117cbb8dd05a.md) | 67 | `result-track:9f170471026a117cbb8dd05a9a688896fe10e498b6ea625822c7432dc66db538` |
| 4 | `lemma` | [addHaarScalarFactor_smul_inv_eq_distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/addhaarscalarfactor-smul-inv-eq-distribhaarchar--2a7df91ce3bf80ce025e432c.md) | 73 | `result-track:2a7df91ce3bf80ce025e432c85d53c4987efb8680bfeeb9b5fbcafa11ace6b4f` |
| 5 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar_inv](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar-inv--d682115e2b72566f1079497a.md) | 80 | `result-track:d682115e2b72566f1079497af94e048d3ed28ddd12b42c32fef860f9995ea78d` |
| 6 | `lemma` | [distribHaarChar_mul](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/distribhaarchar-mul--bce3a2fb0ae543e5a7a309ab.md) | 87 | `result-track:bce3a2fb0ae543e5a7a309ab1d315e6d56f0a57e80172b19fcc6620343c1dfb0` |
| 7 | `lemma` | [distribHaarChar_eq_div](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/distribhaarchar-eq-div--9a9e9f8ffc02fd3c9f59bf93.md) | 92 | `result-track:9a9e9f8ffc02fd3c9f59bf931f06566fd956458b667ddcdb48f2cd2b871c69b2` |
| 8 | `lemma` | [distribHaarChar_eq_of_measure_smul_eq_mul](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variante01efe1de6bb010cb05d8f0f1f68f654a3ffdf7ae960a8a714fb52368c0fb996.lean/declarations/distribhaarchar-eq-of-measure-smul-eq-mul--163df1aa7610328642324b30.md) | 96 | `result-track:163df1aa7610328642324b30a2ec955c0212bb1792bd1cf4ee98218ba3740a29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
