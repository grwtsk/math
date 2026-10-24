# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc5726772025d8690b623549c6cace97ac2fa15",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc5726772025d8690b623549c6cace97ac2fa15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.BilinearForm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace--a73899f676354bdfc5f01953.md) | 67 | `declaration-track:a73899f676354bdfc5f019531fec59803537139d228f8ccbb137bd125362f009` |
| 2 | `theorem` | [trace_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-apply--630909dfe3da6651fe3dea17.md) | 74 | `result-track:630909dfe3da6651fe3dea17a6df4b9246bc7d10d65e74c23ac656739b6ba7fe` |
| 3 | `theorem` | [trace_eq_zero_of_not_exists_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-eq-zero-of-not-exists-basis--9562acd9956eb8cb75ab3588.md) | 77 | `result-track:9562acd9956eb8cb75ab35885a930a6bd28ea6862996b13c55dd43088aad7e6f` |
| 4 | `theorem` | [trace_eq_matrix_trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-eq-matrix-trace--4b71d8c9bfa7343fe6ed970f.md) | 83 | `result-track:4b71d8c9bfa7343fe6ed970f18b9a275a839d4e1ee81cacbad489ebee66a7419` |
| 5 | `theorem` | [trace_algebraMap_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-algebramap-of-basis--e18c59e694497a93723d8f9f.md) | 88 | `result-track:e18c59e694497a93723d8f9f553b8aa31ff0ea20b75c25fd07d15ec3213193b1` |
| 6 | `theorem` | [trace_self](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-self--2e0ac4b0672a984bf629c2c9.md) | 97 | `result-track:2e0ac4b0672a984bf629c2c97a237aa154306bc4db133fb30840b5f1b939f5ce` |
| 7 | `theorem` | [trace_self_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-self-apply--d72363f321a854fe91c349e4.md) | 100 | `result-track:d72363f321a854fe91c349e45d7f8c1fb112a716eacc7eac1bf540279a95fb5b` |
| 8 | `theorem` | [trace_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-algebramap--b9ac46852a8feea0231f46ce.md) | 107 | `result-track:b9ac46852a8feea0231f46cef46f76c0776ca333a1bf98003c565896f04f08f2` |
| 9 | `theorem` | [trace_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-trace-of-basis--803a59a7dd9d24089aa488fd.md) | 113 | `result-track:803a59a7dd9d24089aa488fd56f3d0ebbc165021e6d17e1adf68ab6a03d59ed6` |
| 10 | `theorem` | [trace_comp_trace_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-comp-trace-of-basis--e8479332ed9a225f9c5185e0.md) | 126 | `result-track:e8479332ed9a225f9c5185e02bd41f66aac8abc45ef1bec58fe6b92a8e3fd46a` |
| 11 | `theorem` | [trace_trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-trace--9919ee36e29e90bb1827661f.md) | 133 | `result-track:9919ee36e29e90bb1827661f866b2abe1f9589f0d943b6ecc601e4101c97250d` |
| 12 | `theorem` | [trace_comp_trace](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-comp-trace--8670c9b68d44ae9f1a718096.md) | 141 | `result-track:8670c9b68d44ae9f1a71809636616aeaa04bbff1b1ef28816cd8e428d8b77d15` |
| 13 | `theorem` | [trace_prod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-prod-apply--c78c9ca6dc78e855d4ded0d5.md) | 147 | `result-track:c78c9ca6dc78e855d4ded0d538fc54d9186e1162a260c2e56411b0cf980692cd` |
| 14 | `theorem` | [trace_prod](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/trace-prod--a430253bd9bbcf9fbe1ecb01.md) | 156 | `result-track:a430253bd9bbcf9fbe1ecb01815b9a800d67c24db08f74cbd5e688a1352ce7fe` |
| 15 | `def` | [traceForm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/traceform--6acf4ce241cb95e8d343cf46.md) | 167 | `declaration-track:6acf4ce241cb95e8d343cf46a16aa0af476de79da9f9c1409d4c921345c2b65a` |
| 16 | `theorem` | [traceForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/traceform-apply--b5dcbb6984768a2cc694af9c.md) | 174 | `result-track:b5dcbb6984768a2cc694af9cddef0235f2c340efcefbd9ae98003098cd6fe638` |
| 17 | `theorem` | [traceForm_isSymm](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/traceform-issymm--7c18e054bb73850d396e51bc.md) | 177 | `result-track:7c18e054bb73850d396e51bc306f230d1e252cda8f2541403a9ec4f1362ed240` |
| 18 | `theorem` | [traceForm_toMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant02f5d268f12d667ed82cdc4d6da47a1172a14a9160bec339012803dabc583b1d.lean/declarations/traceform-tomatrix--a70cb15845c7ca96d9f6ceee.md) | 179 | `result-track:a70cb15845c7ca96d9f6ceee90d9000d5af8eb28fb0f783e21b1cd7552b8eb88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
