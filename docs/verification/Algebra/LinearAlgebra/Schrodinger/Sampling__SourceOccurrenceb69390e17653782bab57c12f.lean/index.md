# Verification target: GRWTSK.LinearAlgebra.Schrodinger.Sampling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc0cc431c9fea0ab66e9a47905f4d3cae585d7e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Schrodinger/Sampling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc0cc431c9fea0ab66e9a47905f4d3cae585d7e`.

Source path: `GRWTSK/LinearAlgebra/Schrodinger/Sampling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Schrodinger/Sampling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.Schrodinger.SampledPotential`](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/SampledPotential__SourceOccurrence24c3f24506cfe37849a682af.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PotentialFamily](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/declarations/potentialfamily--94b94243689abbe848dfe26a.md) | 10 | `declaration-track:94b94243689abbe848dfe26a3c55ab671d1f7c86368895714ce5185e486e72ca` |
| 2 | `def` | [SameSampledPotential](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/declarations/samesampledpotential--d59bfa1d04382a91b5bca590.md) | 14 | `declaration-track:d59bfa1d04382a91b5bca59005721422391cba2c204a341188d6870807ad9d40` |
| 3 | `def` | [discreteAction](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/declarations/discreteaction--0ad5d0a4066df51331dfcff0.md) | 17 | `declaration-track:0ad5d0a4066df51331dfcff08b9377947a283c824a3679508bf9014d1c2b6d7c` |
| 4 | `theorem` | [equal_samples_equal_action](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/declarations/equal-samples-equal-action--d289937aa0061e4e517ed584.md) | 20 | `result-track:d289937aa0061e4e517ed5844231bfaffd6194f83675ca2e694dd34e65b2e0e4` |
| 5 | `theorem` | [sampled_alias](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/declarations/sampled-alias--d4b9da5df2f80ec230cce1ab.md) | 27 | `result-track:d4b9da5df2f80ec230cce1abfe597e576370d27cb854ed2fda5bf437e646c23e` |
| 6 | `theorem` | [waveform_equality_implies_samples](../../../../../mathematics/Algebra/LinearAlgebra/Schrodinger/Sampling__SourceOccurrenceb69390e17653782bab57c12f.lean/declarations/waveform-equality-implies-samples--3bf67ce45a17ee94c8223272.md) | 37 | `result-track:3bf67ce45a17ee94c8223272c314b3c2fcfe484b33310a26b704447055f684fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
