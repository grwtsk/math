# Verification target: GRWTSK.Algebra.MonoidAlgebra.Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8889968fc1cd440e5feb066c972729f2bef6865c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8889968fc1cd440e5feb066c972729f2bef6865c`.

Source path: `GRWTSK/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.MonoidAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HopfAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instHopfAlgebraStruct](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/insthopfalgebrastruct--df7e8160bbcee23c89ba53d5.md) | 35 | `declaration-track:df7e8160bbcee23c89ba53d51a5db13f5e9a42ec1b2e8041ec1c5aedeca04320` |
| 2 | `lemma` | [antipode_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/antipode-single--59bcdbccc63741548bed7617.md) | 39 | `result-track:59bcdbccc63741548bed76176d1b8dff007048860fc8673f861abb5c4b4d3c63` |
| 3 | `instance` | [instHopfAlgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/insthopfalgebra--ebc6c2323a62769babda2083.md) | 44 | `declaration-track:ebc6c2323a62769babda2083f7b42f03261b694a01d84183e382d0eb86d3881d` |
| 4 | `instance` | [instHopfAlgebraStruct](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/insthopfalgebrastruct--d18990233a0e503f76003bd3.md) | 62 | `declaration-track:d18990233a0e503f76003bd394f46fcb5fd078e5d5f0e05680a05e5d23605555` |
| 5 | `lemma` | [antipode_single](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/antipode-single--8a1973b9168f87ecb6bd32a0.md) | 66 | `result-track:8a1973b9168f87ecb6bd32a054c72c902af2e0bfbc5f5e66314636678469c730` |
| 6 | `instance` | [instHopfAlgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/insthopfalgebra--c71622c5fec3196567586415.md) | 71 | `declaration-track:c71622c5fec31965675864153443e98d8066bf12ec7a3d3b016b68bf7dc41e2d` |
| 7 | `instance` | [instHopfAlgebra](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/insthopfalgebra--cfa03561f721d26c5addae8e.md) | 89 | `declaration-track:cfa03561f721d26c5addae8e3e3893abe94e620705099ec71f04a7f69414907e` |
| 8 | `theorem` | [antipode_C](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/antipode-c--da97624b676a22c85e25c592.md) | 95 | `result-track:da97624b676a22c85e25c5920eac66fe0c70ce0eec835da5f78bdedfae511259` |
| 9 | `theorem` | [antipode_T](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/antipode-t--4e9e51800492febf72928641.md) | 101 | `result-track:4e9e51800492febf72928641ed4837599f81ee7e1a6fce3f096090bd4bfc2fdf` |
| 10 | `theorem` | [antipode_C_mul_T](../../../../mathematics/Algebra/MonoidAlgebra/Variant8b47d2038c9db892006ee9e95ca403e0045c4b4cf47eac978d40f3dedbfd79f5.lean/declarations/antipode-c-mul-t--0731a8c9c2c7a34b7b711ca5.md) | 108 | `result-track:0731a8c9c2c7a34b7b711ca5adc55272711eb409f1f6eb678d717afed2dc8a52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
