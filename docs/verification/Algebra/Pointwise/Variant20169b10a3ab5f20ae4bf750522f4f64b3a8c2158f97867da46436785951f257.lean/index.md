# Verification target: GRWTSK.Algebra.Pointwise.Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "915fb6843d3cfb95757572529f4a1ca766725a78",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `915fb6843d3cfb95757572529f4a1ca766725a78`.

Source path: `GRWTSK/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Pointwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_toSubmodule_le](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/mul-tosubmodule-le--b30275427fd8342a291bc281.md) | 23 | `result-track:b30275427fd8342a291bc281f590e8b8f0cd79fe1b95ae5ecddb2817e6526a2f` |
| 2 | `theorem` | [isIdempotentElem_toSubmodule](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/isidempotentelem-tosubmodule--da7c06ff0b6df56da87d4ecd.md) | 32 | `result-track:da7c06ff0b6df56da87d4ecdbb90138ad7157ae509bb26ab706982104c6aed80` |
| 3 | `theorem` | [mul_toSubmodule](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/mul-tosubmodule--d9da841687cda76f608f3637.md) | 44 | `result-track:d9da841687cda76f608f36371a21eca0ae0f7b6c9090c9dc0e0f68b0d4b5c179` |
| 4 | `def` | [pointwiseMulAction](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/pointwisemulaction--994dd99438d6286c002f3163.md) | 69 | `declaration-track:994dd99438d6286c002f3163e7a186f0aa6b4120e7970e70eea0599a148f4bc0` |
| 5 | `theorem` | [coe_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/coe-pointwise-smul--9de37f217618e78ddebcd13b.md) | 80 | `result-track:9de37f217618e78ddebcd13b341cd34b79634438687f07c354147564641b5467` |
| 6 | `theorem` | [pointwise_smul_toSubsemiring](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/pointwise-smul-tosubsemiring--a4015339f9a8b0fd5825d25d.md) | 84 | `result-track:a4015339f9a8b0fd5825d25d597675e5496a5c582edd3d89653ad2fa11f9963a` |
| 7 | `theorem` | [pointwise_smul_toSubmodule](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/pointwise-smul-tosubmodule--d5660920fef9bd072c94d515.md) | 89 | `result-track:d5660920fef9bd072c94d51579f4ec6cd398122b2ef99169ab6dc69cfef37e34` |
| 8 | `theorem` | [pointwise_smul_toSubring](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/pointwise-smul-tosubring--3706bcae1a10ce8c2417c86d.md) | 94 | `result-track:3706bcae1a10ce8c2417c86d141ad90c5992b2f4dc564afdcb985c936c3f05d5` |
| 9 | `theorem` | [smul_mem_pointwise_smul](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/smul-mem-pointwise-smul--f18fb02d74c9204d1954a877.md) | 99 | `result-track:f18fb02d74c9204d1954a8779b18fff5548446f7a2870d725fe36414ab736104` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/declarations/instance--a252118d940ac1d417a753c7.md) | 102 | `declaration-track:a252118d940ac1d417a753c79f80c2336a995f6016b27a115920db5ad622711b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
