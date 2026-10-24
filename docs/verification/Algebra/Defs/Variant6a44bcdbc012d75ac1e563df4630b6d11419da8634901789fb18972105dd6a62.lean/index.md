# Verification target: GRWTSK.Algebra.Defs.Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce138ddf03e89987590c687c22937f6c39887788",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce138ddf03e89987590c687c22937f6c39887788`.

Source path: `GRWTSK/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instModuleTensorProductMop](../../../../mathematics/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/declarations/instmoduletensorproductmop--b12c0b6da018318cdf192308.md) | 35 | `declaration-track:b12c0b6da018318cdf1923087b2f6ba4af3231a6b1fe2438d172f50712300bdc` |
| 2 | `def` | [AlgHom.mulLeftRight](../../../../mathematics/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/declarations/alghom-mulleftright--880e2000b641fef87567f26f.md) | 40 | `declaration-track:880e2000b641fef87567f26fb6f05c0a676765cdf4c4fa13c8ca78c808d342dc` |
| 3 | `lemma` | [AlgHom.mulLeftRight_apply](../../../../mathematics/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/declarations/alghom-mulleftright-apply--a2756b8a8094d9336bb0c1a2.md) | 49 | `result-track:a2756b8a8094d9336bb0c1a2be3cc9bdd1afdbfeb664a70a1ef72f75ccb397b5` |
| 4 | `class` | [IsAzumaya](../../../../mathematics/Algebra/Defs/Variant6a44bcdbc012d75ac1e563df4630b6d11419da8634901789fb18972105dd6a62.lean/declarations/isazumaya--252e274e1d2f768cf7e36cd3.md) | 57 | `declaration-track:252e274e1d2f768cf7e36cd3dddf631e811e95ae664ffbdbe34f4f70cd7a6c41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
