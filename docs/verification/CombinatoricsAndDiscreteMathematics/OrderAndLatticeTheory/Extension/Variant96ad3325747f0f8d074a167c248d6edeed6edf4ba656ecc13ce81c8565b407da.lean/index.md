# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Extension.Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7d6b8a83108b8307d51d07cff502be6bd37957e",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7d6b8a83108b8307d51d07cff502be6bd37957e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Monotone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonotoneOn.exists_monotone_extension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean/declarations/monotoneon-exists-monotone-extension--4a55f30adf6fbc5581efaae0.md) | 31 | `result-track:4a55f30adf6fbc5581efaae0da7900611f360e1fe1344db24d1a4d973eb8a14a` |
| 2 | `theorem` | [AntitoneOn.exists_antitone_extension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extension/Variant96ad3325747f0f8d074a167c248d6edeed6edf4ba656ecc13ce81c8565b407da.lean/declarations/antitoneon-exists-antitone-extension--995dbe9cfaba8fbe8c13734b.md) | 58 | `result-track:995dbe9cfaba8fbe8c13734bad33a7903a387473060650c51055c9f5681253f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
