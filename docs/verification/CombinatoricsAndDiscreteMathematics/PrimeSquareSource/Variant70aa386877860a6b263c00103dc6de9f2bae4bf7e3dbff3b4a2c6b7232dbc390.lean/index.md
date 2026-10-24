# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeSquareSource.Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49e03c9adf164313cbf28a941057113587d46bd0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49e03c9adf164313cbf28a941057113587d46bd0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.Cutoff` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimeSquare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/isprimesquare--34b2561aed7ce3d19b8f634e.md) | 21 | `declaration-track:34b2561aed7ce3d19b8f634e518b6a813f13c766a2240939cafebc6f156f7198` |
| 2 | `def` | [primeSquareIndices](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/primesquareindices--49b3a02b7682335cf9cc269f.md) | 24 | `declaration-track:49b3a02b7682335cf9cc269fc5535ed53af615f0d4c3fa3bf47c04c7b5bf6557` |
| 3 | `def` | [closedPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/closedprimeroots--fb49db36b643d8a4209c8435.md) | 29 | `declaration-track:fb49db36b643d8a4209c8435b9dc32487c68f335622051c89f85f31e0224ef02` |
| 4 | `def` | [strictPrimeRoots](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/strictprimeroots--0a49fed95370c7449a7379a9.md) | 33 | `declaration-track:0a49fed95370c7449a7379a9f451c9338e4520b1840dd8d99222486abfd4421a` |
| 5 | `def` | [primeSquareContribution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/primesquarecontribution--c8be63e2dc80803837455ee5.md) | 37 | `declaration-track:c8be63e2dc80803837455ee596c36089d15d1102c5e2531b4ef76a713ebd793c` |
| 6 | `theorem` | [mem_closedPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/mem-closedprimeroots-iff--7a15097101a0496781d47a32.md) | 41 | `result-track:7a15097101a0496781d47a328e19ce5628c9fdb0cb0ab1b1b2b102ea5b33c759` |
| 7 | `theorem` | [mem_strictPrimeRoots_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/mem-strictprimeroots-iff--6d3a4c518773e288434f699d.md) | 49 | `result-track:6d3a4c518773e288434f699d7598df30dd55e44e9ea2c870bc4c064b75aa4aa5` |
| 8 | `theorem` | [prime_square_cutoff_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/prime-square-cutoff-iff--85dba35212fa903256c7e1f1.md) | 55 | `result-track:85dba35212fa903256c7e1f10af111d424948faa5a53a16728851122e34df22a` |
| 9 | `theorem` | [primeSquareIndices_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/primesquareindices-eq-image--2a41f82637d79ad672103837.md) | 65 | `result-track:2a41f82637d79ad672103837d3b640bfa5369da98237b23528ac3d11bf493fcb` |
| 10 | `theorem` | [four_mem_primeSquareIndices_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/four-mem-primesquareindices-iff--e31f93b80f1017e35ff7c923.md) | 79 | `result-track:e31f93b80f1017e35ff7c92399ae89eaecbf705bb749a1e394d5ac9a4b1ab7b1` |
| 11 | `theorem` | [prime_square_summand](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/prime-square-summand--9c7491abacac42fa8ca4757c.md) | 91 | `result-track:9c7491abacac42fa8ca4757cea7b984ed00156bc32f0e6b7bc5e98dcf5f46394` |
| 12 | `theorem` | [primeSquareContribution_eq_strict](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/primesquarecontribution-eq-strict--53a8029508d57b726336fa8c.md) | 102 | `result-track:53a8029508d57b726336fa8c38b80bc669ee803073972c325d956cc44c664713` |
| 13 | `theorem` | [prime_root_endpoint_summand_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/prime-root-endpoint-summand-zero--15405dc1c038275286b920bb.md) | 114 | `result-track:15405dc1c038275286b920bb88c9df5ba16d4bb0724660defa937ef56e2e0098` |
| 14 | `theorem` | [primeSquareContribution_eq_closed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variant70aa386877860a6b263c00103dc6de9f2bae4bf7e3dbff3b4a2c6b7232dbc390.lean/declarations/primesquarecontribution-eq-closed--f786305d7824c989b9d98dc6.md) | 128 | `result-track:f786305d7824c989b9d98dc631cd15c0b17e7c01eecab2c01c807f27adb9f1cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
