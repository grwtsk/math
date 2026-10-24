# Verification target: GRWTSK.Algebra.LinearAlgebra.Reduction.Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "072fcc40a94bef3129f152b0f3ab6263d92ac1eb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `072fcc40a94bef3129f152b0f3ab6263d92ac1eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.ZMod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/reduce--d1a881aae590663694a24830.md) | 8 | `declaration-track:d1a881aae590663694a24830a82bda3cb5665a06ace30c557b36f60ac47c9272` |
| 2 | `def` | [mutateResidue](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/mutateresidue--82815b91a9c2a89ed7d480c5.md) | 12 | `declaration-track:82815b91a9c2a89ed7d480c5de3ef4ab3ea585188f18d94841c0568653c0bb0c` |
| 3 | `theorem` | [reduce_mutate](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/reduce-mutate--7fdc1ea6e32f1590bcf85a03.md) | 17 | `result-track:7fdc1ea6e32f1590bcf85a03e266e799ff7fbe1093d051d8470ae062f4e2f395` |
| 4 | `def` | [playResidue](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/playresidue--59c335f6a19fea9f61a2fa5a.md) | 24 | `declaration-track:59c335f6a19fea9f61a2fa5a4de60c349c12d6bbe6a86f4d0d3a81bfe9cc39c4` |
| 5 | `theorem` | [reduce_play](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/reduce-play--5c95dd692a879e60192a08c4.md) | 30 | `result-track:5c95dd692a879e60192a08c4a557c3b5c82dad39e2efc6fd598c0755c70c5e51` |
| 6 | `theorem` | [reduced_mutation_determinant](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/reduced-mutation-determinant--32e4285a623fcfe056862cef.md) | 40 | `result-track:32e4285a623fcfe056862cef405d11aa0c0ba721cd049c6121b7a53c8042f6a6` |
| 7 | `theorem` | [reduced_mutation_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Reduction/Variant304f406d7cb778b594216479f16e9e809bf24c3dd85efb986741db8d9c1d1254.lean/declarations/reduced-mutation-isunit--c9f9e721d14978301f580b55.md) | 48 | `result-track:c9f9e721d14978301f580b559d42272e571f458581ea0ccc27ee1fe010f66040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
