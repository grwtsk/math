# Verification target: GRWTSK.Algebra.LinearAlgebra.Cycle.Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c908130620abf691437e2998e35b7d6ebc6e450",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c908130620abf691437e2998e35b7d6ebc6e450`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean.json)

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
| 1 | `def` | [Edge](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/edge--079a0800b06830474fbdbd5f.md) | 8 | `declaration-track:079a0800b06830474fbdbd5f93f2ea8f1f57d557dfa1c2c23972ae2959bcc996` |
| 2 | `def` | [IsWalkFrom](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/iswalkfrom--06eec40016c57109f6ef5957.md) | 15 | `declaration-track:06eec40016c57109f6ef59570fd6b64fdcbbc7093221d964b2deeb52b6fbd083` |
| 3 | `def` | [CycleAt](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/cycleat--55cc3d83ab5d6a622a715566.md) | 24 | `declaration-track:55cc3d83ab5d6a622a715566a520f4859efda83c86f78fa12d4556318c4914fe` |
| 4 | `def` | [HasCycle](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/hascycle--bb7cce44249491dc64b9bec8.md) | 32 | `declaration-track:bb7cce44249491dc64b9bec8ec5e28883499e5d5c52bbaf528d21b0cd5dbea07` |
| 5 | `theorem` | [edge_iff_entry](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/edge-iff-entry--3fa6841a04926462e32e111a.md) | 37 | `result-track:3fa6841a04926462e32e111abf54fcb2501069316a936865429aa76f830693f4` |
| 6 | `theorem` | [isWalkFrom_nil](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/iswalkfrom-nil--50882e820b8de0883f2b3dcb.md) | 44 | `result-track:50882e820b8de0883f2b3dcbf732b6c2a986731fd08b5220d36419c0e80280cd` |
| 7 | `theorem` | [isWalkFrom_cons](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/iswalkfrom-cons--4ebee88196bee940f7f2fb20.md) | 50 | `result-track:4ebee88196bee940f7f2fb206d40d1e10f4d44cd90460105f40b0f55794e7eec` |
| 8 | `theorem` | [walk_nil](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/walk-nil--9658dfdc74e51fb22870f1c6.md) | 59 | `result-track:9658dfdc74e51fb22870f1c6b1836b64cca4666418e770a169ba6c2676807f71` |
| 9 | `theorem` | [walk_cons](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/walk-cons--1390be8acbf5b362590289dd.md) | 65 | `result-track:1390be8acbf5b362590289dd46aa13203c6f01c587657efbe95baa918c93c6ba` |
| 10 | `theorem` | [walk_single](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/walk-single--d968fb3a83d4684fcd5c6147.md) | 74 | `result-track:d968fb3a83d4684fcd5c6147a6942e07542042364a6fc9e75aa874edb4ad98c7` |
| 11 | `theorem` | [walk_append](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/walk-append--52325a5bbbd9de4e441af20c.md) | 81 | `result-track:52325a5bbbd9de4e441af20c6362cc433649cd1b273c0aca2bda065d0172d34b` |
| 12 | `theorem` | [cycleAt_of_loop](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/cycleat-of-loop--2660bfa9a8089595ed060a49.md) | 96 | `result-track:2660bfa9a8089595ed060a49bbfa9989c858a1867f9bf946ae3bd4b894fcc686` |
| 13 | `theorem` | [cycleAt_of_two_step](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/cycleat-of-two-step--ad8f223043abcbe2fabb76d3.md) | 105 | `result-track:ad8f223043abcbe2fabb76d3e710f78f8e0dcc861a47a3ea7464509bf7b9adac` |
| 14 | `theorem` | [cycleAt_of_walks](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/cycleat-of-walks--ff073620c5a7fdc17188dacf.md) | 115 | `result-track:ff073620c5a7fdc17188dacfab21ffabca7b1cf7548f7f1ea24f0f23f25d4f89` |
| 15 | `theorem` | [hasCycle_of_cycleAt](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/hascycle-of-cycleat--9405497511d436abcad203b3.md) | 127 | `result-track:9405497511d436abcad203b3cdb9e67a5acd8dfec1f7ee5562e278f5596963ae` |
| 16 | `theorem` | [hasCycle_of_loop](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/hascycle-of-loop--e6069cdcb4bc472d474ec03c.md) | 134 | `result-track:e6069cdcb4bc472d474ec03c3e75bc9a3dd9af8eddd469577f7fad01fe55e071` |
| 17 | `theorem` | [hasCycle_of_two_step](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variant965bb854a55bb78cb588bef2368de57b2c213fc7dd4bf4611cb6bd77dde69b9b.lean/declarations/hascycle-of-two-step--650011bb1b0327b461200640.md) | 142 | `result-track:650011bb1b0327b4612006404e172a5916e36e8fdfaa517793f68a24b8db6620` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
