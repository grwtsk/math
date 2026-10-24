# Verification target: GRWTSK.Algebra.Classify.Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb6e879bd1e4411c06ef1ee286bc25a795b8f588",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/index.md) · [Full source](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb6e879bd1e4411c06ef1ee286bc25a795b8f588`.

Source path: `GRWTSK/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.SynthInstance` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Canon` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.DecLevel` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Grind.Ring` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getIsCharInst?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/getischarinst--a8caa03c0268cb9c5bd4089b.md) | 40 | `declaration-track:a8caa03c0268cb9c5bd4089b8b8dab9bab661ca683911a9546b0dd638bf2352e` |
| 2 | `def` | [getNoZeroDivInst?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/getnozerodivinst--b23197471827e02e74e10f5e.md) | 49 | `declaration-track:b23197471827e02e74e10f5eb1038afe6fdf3b808f6087f2827dd25d47183226` |
| 3 | `def` | [tryCommRing?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/trycommring--ac2f539e98525a89d89c7283.md) | 56 | `declaration-track:ac2f539e98525a89d89c72835051145650338fc21070095d09b722c62d3b8a02` |
| 4 | `def` | [tryNonCommRing?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/trynoncommring--d15ef3b9e232543946bdd16b.md) | 76 | `declaration-track:d15ef3b9e232543946bdd16bfcca3835c91c05647592f4124c1b03c00087c2be` |
| 5 | `def` | [tryCacheAndCommRing?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/trycacheandcommring--3dbde4eb6daa265197d697fc.md) | 90 | `declaration-track:3dbde4eb6daa265197d697fc23a76b789a408ade4a0d6c3257f093ec4af2223c` |
| 6 | `def` | [tryCommSemiring?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/trycommsemiring--fb8b17ddf70eca7ac9ede062.md) | 102 | `declaration-track:fb8b17ddf70eca7ac9ede062d90d61bda3e82969fb0054d7e958d49b1d2af053` |
| 7 | `def` | [tryNonCommSemiring?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/trynoncommsemiring--c910f0c3e6a5961eac1d6692.md) | 123 | `declaration-track:c910f0c3e6a5961eac1d66929a26fcdb9a81627b05aeb8134496fa81ed47ffd4` |
| 8 | `def` | [classify?](../../../../mathematics/Algebra/Classify/Variantf47b0283c0c34b88eac6947cd462d8fbedf612334763319b28c2e0615b4c1e03.lean/declarations/classify--cad6294ab5fdf2ad15582cb0.md) | 137 | `declaration-track:cad6294ab5fdf2ad15582cb0f8e569762c66593f65acf8dc68b9c315e82957de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
