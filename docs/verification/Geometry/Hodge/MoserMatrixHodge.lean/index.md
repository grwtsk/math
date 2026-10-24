# Verification target: GRWTSK.Geometry.Hodge.MoserMatrixHodge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96509bd5e64bee2716186bac9f51dbf9ae9d4c3a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/MoserMatrixHodge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/index.md) · [Full source](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96509bd5e64bee2716186bac9f51dbf9ae9d4c3a`.

Source path: `GRWTSK/Geometry/Hodge/MoserMatrixHodge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/MoserMatrixHodge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteMatrixHodge`](../../../../mathematics/Geometry/Hodge/FiniteMatrixHodge.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hodgeData](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/declarations/hodgedata--0e0a922d3e7980d2e76bc03f.md) | 10 | `declaration-track:0e0a922d3e7980d2e76bc03fa26e4a21e94f54e1fde664d004399d8044d70ed1` |
| 2 | `theorem` | [laplacian_nonneg](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/declarations/laplacian-nonneg--7552a948d53ea8a267cc1671.md) | 15 | `result-track:7552a948d53ea8a267cc1671a1093276f2c3f91f6868908515ee9a7777cf1d0f` |
| 3 | `theorem` | [harmonic_iff_constant](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/declarations/harmonic-iff-constant--e037e850cb3f2246847eb127.md) | 21 | `result-track:e037e850cb3f2246847eb127fb97d64ab6562a76d6638d5c6b74102aae2c170b` |
| 4 | `theorem` | [constant_harmonic](../../../../mathematics/Geometry/Hodge/MoserMatrixHodge.lean/declarations/constant-harmonic--1e3e1866e317e8bc8ef9c593.md) | 38 | `result-track:1e3e1866e317e8bc8ef9c59383017a3ab51caaacfb6bd51abbc795a9636b23c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
