# Verification target: GRWTSK.Algebra.LinearAlgebra.Warshall.Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1e9ab4bf98c5e7d6b0e944117188fbc728b1652",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1e9ab4bf98c5e7d6b0e944117188fbc728b1652`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.warshallStep](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/declarations/matrix-warshallstep--1555bb4e78dfd77cf09d4573.md) | 11 | `declaration-track:1555bb4e78dfd77cf09d457346bf0fdb6678504513ac65a5ff8e2f5920043fa8` |
| 2 | `theorem` | [Matrix.entry_warshallStep](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/declarations/matrix-entry-warshallstep--221aca6ccc43207ece09b9aa.md) | 18 | `result-track:221aca6ccc43207ece09b9aa42be9bd18f85ebd5e9d6cebe5f3da7e0c84e8999` |
| 3 | `def` | [Matrix.warshallAux](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/declarations/matrix-warshallaux--dcb04951521cccd8169f4891.md) | 35 | `declaration-track:dcb04951521cccd8169f48916c736742dbb3aab1c2bd6722b3e6d46f670f0703` |
| 4 | `def` | [Matrix.warshall](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/declarations/matrix-warshall--be805ff30b3f925701df4ecd.md) | 55 | `declaration-track:be805ff30b3f925701df4ecdd839fee5603f8b67f8b873d0112639d3826c690d` |
| 5 | `theorem` | [Matrix.warshallAux_zero](../../../../../mathematics/Algebra/LinearAlgebra/Warshall/Variant02638ddc564966b11bd343610aa2e8b042664b92d09760fd1dc1e67a627d1e6c.lean/declarations/matrix-warshallaux-zero--3445540df4bfcc34617fbddb.md) | 61 | `result-track:3445540df4bfcc34617fbddbe9d8a0010e11be9ddca3888b915a358a3c3e7816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
