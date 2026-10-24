# Verification target: GRWTSK.LinearAlgebra.Matrix.Checks.Positive.TraceRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8df7c519a3c3cd5477b6ea16a65c5bc441b11fd2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Matrix/Checks/Positive/TraceRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/index.md) · [Full source](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8df7c519a3c3cd5477b6ea16a65c5bc441b11fd2`.

Source path: `GRWTSK/LinearAlgebra/Matrix/Checks/Positive/TraceRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Matrix/Checks/Positive/TraceRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.Matrix.TraceRank`](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence7c0409947a42ddd60b93eec4.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--a4c276056aab80f574839baf.md) | 12 | `declaration-track:a4c276056aab80f574839baf612375f2d381b907120b718b5effee897dc80bca` |
| 2 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--ed0f5635f49144f792bff570.md) | 16 | `declaration-track:ed0f5635f49144f792bff57015fc5a3a82cdf1cdafd9abc40142f80b00a37e6a` |
| 3 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--40f32e24c142d0624a4b5afb.md) | 22 | `declaration-track:40f32e24c142d0624a4b5afbd43319f6f9f4133be1e8c133cb5dcbb4d606bc93` |
| 4 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--f2c79d54a3187f64f78aee45.md) | 27 | `declaration-track:f2c79d54a3187f64f78aee457129385fa07fab91746b341ac8d6d8106414e1b8` |
| 5 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--aafd74575c6bcac989558bca.md) | 35 | `declaration-track:aafd74575c6bcac989558bcaf0b3904a63e909baed4cd761e3cfd98279983854` |
| 6 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--49424e62fbac38f84cce58b2.md) | 39 | `declaration-track:49424e62fbac38f84cce58b28dc871c1340925a38a935deed223ad14587921a0` |
| 7 | `example` | [(anonymous)](../../../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Checks/Positive/TraceRank__SourceOccurrenceb2a13af4eee339faefd5e7d3.lean/declarations/example--48cf9b1557f8b124329e1e37.md) | 42 | `declaration-track:48cf9b1557f8b124329e1e37e67a10b1d5c253a4d5864f1755a57a726298b039` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
