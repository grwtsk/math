# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.DedekindZeta.Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "781b7f3f5c9d19f76252c07232bcfd5922d18ca5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `781b7f3f5c9d19f76252c07232bcfd5922d18ca5`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.SumCoeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dedekindZeta](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/declarations/dedekindzeta--699367de2966fb9bcd97509e.md) | 43 | `declaration-track:699367de2966fb9bcd97509e8054573f651d1ba3a4ea728ee8a73bb03ee66beb` |
| 2 | `def` | [dedekindZeta_residue](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/declarations/dedekindzeta-residue--b8536db6f3b9512cf95d6081.md) | 50 | `declaration-track:b8536db6f3b9512cf95d608147b085c841df2d7b3bb650bc65c4b54905a81c9e` |
| 3 | `theorem` | [dedekindZeta_residue_def](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/declarations/dedekindzeta-residue-def--122bfdf68972540a4284eca3.md) | 54 | `result-track:122bfdf68972540a4284eca3df867d28330718fc77acb16b768749990b3ab5c7` |
| 4 | `theorem` | [dedekindZeta_residue_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/declarations/dedekindzeta-residue-pos--ecf27475eaa6c65beabf28e5.md) | 59 | `result-track:ecf27475eaa6c65beabf28e5186d31781ac20ce23cc66aa5e7f34b780bf7d01c` |
| 5 | `theorem` | [dedekindZeta_residue_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/declarations/dedekindzeta-residue-ne-zero--6e3e68f2b91e6c2d2237b425.md) | 65 | `result-track:6e3e68f2b91e6c2d2237b4254846694da28ddf8bc09b736b454f3a8096de1cc0` |
| 6 | `theorem` | [tendsto_sub_one_mul_dedekindZeta_nhdsGT](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant745f7b921f9fc856de366dee34616c56c65ba3db1dedeb2fd7feec6688f0362b.lean/declarations/tendsto-sub-one-mul-dedekindzeta-nhdsgt--ad78bc2c79d7d22da1781dcf.md) | 71 | `result-track:ad78bc2c79d7d22da1781dcf140246eb180bb64ac2dddc59d1f3b134e1b03aa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
