# Verification target: GRWTSK.Algebra.Basic.Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb08a5b1b9ff3bf30b9622d81de20ea67bb6ac8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb08a5b1b9ff3bf30b9622d81de20ea67bb6ac8`.

Source path: `GRWTSK/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Maximal.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/mem-maximalideal--040c2a536a8c8bf732a937a1.md) | 36 | `result-track:040c2a536a8c8bf732a937a14917f9eaba03715448f300585ff058a8650514c8` |
| 2 | `instance` | [maximalIdeal.isMaximal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/maximalideal-ismaximal--39934377bb6e07ec01e6e6a0.md) | 41 | `declaration-track:39934377bb6e07ec01e6e6a0b3deffad3333cab24880a721ceeab67020e868b3` |
| 3 | `theorem` | [isMaximal_iff](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/ismaximal-iff--6cb3e145ef3568e58f611560.md) | 52 | `result-track:6cb3e145ef3568e58f611560ab828b0bca8ff45366bff6d3c4ce3df3525f426c` |
| 4 | `theorem` | [maximal_ideal_unique](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/maximal-ideal-unique--67936e18adf182fba62ef4d6.md) | 56 | `result-track:67936e18adf182fba62ef4d60d511ac00fe5073881af4ebb19845f86e4d1bde9` |
| 5 | `theorem` | [eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/eq-maximalideal--e19e665f1414b5f3527d2a1b.md) | 61 | `result-track:e19e665f1414b5f3527d2a1b3abb59337ea66716a8c94b77192b812413f9254b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/instance--ad74b749573654ebfeb6887e.md) | 65 | `declaration-track:ad74b749573654ebfeb6887e32760c8251ca533459dee2ee1aed02bbdee47f24` |
| 7 | `theorem` | [of_singleton_maximalSpectrum](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/of-singleton-maximalspectrum--ba879c80c623a4180964a064.md) | 71 | `result-track:ba879c80c623a4180964a064b53243e5e5243b426640fec8fb1a8e6cdf8d8b8e` |
| 8 | `theorem` | [le_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/le-maximalideal--2243f38f603cff5861d7188c.md) | 77 | `result-track:2243f38f603cff5861d7188cc41b375456b659fdb4ab21f89b8afe00b19db9b0` |
| 9 | `theorem` | [notMem_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/notmem-maximalideal--fa1c1fb986c05eb5d7120bd3.md) | 85 | `result-track:fa1c1fb986c05eb5d7120bd3db715cd18bae002b5c20bd7836b8977ba91cf835` |
| 10 | `theorem` | [isField_iff_maximalIdeal_eq](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/isfield-iff-maximalideal-eq--10da5e1629b96a388f9e22dc.md) | 90 | `result-track:10da5e1629b96a388f9e22dc36b5ddb44972bf49901aebb47114395c8fb5e32e` |
| 11 | `theorem` | [maximalIdeal_le_jacobson](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/maximalideal-le-jacobson--ea7c6d6daf9f5694d7103b2f.md) | 125 | `result-track:ea7c6d6daf9f5694d7103b2f21eafbb6df02f3d930b117537ad2d7930d72c5c1` |
| 12 | `theorem` | [jacobson_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/jacobson-eq-maximalideal--3c7d7738501c4447b7493524.md) | 129 | `result-track:3c7d7738501c4447b7493524daef8997cd7d68da0217c2cdb60efce3d0b2b905` |
| 13 | `theorem` | [ker_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/ker-eq-maximalideal--02389d46f15082e83754d2bb.md) | 150 | `result-track:02389d46f15082e83754d2bbbfe4668cfb87cca6d007881c46ba92e45b14050a` |
| 14 | `theorem` | [IsLocalRing.maximalIdeal_eq_bot](../../../../mathematics/Algebra/Basic/Variante7689d2b4f9cfd82b9e22e440d603803e0e4294ddb79dfaf03e935789a975dd5.lean/declarations/islocalring-maximalideal-eq-bot--c6fe0af7770c3a9060f92daf.md) | 158 | `result-track:c6fe0af7770c3a9060f92dafe7a014e353ad2807b5b151c91147b5cf18af0669` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
