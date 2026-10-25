# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.LogReduction.Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b23b47202252cf516fed49ea7109fd6d2127279",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b23b47202252cf516fed49ea7109fd6d2127279`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 15; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reductionExponent](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/reductionexponent--3a29c6031e8c81c0774915f3.md) | 51 | `declaration-track:3a29c6031e8c81c0774915f3459300902998042ce29209e8819156f122906da5` |
| 2 | `def` | [reduceMantissa](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/reducemantissa--eb1bfe27c2fc6b5d48c6b353.md) | 59 | `declaration-track:eb1bfe27c2fc6b5d48c6b3539bb23427fcd0e6923019f7131078359d9dc9c533` |
| 3 | `theorem` | [reconstruction_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/reconstruction-eq--23fd625273b9b00b72e289b1.md) | 66 | `result-track:23fd625273b9b00b72e289b1ae5e16a9c5f6980e48f76e7c10c6784e0bc80047` |
| 4 | `theorem` | [reduced_bounds_weak](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/reduced-bounds-weak--5b1bc8ca1098fadc6bce7e46.md) | 78 | `result-track:5b1bc8ca1098fadc6bce7e46ade406d5e915c2fda71add514d82bec725a1cda2` |
| 5 | `theorem` | [reduced_bounds](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/reduced-bounds--ecb187f7dde2a8f6de58e32b.md) | 143 | `result-track:ecb187f7dde2a8f6de58e32b148fac5abf316bbc7ef02df2921f3c1893287b26` |
| 6 | `theorem` | [reduced_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/reduced-pos--99ed6931fa86f42713d7939e.md) | 205 | `result-track:99ed6931fa86f42713d7939efc144ccd45c837a5c69e30d7a0f11681c98c318d` |
| 7 | `theorem` | [log_reduction](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/log-reduction--7da5bb55d802fda53287451c.md) | 214 | `result-track:7da5bb55d802fda53287451c3febb2925bdd645d6e70fa2d53ef5058098842b0` |
| 8 | `theorem` | [atanh_arg_bounds](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/atanh-arg-bounds--d13d12ba3d1dee2050bbc4ec.md) | 230 | `result-track:d13d12ba3d1dee2050bbc4ec6a269095cc7dca74e7fa15e48f4ff6670cbcd7a7` |
| 9 | `theorem` | [log_via_atanh](../../../../mathematics/FoundationsLogicAndTypeTheory/LogReduction/Variant5bf799daf4ed9066cc58db41578e86956cfa61a3b8333b87c42445dc05b468d5.lean/declarations/log-via-atanh--3aa076cefc241717c8cad51f.md) | 251 | `result-track:3aa076cefc241717c8cad51f39319718312d1dd62374d2eab95bd1ac61831573` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
