# Verification target: GRWTSK.Analysis.MeasureTheory.DistribChar.Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a34fa6dda12871f50bfc19d5dd8b3ffa0bf39db",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a34fa6dda12871f50bfc19d5dd8b3ffa0bf39db`.

Source path: `GRWTSK/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/distribhaarchar--5445e3f9e8a18283d2a560a5.md) | 52 | `declaration-track:5445e3f9e8a18283d2a560a584144807184e93a99542a9547169f7bd59fd476b` |
| 2 | `lemma` | [distribHaarChar_pos](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/distribhaarchar-pos--106237e3d4eb80b3841653ad.md) | 66 | `result-track:106237e3d4eb80b3841653ad9e8a05fec38c1615df741c87f61bd6b674706a17` |
| 3 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar--a81df5ad16e2c005ee86246a.md) | 72 | `result-track:a81df5ad16e2c005ee86246a4dda456afdf7a9952228c21b2e96ebc027a59c4d` |
| 4 | `lemma` | [addHaarScalarFactor_smul_inv_eq_distribHaarChar](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/addhaarscalarfactor-smul-inv-eq-distribhaarchar--d688e8111509d64eff84fca4.md) | 78 | `result-track:d688e8111509d64eff84fca4f85955601f9a1da521189daabe82d397e18ebb1a` |
| 5 | `lemma` | [addHaarScalarFactor_smul_eq_distribHaarChar_inv](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/addhaarscalarfactor-smul-eq-distribhaarchar-inv--a034fc76604bdbc02c3e7cfd.md) | 85 | `result-track:a034fc76604bdbc02c3e7cfd09b4d850cfac014452e75a453e5a7935fe654b6f` |
| 6 | `lemma` | [distribHaarChar_mul](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/distribhaarchar-mul--cc3513eb5a92cf14818b1391.md) | 92 | `result-track:cc3513eb5a92cf14818b1391bdd7dd6e5f0bfa8490538a684e03599be08560e0` |
| 7 | `lemma` | [distribHaarChar_eq_div](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/distribhaarchar-eq-div--76ec520608e885e11e4699a1.md) | 97 | `result-track:76ec520608e885e11e4699a12651c37fb74b285dbbd4b3c9c82e6f15653806ce` |
| 8 | `lemma` | [distribHaarChar_eq_of_measure_smul_eq_mul](../../../../../mathematics/Analysis/MeasureTheory/DistribChar/Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428.lean/declarations/distribhaarchar-eq-of-measure-smul-eq-mul--2de716f12512b59d6bd7e3c3.md) | 101 | `result-track:2de716f12512b59d6bd7e3c39b01c1b5de61efeab295747ba0c385596b4c6c35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
