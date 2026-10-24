# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrability.Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a5008bc4e96326487690bfb5ec46135aaf6dc27",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a5008bc4e96326487690bfb5ec46135aaf6dc27`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/mangoldtlogprefix-measurable--b2b8f1d1607f5c46d49dbc84.md) | 26 | `result-track:b2b8f1d1607f5c46d49dbc84a61d1cc9a07b2ecc3f27a84f0ee23bd4322f51d8` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/mangoldtlogerror-measurable--0b61afde82231b79f9f646be.md) | 30 | `result-track:0b61afde82231b79f9f646be548add19d15f4a8460ea29cb3503c7bfcdeff846` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/centeredmangoldterror-measurable--ea0a04022e04d76dba58b5d2.md) | 34 | `result-track:ea0a04022e04d76dba58b5d2154b16cc2b3dfcf67045b03699974a09458742cf` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/centeredmangoldterror-bound--6742b64d4aca239776b451ee.md) | 39 | `result-track:6742b64d4aca239776b451eeec96916cd03759b7a0f5c8cc232d2efccde58676` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/centeredmangoldterror-laplace-integrable--fa0ac289f296f6365826e8a2.md) | 45 | `result-track:fa0ac289f296f6365826e8a2e81421f0a7ccb2d092827ea6e8a112d0eb8282e3` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/mangoldtlogerror-laplace-integrable--d8d1ed85043b8e3f8e9e1e1e.md) | 67 | `result-track:d8d1ed85043b8e3f8e9e1e1ebcb0889e77cfeef23944533ee1528253675751da` |
| 7 | `theorem` | [linear_exponential_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/linear-exponential-integrable--20914328fe5241bae996180e.md) | 79 | `result-track:20914328fe5241bae996180ebe8f5d7e958f85957108c6872d679b12cdd016f5` |
| 8 | `theorem` | [linear_complex_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/linear-complex-laplace-integrable--02030f3818dfa49579a7a556.md) | 86 | `result-track:02030f3818dfa49579a7a5565d760ed641eb0e2a7a00a952b58d184b8dcdd305` |
| 9 | `theorem` | [mangoldtLogPrefix_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/mangoldtlogprefix-laplace-integrable--c8a2a297f82fdc8921b5b819.md) | 99 | `result-track:c8a2a297f82fdc8921b5b8191a7c8e2a57fb42c9c00d89b33fcf6690d955d95b` |
| 10 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/declarations/centeredmangoldterror-below-first-atom--a56adc2da1927bd206e1946b.md) | 109 | `result-track:a56adc2da1927bd206e1946bc52789b7c08a20305ed0b23a2f46a077f391dc6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
