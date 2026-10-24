# Verification target: GRWTSK.NumberTheory.AdditiveNumberTheory.RuzsaCovering.Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c5a226f3c82234df7e2c223afc5e962e2d83a8b",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c5a226f3c82234df7e2c223afc5e962e2d83a8b`.

Source path: `GRWTSK/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Finset` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ruzsa_covering_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean/declarations/ruzsa-covering-mul--705a31566d57bc43fc118ac1.md) | 28 | `result-track:705a31566d57bc43fc118ac1f223c516ab13f69f00f66e9b22e572ed106f7300` |
| 2 | `lemma` | [ruzsa_covering_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variant70ad5e4513596c64dfe9d9225112357583c851b8fb8c486ad5f8f95383132e36.lean/declarations/ruzsa-covering-mul--e6c786aad57ed658016f3885.md) | 67 | `result-track:e6c786aad57ed658016f3885f506442bfb75b77b4386bc73a85a88f6358b6d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
