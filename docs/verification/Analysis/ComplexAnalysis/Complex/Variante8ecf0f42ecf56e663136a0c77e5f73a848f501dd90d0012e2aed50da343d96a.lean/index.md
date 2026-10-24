# Verification target: GRWTSK.Analysis.ComplexAnalysis.Complex.Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb76561342de80a6d6d5047c72677e70955f917d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb76561342de80a6d6d5047c72677e70955f917d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Complex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [measurableEquivPi](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/measurableequivpi--93c74e8f63473b1c4084e52f.md) | 35 | `declaration-track:93c74e8f63473b1c4084e52f9b41fd085ca3b60cc8c780b3156e5e0e43a26e93` |
| 2 | `theorem` | [measurableEquivPi_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/measurableequivpi-apply--c84513fdacd41df75c94cfd8.md) | 39 | `result-track:c84513fdacd41df75c94cfd824594de51b5cf0b7c67c680b3c56fd5534438a60` |
| 3 | `theorem` | [measurableEquivPi_symm_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/measurableequivpi-symm-apply--9e65b2b60f3fe18984abce19.md) | 43 | `result-track:9e65b2b60f3fe18984abce193c59b1a0d50c4b22266a04d670dd81296301b7cb` |
| 4 | `def` | [measurableEquivRealProd](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/measurableequivrealprod--974008cc754d6a14073d4232.md) | 47 | `declaration-track:974008cc754d6a14073d4232b90af8c80884597df6d4812d15699aed6b1587ba` |
| 5 | `theorem` | [measurableEquivRealProd_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/measurableequivrealprod-apply--4a108532d7471dd153eb6125.md) | 51 | `result-track:4a108532d7471dd153eb612553d570e7d0ed5b5ae0f0890ae4b9c5fa00ee1491` |
| 6 | `theorem` | [measurableEquivRealProd_symm_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/measurableequivrealprod-symm-apply--a1c2e8adb3e456ab120d0a82.md) | 54 | `result-track:a1c2e8adb3e456ab120d0a8208127630b938a00f4243c2bb1dff8b7a15411669` |
| 7 | `theorem` | [volume_preserving_equiv_pi](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/volume-preserving-equiv-pi--6b1669694568ed4231445ff5.md) | 57 | `result-track:6b1669694568ed4231445ff50f4dc3954459587ee82f1871aa94280d6b4b49bf` |
| 8 | `theorem` | [volume_preserving_equiv_real_prod](../../../../../mathematics/Analysis/ComplexAnalysis/Complex/Variante8ecf0f42ecf56e663136a0c77e5f73a848f501dd90d0012e2aed50da343d96a.lean/declarations/volume-preserving-equiv-real-prod--fb8ed6d31c07c8569ef7ec47.md) | 65 | `result-track:fb8ed6d31c07c8569ef7ec4741640f6e3c36e48ff1a896007cddf2f8e97e2f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
