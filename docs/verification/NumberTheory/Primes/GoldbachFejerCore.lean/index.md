# Verification target: GRWTSK.Interfaces.GoldbachFejerCore

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e17381b2af6b475f9a249af9c434afb84122a28",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/GoldbachFejerCore.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCore.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e17381b2af6b475f9a249af9c434afb84122a28`.

Source path: `GRWTSK/Interfaces/GoldbachFejerCore.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/GoldbachFejerCore.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.GoldbachFiniteSingularCore`](../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularCore.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachFejerKernel`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary`](../../../../mathematics/NumberTheory/Primes/GoldbachFejerBoundary.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.Checks.GoldbachFejerControls`](../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFejerControls.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
