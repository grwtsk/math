# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMultiplicationDomain.Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c589bad8a351a8af9c3716ffaf51e14b1fad40c4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c589bad8a351a8af9c3716ffaf51e14b1fad40c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearPMap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatedomain--8b1793c4d320da4c71f5bf57.md) | 23 | `declaration-track:8b1793c4d320da4c71f5bf57a86999c9a0264dd1a0a00b6d8a6c714056d3dc09` |
| 2 | `theorem` | [mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/mem-coordinatedomain--7e55db6a8085ea33981a0df5.md) | 49 | `result-track:7e55db6a8085ea33981a0df592aad0dea7fe51f7107c9d76ec9fc7b8d2a8cfa7` |
| 3 | `def` | [coordinateMultiplication](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatemultiplication--273e95fb5c3699786199c513.md) | 53 | `declaration-track:273e95fb5c3699786199c513ed43e8b05e22ef23beaeae2ce73d330d75db5b6e` |
| 4 | `theorem` | [coordinateMultiplication_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatemultiplication-domain--90fd3e4e46ee7dcbd7fe012f.md) | 81 | `result-track:90fd3e4e46ee7dcbd7fe012f28e0bef7992ced8ed8564db5c3f128b278eb92ce` |
| 5 | `theorem` | [coordinateMultiplication_apply_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatemultiplication-apply-ae--5a1dc3eadbed2ae12e0b02a9.md) | 85 | `result-track:5a1dc3eadbed2ae12e0b02a9ec052755cb8d4855583aa75e2bdc7d7a77b57baf` |
| 6 | `theorem` | [coordinateMultiplication_formalAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatemultiplication-formaladjoint--2ac1798d7c4d1257f4427c2e.md) | 91 | `result-track:2ac1798d7c4d1257f4427c2e2809d86feba07364a3b012a2189c9d76a49a774e` |
| 7 | `theorem` | [coordinateMultiplication_maximal_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatemultiplication-maximal-domain--8da66b2d5a91322553f7c9c8.md) | 102 | `result-track:8da66b2d5a91322553f7c9c859245271682ac6930927c6d61abfe07bbf1ec1a4` |
| 8 | `theorem` | [norm_sq_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/norm-sq-eq-integral--28ce286e6789905a99f58378.md) | 108 | `result-track:28ce286e6789905a99f583783b5e280248b03e854810de59124399b6ca37eaa8` |
| 9 | `theorem` | [graph_norm_sq_eq_weighted_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/graph-norm-sq-eq-weighted-integral--e3e50c9ce7b9a5f151c0b70f.md) | 117 | `result-track:e3e50c9ce7b9a5f151c0b70f6b6ff5ccff21903cac592ead07251d0eb133308f` |
| 10 | `theorem` | [mem_coordinateDomain_iff_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/mem-coordinatedomain-iff-weighted-integrable--dc20b26882904fe861826d4c.md) | 136 | `result-track:dc20b26882904fe861826d4c26c3120fecdfe833f0893a6cc8c5a4739be214ec` |
| 11 | `def` | [graphMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/graphmeasure--d18499a416f8bdd17fe6d38a.md) | 160 | `declaration-track:d18499a416f8bdd17fe6d38a8d6b77eb09dd425293b00822d82421c47f288952` |
| 12 | `theorem` | [graphMeasure_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/graphmeasure-absolutelycontinuous--9477193384ef925741b9d625.md) | 163 | `result-track:9477193384ef925741b9d625a6d5408c7f8e8a99ed34d22f04888756427bc5a3` |
| 13 | `theorem` | [mem_coordinateDomain_iff_graph_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/mem-coordinatedomain-iff-graph-memlp--57ece79da0329d95c18550af.md) | 167 | `result-track:57ece79da0329d95c18550af9760052f76e3e9d2e79941dcae15918b3ff59010` |
| 14 | `theorem` | [compactContinuous_mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/compactcontinuous-mem-coordinatedomain--751e83badade83aee68e0c6c.md) | 178 | `result-track:751e83badade83aee68e0c6cc55cd09142108d53b1806d8464762926e554c33b` |
| 15 | `theorem` | [coordinateDomain_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/declarations/coordinatedomain-dense--f52f02988acf474a41c70048.md) | 190 | `result-track:f52f02988acf474a41c7004885fca4d5e23b6f0c08f9e7e32583e8146a2deb4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
