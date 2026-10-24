# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt05.Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "087cfb63431c4ab8169415f624330d2424f0e800",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `087cfb63431c4ab8169415f624330d2424f0e800`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/normalizedtransform--61e03f541f0d5b41c4e666e5.md) | 33 | `declaration-track:61e03f541f0d5b41c4e666e5fad0843c3cda53376de99290b0c93a5de1bb67fd` |
| 2 | `def` | [boundaryTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/boundarytransform--6de80fa4e9d4ac517a04abbe.md) | 38 | `declaration-track:6de80fa4e9d4ac517a04abbe423b41f459cbdf29e911155ce6b6aaff2446e29a` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/normalizedtransform-dictionary--b8dce66a7b2a26cab02b2e8a.md) | 41 | `result-track:b8dce66a7b2a26cab02b2e8a5642aeab2535e7f22af4b9bc8a6005574fd84918` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/normalized-integrand-integrable--8d579e2137e51400615bc334.md) | 51 | `result-track:8d579e2137e51400615bc3348dce93ea63d971bba75ab0bd04f26d6b3fa96d69` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/full-complex-correlation-square--7477e55fc5b5112ae7325bdb.md) | 62 | `result-track:7477e55fc5b5112ae7325bdb297b58999090895fe6bd3822ed83ba9cc2f7fd24` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/interval-complex-correlation-square--f1891b9707f2f39ffefe0a5f.md) | 92 | `result-track:f1891b9707f2f39ffefe0a5f73d992757ff86a0d0bda98ffefd450783387e0fe` |
| 7 | `theorem` | [critical_complex_ibp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/critical-complex-ibp--778c517b5e0da8296d3d5e84.md) | 113 | `result-track:778c517b5e0da8296d3d5e8416641b01f0412daf705d92cc4b43b5d48c9fd0b9` |
| 8 | `theorem` | [boundary_transform_exact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt05/Variantd768d2f79c07ec042b18f3dc38288983d4d4186a0671c61e2046cf38278a827a.lean/declarations/boundary-transform-exact--557a33740470bd7a9bb1f872.md) | 161 | `result-track:557a33740470bd7a9bb1f872aaef98089181b4a135ed7226f6144e6f54e8f35b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
